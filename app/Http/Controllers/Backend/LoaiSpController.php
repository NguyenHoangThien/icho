<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\LoaiSp;
use Helper, File, Session;

class LoaiSpController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        $items = LoaiSp::all()->sortBy('display_order');
        return view('backend.loai-sp.index', compact( 'items' ));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create()
    {
        return view('backend.loai-sp.create');
    }

    /**
    * Store a newly created resource in storage.
    *
    * @param  Request  $request
    * @return Response
    */
    public function store(Request $request)
    {
        $dataArr = $request->all();
        
        $this->validate($request,[
            'name' => 'required',
            'slug' => 'required',
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục',
            'slug.required' => 'Bạn chưa nhập slug',
        ]);

        $dataArr['bg_color'] = $dataArr['bg_color'] != '' ? $dataArr['bg_color'] : '#EE484F';
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);
        /*
        if($dataArr['image_url'] && $dataArr['image_name']){
            File::move(config('icho.upload_path').$dataArr['image_url'], config('icho.upload_path').$dataArr['image_name']);
            $dataArr['image_url'] = $dataArr['image_name'];
        }
            
        if($dataArr['icon_url'] && $dataArr['icon_name']){
            File::move(config('icho.upload_path').$dataArr['icon_url'], config('icho.upload_path').$dataArr['icon_name']);
            $dataArr['icon_url'] = $dataArr['icon_name'];
        }
        */
        LoaiSp::create($dataArr);

        Session::flash('message', 'Tạo mới danh mục thành công');

        return redirect()->route('loai-sp.index');
    }

    /**
    * Display the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function show($id)
    {
    //
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function edit($id)
    {
        $detail = LoaiSp::find($id);

        return view('backend.loai-sp.edit', compact( 'detail' ));
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  Request  $request
    * @param  int  $id
    * @return Response
    */
    public function update(Request $request)
    {
        $dataArr = $request->all();
        
        $this->validate($request,[
            'name' => 'required',
            'slug' => 'required',
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục',
            'slug.required' => 'Bạn chưa nhập slug',
        ]);

        $dataArr['bg_color'] = $dataArr['bg_color'] != '' ? $dataArr['bg_color'] : '#EE484F';

        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);
        /*
        if($dataArr['image_url'] && $dataArr['image_name'] && $dataArr['image_url'] != $dataArr['old_image_url']){
            File::move(config('icho.upload_path').$dataArr['image_url'], config('icho.upload_path').$dataArr['image_name']);
            $dataArr['image_url'] = $dataArr['image_name'];
        }
            
        if($dataArr['icon_url'] && $dataArr['icon_name']  && $dataArr['icon_url'] != $dataArr['old_icon_url']){
            File::move(config('icho.upload_path').$dataArr['icon_url'], config('icho.upload_path').$dataArr['icon_name']);
            $dataArr['icon_url'] = $dataArr['icon_name'];
        }
        */
        $model = LoaiSp::find($dataArr['id']);
        $model->update($dataArr);

        Session::flash('message', 'Cập nhật danh mục thành công');

        return redirect()->route('loai-sp.index');
    }

    /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return Response
    */
    public function destroy($id)
    {
        // delete
        $model = LoaiSp::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa danh mục thành công');
        return redirect()->route('loai-sp.index');
    }
}
