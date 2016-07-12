<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::group(['namespace' => 'Backend', 'prefix' => 'backend'], function()
{
    // Controllers Within The "App\Http\Controllers\Backend" Namespace

  
    Route::resource('loai-sp', 'LoaiSpController',
    	[
    		'names' => [
    			'create' => 'loai-sp.create'
    		]
    	]
    	);
 	Route::post('/tmp-upload', ['as' => 'image.tmp-upload', 'uses' => 'UploadController@tmpUpload']);
});