<?php
if ($_SESSION['status']=='0' OR $_SESSION['status']=='2') 
{
    ?>
<?php include_once 'assets/include/head.php'; ?> 
<body class="fixed-sn white-skin">
    <style type="text/css">
        td{
            text-align: center;
        }
        th{
            text-align: center;
        }
        .uploadBtnWrap {
  font-family: arial;
  font-size: 12px;
 
}
.uploadBtnWrap .btn {
     /*padding: 2px;*/
    /*border: 1px solid #000;*/
    /*border-radius: 3px;*/
    /*background: #f4f4f4;*/
    cursor: pointer;
    /*font-weight: normal;*/
  } 
 input[type="file"] {
    display: none !important;
  }
    </style>
<?php include_once 'assets/include/nav.php'; ?>
    <!--Main layout-->
     <div class="main-content">
            <!-- Top navbar -->
<?php include_once 'assets/include/nav2.php'; ?>
   
                <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="background-image: url(../argon/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;">
    <!-- Mask -->
    <span class="mask bg-gradient-default opacity-8"></span>
    <!-- Header container -->
    <div class="container-fluid d-flex align-items-center">
        <div class="row">
            <div class="col-md-12 col-lg-8">
                <h1 class="display-2 text-white">Hello, <div  class="disp-name"></div></h1>
                                    <p class="text-white mt-0 mb-5">This is your profile page. You can see the progress you&#039;ve made with your work and manage your projects or assigned tasks</p>
                            </div>
        </div>
    </div>
</div>    

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
                <div class="card card-profile shadow">
                    <div class="row justify-content-center">
                        <div class="col-lg-3 order-lg-2">
                            <div class="card-profile-image">
                                <a href="#">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPUzlmdTEXY16lvRyTf8CthtNf7E0M9O41yd0Mq4Az1WryuRJr" width="200" height="200" class="rounded-circle disp-img">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                    </div>
                    <div class="card-body pt-0 pt-md-4">
                        <div class="row">
                            <div class="col">
                                <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                                    <div class="text-left">
                                        <form class="form-submit">
                                        <div class="row" style="margin-left: -40px !important">
                                            <div class="col-md-7 ">

                                            <label class="uploadBtnWrap" for="thefile">
                                              <input type="file" accept="image/*" name="image"  id="thefile" onchange="alertFilename()" required="" />
                                              <span class="btn btn-info btn-sm">Browse..</span>
                                              <span id="fileName"  style="margin-left: 0px !important;margin-top: 100px !important;">&nbsp;&nbsp;<br>No file selected</span>
                                            </label>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="app1"></div>
                                                      <button type="submit"  class="btn  btn-success btn-sm" style="margin-left: 50px;">Upload</button>
                                            </div>
                                        </div>
                                        </form>
            
            
                                  
                                </div>                                  
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <h3 class="disp-name">
                                Hardik Chaturvedi
                            </h3>
                            <div class="h5 font-weight-300">
                                <i class="ni location_pin mr-2 disp-address"></i>
                            </div>
                            <div class="h5 mt-4">
                                <i class="ni business_briefcase-24 mr-2 disp-pro"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-8 order-xl-1">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <h3 class="mb-0">Edit Profile</h3>
                        </div>
                    </div>
                    <div class="card-body">
                            <input type="hidden" name="_token" value="OYkApbeTks8MgMdtg1zIC98mE3HWWK5MB07dkKfX">                            <input type="hidden" name="_method" value="put">
                            <h6 class="heading-small text-muted mb-4">User information</h6>
                            
                        <form class="form-submit">    
                            <div class="pl-lg-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="input-name">Name</label>
                                    <input type="text" name="name" id="input-name" class="form-control form-control-alternative  i" placeholder="Name" autofocus required="">

                                                                    </div>
                                <div class="form-group">
                                    <label class="form-control-label" for="input-email">Email</label>
                                    <input type="email" name="email" id="input-email" class="form-control form-control-alternative i" placeholder="Email" 
                                    required="">

                                                                    </div>
                                                                     <div class="form-group">
                                    <label class="form-control-label" for="input-email">Mobile</label>
                                    <input type="number" name="mobile" id="input-mobile" class="form-control form-control-alternative i" placeholder="Mobile" 
                                     required="">

                                                                    </div>

                                <div class="form-group">
                                    <label class="form-control-label" for="input-pro">Profession</label>
                                    <input type="text" name="profession" id="input-pro" class="form-control form-control-alternative i" placeholder="Profession" required="">

                                                                    </div>  
                                                                     <div class="form-group">
                                    <label class="form-control-label" for="input-address">Address</label>
                                    <input type="text" name="address" id="input-address" class="form-control form-control-alternative i" placeholder="Address" required="" >

                                                                    </div>                                                         <div class="app3"></div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-success changeinfo  mt-4">Save</button>
                                </div>
                            </div>
                        </form>
                        <hr class="my-4" />
                        
                            <input type="hidden" name="_token" value="OYkApbeTks8MgMdtg1zIC98mE3HWWK5MB07dkKfX">                            <input type="hidden" name="_method" value="put">
                            <h6 class="heading-small text-muted mb-4">Password</h6>

                            <form class="form-submit">
                            <div class="pl-lg-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="input-current-password">Current Password</label>
                                    <input type="password" name="old_pass" id="input-current-password" class="form-control form-control-alternative p" placeholder="Current Password" value="" required>
                                    
                                                                    </div>
                                <div class="form-group">
                                    <label class="form-control-label" for="input-password">New Password</label>
                                    <input type="password" name="new_pass" id="input-password" class="form-control form-control-alternative p" placeholder="New Password" value="" required>
                                    
                                                                    </div>
                                <div class="form-group">
                                    <label class="form-control-label" for="input-password-confirmation">Confirm  Password</label>
                                    <input type="password" name="con_pass" id="input-password-confirmation" class="form-control form-control-alternative p" placeholder="Confirm New Password" value="" required>
                                    <div class="app2"></div>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-success changePass mt-4">Change password</button>
                                </div>
                                </form>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <!--Main layout-->

    <!--Footer-->
    <footer  class="page-footer pt-0 mt-5 rgba-stylish-light" style="width: 100%;bottom: 0;right: 0 ">

        <!--Copyright-->
        <!--/.Copyright-->
<?php include_once 'assets/include/footer.php'; ?>

    </footer>
    <!--/.Footer-->
    <script type="text/javascript">
         $(document).on('click','.changePass',function(){
    $('#data_what').attr('data_what','changePass');

    });
          $(document).on('click','.changeinfo',function(){
    $('#data_what').attr('data_what','changeinfo');

    });
    </script>
    <script type="text/javascript">
        $(document).on('submit','.form-submit',function(e){
            e.preventDefault();
            data_what=$('#data_what').attr('data-what');
            // alert(data_what);
            form=new FormData(this);
            $.ajax
            ({
                url:"<?= base_url()?>"+`${data_what}`,
                method:'post',
                dataType:'json',
                data:form,
                contentType:false,
                processData:false,
                cache:false,
                success:function(data)
                {
                        console.log(data['msg']); 
                    
                    if (data['type']=='success') 
                    {
                        console.log(data['msg']); 
                          toastr["success"](data['msg'], "Success");

                            toastr.options = {
                              "closeButton": false,
                              "debug": false,
                              "newestOnTop": true,
                              "progressBar": true,
                              "positionClass": "toast-bottom-right",
                              "preventDuplicates": true,
                              "onclick": null,
                              "showDuration": "300",
                              "hideDuration": "1000",
                              "timeOut": "2000",
                              "extendedTimeOut": "1000",
                              "showEasing": "swing",
                              "hideEasing": "linear",
                              "showMethod": "fadeIn",
                              "hideMethod": "fadeOut"
                            }
                        $('.formModal').modal('hide');
                        showall();
                        $('.form-submit')[0].reset();

                    }
                    else if(data['type']=='error')
                    {
                        console.log(data['msg']);
                          toastr["error"](data['msg'], "Error");

                            toastr.options = {
                              "closeButton": false,
                              "debug": false,
                              "newestOnTop": true,
                              "progressBar": true,
                              "positionClass": "toast-bottom-right",
                              "preventDuplicates": true,
                              "onclick": null,
                              "showDuration": "300",
                              "hideDuration": "1000",
                              "timeOut": "2000",
                              "extendedTimeOut": "1000",
                              "showEasing": "swing",
                              "hideEasing": "linear",
                              "showMethod": "fadeIn",
                              "hideMethod": "fadeOut"
                            }

                    }    
                },
                error:function(data)
                {
                    alert('Error In Ajax');
                }
            })
        });
       </script> 
           <script type="text/javascript">
        $(document).on('click','.changephoto',function(e)
        {   
            // id=$(this).attr('data-id');
            $('.formModal').modal('show');
            // $('#modalForm').html(data);
            // $('#delete_id').val(id);
            $('.modal-footer').hide();
        });
    </script>
    <script type="text/javascript">
        function alertFilename() {
  var thefile = document.getElementById('thefile');
  document.getElementById('fileName').innerHTML =  thefile.value; 
    $('.app1').append('<input type="hidden" id="data_what" data-what="Profile/changeImage">');
     $('.app2').html('');
    $('.app3').html('');
}
   
    </script>
      <script type="text/javascript">
    $(document).on('change','.p',function(){
    $('.app2').append('<input type="hidden" id="data_what" data-what="Profile/changePass">');
    $('.app1').html('');
    $('.app3').html('');


    })    ;

   
    </script>

      <script type="text/javascript">
    $(document).on('change','.i',function(){
    $('.app3').append('<input type="hidden" id="data_what" data-what="Profile/changeinfo">');
     $('.app1').html('');
    $('.app2').html('');

    })    ;
    </script>
    <script type="text/javascript">
          function showall()
{   action="select";
    $.ajax
    ({
        url: "<?= base_url();?>Users/fetch_update",
        data:{action:action},
        dataType:"json",
        method:"post",
        cache:false,
        success:function(data)
        { 
            // console.log(data);
            $('#input-name').val(data[0].name);
            $('#input-email').val(data[0].email);
            $('#input-mobile').val(data[0].mobile);
            $('#input-pro').val(data[0].profession);
            $('#input-address').val(data[0].address);

            $('.disp-name').text(data[0].name);
            $('.disp-address').text(data[0].address);
            $('.disp-pro').text(data[0].profession);
            $('.disp-img').attr('src','assets/img/'+data[0].image);






        },
        error:function(data)
        {
            console.log("error in show");
        }
        
    })
}
    </script>
    <script type="text/javascript">
        showall();
    </script>
<?php 
}
else
{
    header('location: Welcome/');
}
?>
