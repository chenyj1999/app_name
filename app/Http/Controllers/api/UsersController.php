<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Users;

class UsersController extends Controller
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
        $users=Users::all();
        return response()->json($users, 200, $headers, JSON_UNESCAPED_UNICODE);
    }

    public function login()
    {
        $input = Users::all();
    
        $rules = ['username'=>'required',
                  'password'=>'required'
                  ];
    
        $validator = Validator::make($input, $rules);
    
        if ($validator->passes()) {
            $attempt = Auth::attempt([
                'username' => $input['username'],
                'password' => $input['password']
            ]);
    
            if ($attempt) {
                return Redirect::intended('post');
            }
    
            return Redirect::to('login')
                    ->withErrors(['fail'=>'Email or password is wrong!']);
        }
    
        //fails
        return Redirect::to('login')
                    ->withErrors($validator)
                    ->withInput(Users::except('password'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
