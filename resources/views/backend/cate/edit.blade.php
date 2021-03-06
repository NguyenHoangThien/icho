@extends('layout.backend')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Danh mục con     
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('cate.index') }}">Danh mục con</a></li>
      <li class="active">Chỉnh sửa</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default" href="{{ route('cate.index') }}" style="margin-bottom:5px">Quay lại</a>
    <div class="row">
      <!-- left column -->

      <div class="col-md-7">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Chỉnh sửa</h3>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form role="form" method="POST" action="{{ route('cate.update') }}">
            {!! csrf_field() !!}
            <input type="hidden" name="id" value="{{ $detail->id }}">
            <div class="box-body">
              @if (count($errors) > 0)
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif
               <div class="form-group">
                  <label>Danh mục cha</label>
                  <select class="form-control" name="loai_id" id="loai_id">                  
                    <option value="0" {{ $detail->loai_id == 0 ? "selected" : "" }}>--chọn--</option>
                    @foreach( $loaiSpArr as $value )
                    <option value="{{ $value->id }}" {{ ( $detail->loai_id == $value->id ) ? "selected" : "" }}>{{ $value->name }}</option>
                    @endforeach
                  </select>
                </div> 
               <!-- text input -->
              <div class="form-group">
                <label>Tên danh mục <span class="red-star">*</span></label>
                <input type="text" class="form-control" name="name" id="name" value="{{ $detail->name }}">
              </div>
              <div class="form-group">
                <label>Slug <span class="red-star">*</span></label>
                <input type="text" class="form-control" name="slug" id="slug" value="{{ $detail->slug }}">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Mô tả</label>
                <textarea class="form-control" rows="4" name="description" id="description">{{ $detail->description }}</textarea>
              </div>            

              
              <div class="form-group">
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="is_hot" value="1" {{ $detail->is_hot == 1 ? "checked" : "" }}>
                    Danh mục nổi bật
                  </label>
                </div>               
              </div>
              <div class="form-group">
                <label>Ẩn/hiện</label>
                <select class="form-control" name="status" id="status">                  
                  <option value="0" {{ $detail->status == 0 ? "selected" : "" }}>Ẩn</option>
                  <option value="1" {{ $detail->status == 1 ? "selected" : "" }}>Hiện</option>
                </select>
              </div>
              <div class="form-group">
                <label>Style banner</label>
                <select class="form-control" name="home_style" id="home_style">                  
                  <option value="0" {{ $detail->home_style == 0 ? "selected" : "" }}>Không banner</option>
                  <option value="1" {{ $detail->home_style == 1 ? "selected" : "" }}>Banner đứng lớn</option>
                  <option value="2" {{ $detail->home_style == 2 ? "selected" : "" }}>Banner đứng nhỏ</option>
                  <option value="3" {{ $detail->home_style == 3 ? "selected" : "" }}>Banner ngang</option>
                </select>
              </div>                       
              <div class="form-group">
                <label>Màu nền</label>
                <input type="text" class="form-control" name="bg_color" id="bg_color" value="{{ $detail->bg_color }}">
              </div>
            </div>         
            <!-- /.box-body -->
            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Lưu</button>
              <a class="btn btn-default" class="btn btn-primary" href="{{ route('cate.index')}}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-5">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>
          <!-- /.box-header -->     
            <div class="box-body">
              <div class="form-group">
                <label>Meta title</label>
                <input type="text" class="form-control" name="meta_title" id="meta_title" value="{{ $detail->meta_title }}">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption</label>
                <textarea class="form-control" rows="4" name="meta_description" id="meta_description">{{ $detail->meta_description }}</textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords</label>
                <textarea class="form-control" rows="4" name="meta_keywords" id="meta_keywords">{{ $detail->meta_keywords }}</textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="4" name="custom_text" id="custom_text">{{ $detail->custom_text }}</textarea>
              </div>
              <!-- text input -->
              
              <!--<div style="clear:both;margin-bottom:10px"></div>
              <div class="form-group">  
                <label class="col-md-3">Banner </label>    
                <div class="col-md-9">
                  <img id="thumbnail_image" src="{{ $detail->image_url ? config('icho.upload_url').$detail->image_url : 'http://placehold.it/150x150' }}" class="img-thumbnail" width="150" height="150">
                  
                  <input type="file" id="file-image" style="display:none" />
                </div>                
                <div class="col-md-3"></div>
                <div class="col-md-9" style="padding-top:5px">
                  <button class="btn btn-default" id="btnUploadImage" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                </div>
              </div>-->
            
        </div>
        <!-- /.box -->     

      </div>
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<input type="hidden" id="route_upload_tmp_image" value="{{ route('image.tmp-upload') }}">
@stop
@section('javascript_page')

@stop
