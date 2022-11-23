<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\ArticlesController;
use App\Http\Controllers\api\NewsController;
use App\Http\Controllers\api\EventController;
use App\Http\Controllers\api\UsersController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::group(['middleware' => 'cors'], function () {
    
    Route::get('/news',[NewsController::class,'index']);
    Route::get('/news/{id}',[NewsController::class,'show']);
    Route::get('/news/type/{id}',[NewsController::class,'gettype']);
    Route::post('/news',[NewsController::class,'store']);
    Route::put('/news/{id}',[NewsController::class,'update']);
    Route::delete('/news/{id}',[NewsController::class,'destroy']);
    
});

Route::get('/users',[UsersController::class,'index']);
Route::post('/login',[UsersController::class,'login']);
Route::get('/logout',[UsersController::class,'logout']);

Route::get('/event',[EventController::class,'index']);
Route::get('/event/{id}',[EventController::class,'show']);
Route::post('/event',[EventController::class,'store']);
Route::post('/event/link',[EventController::class,'link']);
Route::put('/event/{id}',[EventController::class,'update']);
Route::delete('/event/{id}',[EventController::class,'destroy']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

