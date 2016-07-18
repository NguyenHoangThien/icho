<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\Cate;
use App\Models\Backend\LoaiSp;
use Helper, File, Session;

class CateController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {

        $loaiSp = LoaiSp::orderBy('display_order')->first();
        $loai_id = isset($request->loai_id) ? $request->loai_id : $loaiSp->id;        
        $items = Cate::where('loai_id', $loai_id)->orderBy('display_order')->get();
        $loaiSpArr = LoaiSp::all();
        return view('backend.cate.index', compact( 'items', 'loaiSp' , 'loai_id', 'loaiSpArr'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $loai_id = isset($request->loai_id) ? $request->loai_id : 0;
        
        $loaiSpArr = LoaiSp::all()->sortBy('display_order');

        return view('backend.cate.create', compact( 'loai_id', 'loaiSpArr'));
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
        
        Cate::create($dataArr);

        Session::flash('message', 'Tạo mới danh mục thành công');

        return redirect()->route('cate.index',[$dataArr['loai_id']]);
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
        $detail = Cate::find($id);
        $loaiSpArr = LoaiSp::all();
        return view('backend.cate.edit', compact( 'detail', 'loaiSpArr' ));
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

        $model = Cate::find($dataArr['id']);
        $model->update($dataArr);

        Session::flash('message', 'Cập nhật danh mục thành công');

        return redirect()->route('cate.index', [$dataArr['loai_id']]);
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
        $model = Cate::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa danh mục thành công');
        return redirect()->route('cate.index');
    }
}
