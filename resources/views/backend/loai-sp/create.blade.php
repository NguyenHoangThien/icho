@extends('layout.backend')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      General Form Elements
      <small>Preview</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Forms</a></li>
      <li class="active">General Elements</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-8">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Quick Example</h3>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form role="form">
            <div class="box-body">
              <!-- text input -->
              <div class="form-group">
                <label>Text</label>
                <input type="text" class="form-control" placeholder="Enter ...">
              </div>
              <div class="form-group">
                <label>Text Disabled</label>
                <input type="text" class="form-control" placeholder="Enter ..." disabled>
              </div>

              <!-- textarea -->
              <div class="form-group">
                <label>Textarea</label>
                <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
              </div>
              <div class="form-group">
                <label>Textarea Disabled</label>
                <textarea class="form-control" rows="3" placeholder="Enter ..." disabled></textarea>
              </div>
              {{ config('icho.upload_url')."tmp/2016/07/12/asus-x453sa-wx099d-01_1468342019.jpg" }}
              <!-- input states -->
              <div class="form-group has-success">
                <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Input with success</label>
                <input type="text" class="form-control" id="inputSuccess" placeholder="Enter ...">
                <span class="help-block">Help block with success</span>
              </div>
              <div class="form-group has-warning">
                <label class="control-label" for="inputWarning"><i class="fa fa-bell-o"></i> Input with
                  warning</label>
                <input type="text" class="form-control" id="inputWarning" placeholder="Enter ...">
                <span class="help-block">Help block with warning</span>
              </div>
              <div class="form-group has-error">
                <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> Input with
                  error</label>
                <input type="text" class="form-control" id="inputError" placeholder="Enter ...">
                <span class="help-block">Help block with error</span>
              </div>

              <!-- checkbox -->
              <div class="form-group">
                <div class="checkbox">
                  <label>
                    <input type="checkbox">
                    Checkbox 1
                  </label>
                </div>

                <div class="checkbox">
                  <label>
                    <input type="checkbox">
                    Checkbox 2
                  </label>
                </div>

                <div class="checkbox">
                  <label>
                    <input type="checkbox" disabled>
                    Checkbox disabled
                  </label>
                </div>
              </div>

              <!-- radio -->
              <div class="form-group">
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                    Option one is this and that&mdash;be sure to include why it's great
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    Option two can be something else and selecting it will deselect option one
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
                    Option three is disabled
                  </label>
                </div>
              </div>

              <!-- select -->
              <div class="form-group">
                <label>Select</label>
                <select class="form-control">
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>
              <div class="form-group">
                <label>Select Disabled</label>
                <select class="form-control" disabled>
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>

              <!-- Select multiple-->
              <div class="form-group">
                <label>Select Multiple</label>
                <select multiple class="form-control">
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>
              <div class="form-group">
                <label>Select Multiple Disabled</label>
                <select multiple class="form-control" disabled>
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Quick Example</h3>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form role="form">
            <div class="box-body">
              <!-- text input -->
               
                    
                <img id="thumbnail_img" src="http://placehold.it/150x150" class="img-thumbnail" width="150" height="150">
                
                <input type="file" id="file-hidden" style="display:none" />
                <button class="btn btn-default" id="btnUpload" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
              
              <div class="form-group">
                <label>Text Disabled</label>
                <input type="text" class="form-control" placeholder="Enter ..." disabled>
              </div>

              <!-- textarea -->
              <div class="form-group">
                <label>Textarea</label>
                <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
              </div>
              <div class="form-group">
                <label>Textarea Disabled</label>
                <textarea class="form-control" rows="3" placeholder="Enter ..." disabled></textarea>
              </div>

              <!-- input states -->
              <div class="form-group has-success">
                <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Input with success</label>
                <input type="text" class="form-control" id="inputSuccess" placeholder="Enter ...">
                <span class="help-block">Help block with success</span>
              </div>
              <div class="form-group has-warning">
                <label class="control-label" for="inputWarning"><i class="fa fa-bell-o"></i> Input with
                  warning</label>
                <input type="text" class="form-control" id="inputWarning" placeholder="Enter ...">
                <span class="help-block">Help block with warning</span>
              </div>
              <div class="form-group has-error">
                <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> Input with
                  error</label>
                <input type="text" class="form-control" id="inputError" placeholder="Enter ...">
                <span class="help-block">Help block with error</span>
              </div>

              <!-- checkbox -->
              <div class="form-group">
                <div class="checkbox">
                  <label>
                    <input type="checkbox">
                    Checkbox 1
                  </label>
                </div>

                <div class="checkbox">
                  <label>
                    <input type="checkbox">
                    Checkbox 2
                  </label>
                </div>

                <div class="checkbox">
                  <label>
                    <input type="checkbox" disabled>
                    Checkbox disabled
                  </label>
                </div>
              </div>

              <!-- radio -->
              <div class="form-group">
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                    Option one is this and that&mdash;be sure to include why it's great
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    Option two can be something else and selecting it will deselect option one
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
                    Option three is disabled
                  </label>
                </div>
              </div>

              <!-- select -->
              <div class="form-group">
                <label>Select</label>
                <select class="form-control">
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>
              <div class="form-group">
                <label>Select Disabled</label>
                <select class="form-control" disabled>
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>

              <!-- Select multiple-->
              <div class="form-group">
                <label>Select Multiple</label>
                <select multiple class="form-control">
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>
              <div class="form-group">
                <label>Select Multiple Disabled</label>
                <select multiple class="form-control" disabled>
                  <option>option 1</option>
                  <option>option 2</option>
                  <option>option 3</option>
                  <option>option 4</option>
                  <option>option 5</option>
                </select>
              </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
        <!-- /.box -->     

      </div>
      <!--/.col (left) -->      
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<input type="hidden" id="route_upload_tmp_image" value="{{ route('image.tmp-upload') }}">
@stop
@section('javascript_page')
<script type="text/javascript">
    $(document).ready(function(){
      $('#btnUpload').click(function(){        
        $('#file-hidden').click();
      });
      var files = "";
      $('#file-hidden').change(function(e){              
         files = e.target.files;
         
         if(files != ''){
           var dataForm = new FormData();        
          $.each(files, function(key, value) {
             dataForm.append('file', value);
          });   
          $.ajax({
            url: $('#route_upload_tmp_image').val(),
            type: "POST",
            async: false,      
            data: dataForm,
            processData: false,
            contentType: false,
            success: function (response) {
              if(response.image_path){
                $('#thumbnail_img').attr('src',$('#upload_url').val() + response.image_path);
              }
              console.log(response.image_path);
                //window.location.reload();
            },
            error: function(response){                             
                var errors = response.responseJSON;
                for (var key in errors) {
                  
                }
                //$('#btnLoading').hide();
                //$('#btnSave').show();
            }
          });
        }
      });
    });
    
</script>
@stop
