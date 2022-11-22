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

        $request = request()->all();
        $title = $request['title'];
        $storagePath_1 = Storage::put("/public/event/test", $request['image_1']);
        $request['image_1'] = basename($storagePath_1);
        $storagePath_2 = Storage::put("/public/event/test", $request['image_2']);
        $request['image_2'] = basename($storagePath_2);
        $storagePath_3 = Storage::put("/public/event/test", $request['image_3']);
        $request['image_3'] = basename($storagePath_3);
        $storagePath_4 = Storage::put("/public/event/test", $request['image_4']);
        $request['image_4'] = basename($storagePath_4);
        $new=Event::create($request);
        return response()->json($new);
    }

    public function link(Request $request)
    {
        $headers = array(
            'Content-Type' => 'application/json; charset=utf-8'
        );
        $request = request()->only('title','image_1','link','type');
        $title = $request['title'];
        $storagePath_1 = Storage::put("/public/event", $request['image_1']);
        $request['image_1'] = basename($storagePath_1);
        $new=Event::create($request);
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
