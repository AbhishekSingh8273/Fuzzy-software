<?php include_once 'assets/include/head.php'; ?>
<style type="text/css">
    .md-form input[type=password]:focus:not([readonly]), .md-form input[type=search-md]:focus:not([readonly]), .md-form input[type=search]:focus:not([readonly]), .md-form input[type=tel]:focus:not([readonly]), .md-form input[type=text]:focus:not([readonly]), .md-form input[type=time]:focus:not([readonly]), .md-form input[type=url]:focus:not([readonly]), .md-form textarea.md-textarea:focus:not([readonly]) {
    -webkit-box-shadow: 0 1px 0 0 #4285f4;
    box-shadow: 0 1px 0 0 #00c851;
    border-bottom: 1px solid #00c851;
}
.md-form input[type=password]:focus:not([readonly])+label, .md-form input[type=search-md]:focus:not([readonly])+label, .md-form input[type=search]:focus:not([readonly])+label, .md-form input[type=tel]:focus:not([readonly])+label, .md-form input[type=text]:focus:not([readonly])+label, .md-form input[type=time]:focus:not([readonly])+label, .md-form input[type=url]:focus:not([readonly])+label, .md-form textarea.md-textarea:focus:not([readonly])+label {
    color: #00c851;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-5 offset-md-3 mt-6 pt-5">
            <section class="form-dark">

                        <!--Form without header-->
                        <div class="card card-image " >
                            <div class="text-white rgba-stylish-stron py-5 px-5 z-depth-4">

                                <!--Header-->
                                <div class="text-center">
                                    <h3 class="text-success mb-5 mt-4 font-weight-bold">
                                        <strong>SIGN</strong>
                                        <a class="text-success font-weight-bold">
                                            <strong> UP</strong>
                                        </a>
                                    </h3>
                                </div>
                                <form class="signup-form">
                                <!--Body-->
                                <div class="md-form">
                                    <input type="text" id="name" name="name" class="form-control">
                                    <label for="name">Name</label>
                                </div>
                                <div class="md-form">
                                    <input type="text" id="mobile" name="mobile" class="form-control ">
                                    <label for="mobile">Mobile</label>
                                </div>
                                <div class="md-form">
                                    <input type="text" id="email" name="email" class="form-control red-tex">
                                    <label for="email">Email</label>
                                </div>
                                <div class="md-form">
                                <input type="password" id="password" name="password" class="form-control red-tex">
                                    <label for="password">Password</label>
                                </div>
                                <div class="md-form pb-3">
                                    
                                    <input type="password" id="passconf" name="passconf" class="form-control red-tex">
                                    <label for="passconf">Confirm Password</label>

                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck17">
                                        <label class="form-check-label text-success" for="defaultCheck17">Accept the
                                            <a href="#" class="text-success font-weight-bold"> Terms and Conditions</a>
                                        </label>
                                    </div>
                                </div>

                                <!--Grid row-->
                                <div class="row d-flex align-items-center mb-3">

                                    <!--Grid column-->
                                    <div class="text-center mb-1 col-md-12">
                                        <button type="submit" class="btn btn-success btn-block btn-rounded z-depth-1">Sign in</button>
                                    </div>
                                   </form> 
                                    <!--Grid column-->
                                </div>
                                <!--Grid row-->

                                <!--Grid column-->
                                <div class="col-md-12">
                                    <p class="font-small text-success d-flex justify-content-end">Have an account?
                                        <a href="Admin" class="text-success ml-1 font-weight-bold"> Log in</a>
                                    </p>
                                </div>
                                <!--Grid column-->

                            </div>
                        </div>
                        <!--/Form without header-->

                    </section>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
   $('.mdb-select').material_select();
 });
    $(document).on('submit','.signup-form',function(e){
        e.preventDefault();
        $.ajax
        ({
            url:"<?= base_url('Users/add_user')?>",
            method:'post',
            dataType:'json',
            data:new FormData(this),
            contentType:false,
            processData:false,
            success:function(data)
            {
                if (data['type']=='success') 
                {
                    alert('Account Created Successfully')
                    window.location.href='Admin';
                }
                else if(data['type']=='error')
                {
                    // alert(data['msg']);
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
                    // console.log(data['msg']);
                }   
            },
            error:function(data)
            {
                alert('Error in Ajax');
            }
        });
    })
</script>
<?php include_once 'assets/include/footer.php'; ?>
