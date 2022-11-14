<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Event;

class EventController extends Controller
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
        $new=Event::all();
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

        /*$storagePath = Storage::put('/public', $request['image']);
        $fileName = basename($storagePath);*/

        $content = $request->validate([
            'title' => 'required',
            'content' => 'required',
            'start_date' => 'required',
            'image' => 'required',
            "end_date" => 'required',
            "event_date" => 'required',
            "link" => 'required',
        ]);

        $new=Event::create($content);
        return response()->json($new);
    }

    public function link(Request $request)
    {
        $headers = array(
            'Content-Type' => 'application/json; charset=utf-8'
        );
        $new=Event::create(request()->only('title','image','link'));
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
        return response()->json(Event::find($id), 200, $headers, JSON_UNESCAPED_UNICODE);
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
        $new = Event::find($id);
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
        return Event::destroy($id);
    }
}
