@extends('layout.backend')
@section('content')
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Loại sản phẩm    
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="{{ route( 'loai-sp' ) }}">Loại sản phẩm</a></li>
    <li class="active">Danh sách</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      @if(Session::has('message'))
      <p class="alert alert-info" >{{ Session::get('message') }}</p>
      @endif
      <a href="{{ route('loai-sp.create') }}" class="btn btn-info" style="margin-bottom:5px">Tạo mới</a>
      <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">Danh sách</h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>
              <th style="width: 1%;white-space:nowrap">Thứ tự</th>
              <th>Tên</th>
              <th width="200px">Banner</th>
              <th>Style hiển thị</th>
              <th width="1%">Thao tác</th>
            </tr>
            <tbody>
            @if( $items->count() > 0 )
              <?php $i = 0; ?>
              @foreach( $items as $item )
                <?php $i ++; ?>
              <tr id="row-{{ $item->id }}">
                <td>{{ $i }}</td>
                <td style="vertical-align:middle;text-align:center">
                  <img src="{{ URL::asset('backend/dist/img/move.png')}}" class="move" />
                </td>
                <td>
                  <img src="{{ $item->icon_url ? config( 'icho.upload_url' ).$item->icon_url  : 'http://placehold.it/60x60' }}" width="40" />
                  <a href="{{ route( 'loai-sp.edit', [ 'id' => $item->id ]) }}">{{ $item->name }}</a></td>
                <td>
                  <img src="{{ $item->image_url ? config( 'icho.upload_url' ).$item->image_url  : 'http://placehold.it/150x150' }}" width="150" />
                </td>
                <td>
                  <?php 
                  if( $item->home_style == 1 ) echo "Banner lớn đứng ";
                  elseif( $item->home_style == 2 ) echo "Banner nhỏ đứng ";
                  else echo "Banner ngang";
                  ?>
                </td>
                <td style="white-space:nowrap">
                  <a href="{{ route( 'loai-sp.edit', [ 'id' => $item->id ]) }}" class="btn btn-warning">Chỉnh sửa</a>
                  <a href="{{ route( 'loai-sp.edit', [ 'id' => $item->id ]) }}" class="btn btn-danger">Xóa</a>
                </td>
              </tr> 
              @endforeach
            @endif
          </tbody>
          </table>
        </div>        
      </div>
      <!-- /.box -->     
    </div>
    <!-- /.col -->  
  </div> 
</section>
<!-- /.content -->
</div>
@stop
@section('javascript_page')
<script type="text/javascript">
$(document).ready(function(){
  $('#table-list-data tbody').sortable({
            placeholder: 'placeholder',
            handle: ".move",
            start: function (event, ui) {
                    ui.item.toggleClass("highlight");
            },
            stop: function (event, ui) {
                    ui.item.toggleClass("highlight");
            },          
            axis: "y",
            update: function() {
                var rows = $('#table-list-data tbody tr');
                var strOrder = '';
                var strTemp = '';
                for (var i=0; i<rows.length; i++) {
                    strTemp = rows[i].id;
                    strOrder += strTemp.replace('row-','') + ";";
                }     
                alert(strOrder); 
                /*
                $.ajax({
                    url: "ajax/process.php",
                    type: "POST",
                    async: false,
                    data: {
                        'action' : 'updateOrder',
                        'str_id_order' : strOrder,
                        'table' : 'cate'
                    },
                    success: function(data){
                        var countRow = $('#tbl_list tbody span.order').length;
                        for(var i = 0 ; i < countRow ; i ++ ){
                            $('span.order').eq(i).html(i+1);
                        }                        
                    }
                }); 
                */
            }
        });
});
</script>
@stop