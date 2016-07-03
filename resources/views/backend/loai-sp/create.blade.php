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
      <div class="col-md-12">
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
@stop