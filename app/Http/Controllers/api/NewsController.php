<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\News;
use Intervention\Image\Facades\Image;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $headers = array(
            'Content-Type' => 'application/json; charset=utf-8'
        );
        $new=News::all();
        return response()->json($new, 200, $headers, JSON_UNESCAPED_UNICODE);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $headers = array(
            'Content-Type' => 'application/json; charset=utf-8'
        );
        
        /*$title=request('title');
        $imagePath = request('image')->store("uploads/{$title}", 'public');
        $content = $request->validate([
            'title' => 'required',
            'content' => 'required',
            'date' => 'required',
            'image' => 'required',
            'type' => 'required'
        ]);
        $content['image'] = $imagePath;*/
        $request = request()->all();
        $title = $request['title'];
        if (request('image') != ''){
            $storagePath = Storage::put("/public/news", $request['image']);
            $fileName = basename($storagePath);
            $request['image'] = $fileName;
        }
        $new=News::create($request);
        return response()->json($new);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $headers = array(
            'Content-Type' => 'application/json; charset=utf-8'
        );
        return response()->json(News::find($id), 200, $headers, JSON_UNESCAPED_UNICODE);
    }

    public function gettype($type)
    {
        return response()->json(News::where('type',$type)->get());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $headers = array(
            'Content-Type' => 'application/json; charset=utf-8'
        );
        $new = News::find($id);
        $new->update($request->all());
        return response()->json($new, 200, $headers, JSON_UNESCAPED_UNICODE);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return News::destroy($id);
    }
}
