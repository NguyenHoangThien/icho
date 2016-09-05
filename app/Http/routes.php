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


// Authentication routes...
Route::get('backend/login', ['as' => 'backend.login-form', 'uses' => 'Backend\UserController@loginForm']);
Route::post('backend/login', ['as' => 'backend.check-login', 'uses' => 'Backend\UserController@checkLogin']);
Route::get('backend/logout', ['as' => 'backend.logout', 'uses' => 'Backend\UserController@logout']);

Route::group(['namespace' => 'Backend', 'prefix' => 'backend', 'middleware' => 'isAdmin'], function()
{
    // Controllers Within The "App\Http\Controllers\Backend" Namespace

    Route::group(['prefix' => 'loai-sp'], function () {
        Route::get('/', ['as' => 'loai-sp.index', 'uses' => 'LoaiSpController@index']);
        Route::get('/create', ['as' => 'loai-sp.create', 'uses' => 'LoaiSpController@create']);
        Route::post('/store', ['as' => 'loai-sp.store', 'uses' => 'LoaiSpController@store']);
        Route::get('{id}/edit',   ['as' => 'loai-sp.edit', 'uses' => 'LoaiSpController@edit']);
        Route::post('/update', ['as' => 'loai-sp.update', 'uses' => 'LoaiSpController@update']);
        Route::get('{id}/destroy', ['as' => 'loai-sp.destroy', 'uses' => 'LoaiSpController@destroy']);
    });
    Route::group(['prefix' => 'convert'], function () {
        Route::get('/', ['as' => 'convert.index', 'uses' => 'ConvertController@index']);        
    });
    Route::group(['prefix' => 'loai-thuoc-tinh'], function () {
        Route::get('/', ['as' => 'loai-thuoc-tinh.index', 'uses' => 'LoaiThuocTinhController@index']);
        Route::get('/create', ['as' => 'loai-thuoc-tinh.create', 'uses' => 'LoaiThuocTinhController@create']);
        Route::post('/store', ['as' => 'loai-thuoc-tinh.store', 'uses' => 'LoaiThuocTinhController@store']);
        Route::get('{id}/edit',   ['as' => 'loai-thuoc-tinh.edit', 'uses' => 'LoaiThuocTinhController@edit']);
        Route::post('/update', ['as' => 'loai-thuoc-tinh.update', 'uses' => 'LoaiThuocTinhController@update']);
        Route::get('{id}/destroy', ['as' => 'loai-thuoc-tinh.destroy', 'uses' => 'LoaiThuocTinhController@destroy']);
        Route::get('/ajax-get-loai-thuoc-tinh-by-id', ['as' => 'loai-thuoc-tinh.ajax-get-loai-thuoc-tinh-by-id', 'uses' => 'LoaiThuocTinhController@getLoaiThuocTinhByLoaiId']);
    }); 
    Route::group(['prefix' => 'thuoc-tinh'], function () {
        Route::get('/', ['as' => 'thuoc-tinh.index', 'uses' => 'ThuocTinhController@index']);
        Route::get('/create', ['as' => 'thuoc-tinh.create', 'uses' => 'ThuocTinhController@create']);
        Route::post('/store', ['as' => 'thuoc-tinh.store', 'uses' => 'ThuocTinhController@store']);
        Route::get('{id}/edit',   ['as' => 'thuoc-tinh.edit', 'uses' => 'ThuocTinhController@edit']);
        Route::post('/update', ['as' => 'thuoc-tinh.update', 'uses' => 'ThuocTinhController@update']);
        Route::get('{id}/destroy', ['as' => 'thuoc-tinh.destroy', 'uses' => 'ThuocTinhController@destroy']);
    });   
    Route::group(['prefix' => 'cate'], function () {
        Route::get('/{loai_id?}', ['as' => 'cate.index', 'uses' => 'CateController@index']);
        Route::get('/create/{loai_id?}', ['as' => 'cate.create', 'uses' => 'CateController@create']);
        Route::post('/store', ['as' => 'cate.store', 'uses' => 'CateController@store']);
        Route::get('{id}/edit',   ['as' => 'cate.edit', 'uses' => 'CateController@edit']);
        Route::post('/update', ['as' => 'cate.update', 'uses' => 'CateController@update']);
        Route::get('{id}/destroy', ['as' => 'cate.destroy', 'uses' => 'CateController@destroy']);
    }); 
    Route::group(['prefix' => 'banner'], function () {
        Route::get('/{object_type}/{object_id}', ['as' => 'banner.index', 'uses' => 'BannerController@index']);
        Route::get('/create/', ['as' => 'banner.create', 'uses' => 'CateController@create']);
        Route::post('/store', ['as' => 'banner.store', 'uses' => 'CateController@store']);
        Route::get('{id}/edit',   ['as' => 'banner.edit', 'uses' => 'CateController@edit']);
        Route::post('/update', ['as' => 'banner.update', 'uses' => 'CateController@update']);
        Route::get('{id}/destroy', ['as' => 'banner.destroy', 'uses' => 'CateController@destroy']);
    }); 
 	Route::post('/tmp-upload', ['as' => 'image.tmp-upload', 'uses' => 'UploadController@tmpUpload']);
    Route::post('/update-order', ['as' => 'update-order', 'uses' => 'GeneralController@updateOrder']);
    Route::post('/get-slug', ['as' => 'get-slug', 'uses' => 'GeneralController@getSlug']);
});