<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\ArticlesController;
use App\Http\Controllers\api\NewsController;

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

Route::get('/',[NewsController::class,'index']);
Route::get('/{id}',[NewsController::class,'show']);
Route::post('/',[NewsController::class,'store']);
Route::delete('/{id}',[NewsController::class,'destroy']);

Route::get('test',[ArticlesController::class,'index']);
Route::get('test/{id}',[ArticlesController::class,'show']);
Route::post('test',[ArticlesController::class,'store']);
Route::delete('test/{id}',[ArticlesController::class,'destroy']);
//Route::get('/{id}',[ArticlesController::class,'show']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

