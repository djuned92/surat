@extends('layouts.backend')

@section('title','Privileges User - Gentelella')

@section('content')
    <div class="page-title">
        <div class="title_left">
            <h3><?=($this->uri->segment(2) == 'add') ? 'Add ' : 'Edit '?>Surat</h3>
        </div>
        <div class="title_right">
            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2><?=($this->uri->segment(2) == 'add') ? 'Add ' : 'Edit '?>Surat</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a>
                                </li>
                                <li><a href="#">Settings 2</a>
                                </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <form class="form-horizontal form-label-left" id="myForm">
                        
                        <?php if($this->uri->segment(2) == 'update'): ?>
                        <input type="hidden" name="id" value="<?=$this->uri->segment(3)?>">
                        <?php endif ?>

                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Pilih Tipe NPD <span class="required">*</span></label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <select style="width: 100%;" class="form-control" name="npd" id="npd" required>
                                    <option value="">- Pilih -</option>
                                    <option value="UP" <?=isset($surat['npd']) &&  ($surat['npd'] == 'UP') ? 'selected':''?>>UP</option>
                                    <option value="GU" <?=isset($surat['npd']) && ($surat['npd'] == 'GU')? 'selected':''?>>GU</option>
                                    <option value="TU" <?=isset($surat['npd']) && ($surat['npd'] == 'TU')? 'selected':''?>>TU</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Tanggal <span class="required">*</span></label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="date" name="tanggal" id="tanggal" class="form-control" value="<?=isset($surat['tanggal'])?$surat['tanggal']:set_value('tanggal');?>" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Kegiatan <span class="required">*</span></label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <textarea class="form-control" name="kegiatan" rows="3" placeholder='Kegiatan ...' required><?=isset($surat['kegiatan'])?$surat['kegiatan']:set_value('kegiatan');?></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Photo <?=($this->uri->segment(2) == 'add')?'<span class="required">*</span>':''?></label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="file" class="form-control" name="userfile" id="userfile" <?=($this->uri->segment(2) == 'add')?'required':''?>>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12">Jumlah Nilai <span class="required">*</span></label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="number" name="jumlah" id="jumlah" class="form-control" value="<?=isset($surat['jumlah'])?$surat['jumlah']:set_value('jumlah');?>" required>
                            </div>
                        </div>

                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-2">
                                <a href="<?=base_url('list_user')?>">
                                    <button type="button" class="btn btn-primary">Back</button>
                                </a>
                                <button type="submit" class="btn btn-success" id="save">Save</button>
                            </div>
                        </div>

                    </form>      
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        function readURL(input) {

          if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
              $('#preview-image').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
          }
        }

        $("#image").change(function() {
          readURL(this);
        });

        $(document).ready(function() {
            // set validator
            $.validator.setDefaults({
                errorClass: 'help-block',
                highlight: function(element) {
                    $(element)
                        .closest('.form-group')
                        .addClass('has-error');
                },
                unhighlight: function(element) {
                    $(element)
                        .closest('.form-group')
                        .removeClass('has-error')
                        .addClass('has-success');
                }
            });

            $('#myForm').validate({
                rules: {
                    username: {
                        required: true
                    },
                    <?php if($this->uri->segment(2) == 'add'): ?>
                        userfile: {
                            required: true
                        },
                    <?php endif ?>
                    fullname: {
                        required: true
                    },
                    address: {
                        required: true
                    },
                    phone: {
                        required: true
                    },
                    gender: {
                        required: true
                    }
                },
                submitHandler: function(form) {
                    // form.submit();
                    var form = $('#myForm')[0],
                        data = new FormData(form);
                    <?php if($this->uri->segment(2) == 'add') : ?>
                        var this_url = "<?=base_url('list_surat/add')?>";
                    <?php else : ?>
                        var this_url = "<?=base_url('list_surat/update')?>";
                    <?php endif ?> 
                    $.ajax({
                        type: 'post',
                        enctype: 'multipart/form-data',
                        url: this_url,
                        dataType: "json",
                        data: data,
                        async: false,
                        processData: false,
                        contentType: false,
                        cache: false,
                        timeout: 600000,
                        beforeSend: function () {},
                        success: function(r) {
                            if(r.error == false) {
                                swal({
                                  title: "<?=($this->uri->segment(2) == 'add') ? 'Add': 'Update';?>",
                                  text: r.message,
                                  type: r.type,
                                });
                                setTimeout(function() {
                                    window.location.href = "<?=base_url('list_surat')?>";  
                                }, 2000);
                            }
                        }
                    });
                }
            });
        })
    </script>
@endsection