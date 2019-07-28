<?php
error_reporting(0);
if ($_SESSION['status']!='0') 
{
?>
<link rel="stylesheet" type="text/css" href="assets/plugins/toastr/toastr.min.css">

<style type="text/css">
    .md-form input[type=password]:focus:not([readonly]), .md-form input[type=search-md]:focus:not([readonly]), .md-form input[type=search]:focus:not([readonly]), .md-form input[type=tel]:focus:not([readonly]), .md-form input[type=text]:focus:not([readonly]), .md-form input[type=time]:focus:not([readonly]), .md-form input[type=url]:focus:not([readonly]), .md-form textarea.md-textarea:focus:not([readonly]) {
    -webkit-box-shadow: 0 1px 0 0 #4285f4;
    box-shadow: 0 1px 0 0 #00c851;
    border-bottom: 1px solid #00c851;
}
.md-form input[type=password]:focus:not([readonly])+label, .md-form input[type=search-md]:focus:not([readonly])+label, .md-form input[type=search]:focus:not([readonly])+label, .md-form input[type=tel]:focus:not([readonly])+label, .md-form input[type=text]:focus:not([readonly])+label, .md-form input[type=time]:focus:not([readonly])+label, .md-form input[type=url]:focus:not([readonly])+label, .md-form textarea.md-textarea:focus:not([readonly])+label {
    color: #00c851;
    }
    body{
    background: linear-gradient(87deg, #5e72e4 0, #825ee4 100%) !important;
    overflow-y:hidden;
    }
    .button{
      background: linear-gradient(87deg, #5e72e4 0, #825ee4 100%) !important;
    }
</style>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.min.css'>

      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

*,
*:after,
*:before {
  box-sizing: border-box;  
}

html {
  font-size: 62.5%;
}

body {
  margin: 0;
  padding: 0;
  background: #2ca1cc;
  font-family: "Open Sans", sans-serif;
  font-size: 1.4rem;
  color: #999;
  vertical-align: baseline;
  
  /* This will hide the Horizontal Scroll bar */
  overflow-x: hidden;
}
.form-wrap button.button {
    background: none repeat scroll 0 0 #14B9D5;
    border: none;
    border-radius: 4px;
    color: #fff;
    cursor: pointer;
    font-family: inherit;
    font-size: 1.5rem;
    font-weight: 700;
    padding: 1rem 2rem;
    text-decoration: none;
}

hr {
  height: 0;
  margin: 3rem 0;
  border: 0;
  border-top: 1px dashed #ddd;
}

.wrap {
  width: 100%;
  overflow: hidden;
}

.wrap-inner {
  width: 300%;
  
  /* css transitions */
  transition: transform 500ms cubic-bezier(1.000, 0.000, 0.000, 1.000);
  transform: translateX(0);
  -webkit-backface-visibility: hidden;
}

.section {
  margin: 0;
  width: 33%;
  height: 100%;
  padding: 1rem;
  display: inline-block;
  vertical-align: top;
  text-align: center;
}

.alpha {
  color: #333;
}

.form {
  min-width: 30rem;
  background: #fff;
  border-radius: 4px;
  padding: 2rem;
  text-align: center;
  margin: 5em auto;
  display: inline-block;
}


/* Inputs */

.form-wrap {
  margin: 0;
  padding: 1rem 0;
}
.form-wrap .inputbox {
  border: 1px solid #eaedf2;
  border-radius: 3px;
  padding: 1rem 0 1rem 3.2rem;
  width: 44%;
  outline: none;
  margin-bottom: 1rem;
  font-family: inherit;
}
.form--login .form-wrap .inputbox {
  width: 88%;
}
.form-wrap .name {
  background: #eaedf2 url(img/user.png) 10px 13px no-repeat;
}
.form-wrap .email {
  background: #eaedf2 url(img/email.png) 10px 15px no-repeat;
}
.form-wrap .password {
  background: #eaedf2 url(img/password.png) 10px 10px no-repeat;
}
.form-wrap a.button {
  background: none repeat scroll 0 0 #14B9D5;
  border: none;
  border-radius: 4px;
  color: #fff;
  cursor: pointer;
  font-family: inherit;
  font-size: 1.5rem;
  font-weight: 700;
  padding: 1rem 2rem;
  text-decoration: none;
}
.form-wrap .button:hover {
  background :#0e778a;
}
.form-wrap a.button > i {
  font-size: 2rem;
}

.scroll {
  color: #555;
  font-weight: bold;
  text-decoration: none;
  text-transform: uppercase;
}
.scroll:hover {
  color: #222;
}


/* Social Buttons */

.social {
  margin: 4rem 0 1rem;
}
.social a {
  display: inline-block;
  min-width: 6.2rem;
  color: #fff;
  text-decoration: none;
  font-weight: bold;
  border-radius: 4px;
  padding: 1rem 0;
}
.social a.facebook {
  background: #3b5998;
}
.social a.facebook:hover {
  background: #37528c;
}
.social .twitter {
  background: #1daee3;
  margin: 0 2.6rem;
}
.social .twitter:hover {
  background: #1ca4d6;
}
.social .google {
  background: #d34836;
}
.social .google:hover {
  background: #c74534;
}
.social i {
  border-radius: 4px 0 0 4px;
  font-size: 3.8rem;
  padding: 1rem 1.5rem;
  vertical-align: middle;
  clear: both;
}
.social .facebook > span,
.social .twitter > span,
.social .google > span {
  font-size: 1.8rem;
  letter-spacing: 0.06em;
  padding: 2.4rem 2rem 2.4rem 0;
}


/* Goto */

.goto-2 {
  transform: translateX(-33%);
}
.goto-3 {
  transform: translateX(-66%);
}
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>

  <div id="wrap" class="wrap">
<div class="wrap-inner">

<!--Login Section-->
<div class="section" id="section1">
  <div class="form form--login">
    <h1 class="alpha">Login</h1>
    <p>You already have an account? Great! Login here.</p>
    <div>
      <form class="form-wrap login-form">
        <input name='email' class="inputbox email" type="text" placeholder="Email id" />
        <input name="password" class="inputbox password" type="password" placeholder="Password" />
        <p><button  class="button">Login <i class="icon-rocket"></i></button></p>
      </form>
    </div>
    <hr />
    <p>Don't have an account? <a class="scroll" href="#section2" data-section="2">Register Now &raquo;</a></p>
  </div>
</div>
<!--END: Login Section-->
 
<!--Signup Section-->
<div class="section" id="section2">
  <div class="form form--signup">
    <h1 class="alpha">Sign Up in Seconds!</h1>
    <p>Signup using your Email address</p>
    <div>
      <form class="form-wrap signup-form">
        <input name="name" class="inputbox name" type="text" required="" placeholder="Your Name" />
        <input name="mobile" class="inputbox email" type="number"pattern="^\d{10}$" required placeholder="Mobile" >
        <input name="profession" class="inputbox email" type="text" placeholder="Profession" />
        <input name="email" class="inputbox email" type="text" required="" placeholder="Email id" /><br>

        <input name="address" class="inputbox email" type="text" placeholder="Address" /><br>
        <input name="password" class="inputbox password"  type="password" placeholder="Password" />
        <input name="passconf" class="inputbox password" type="password" placeholder="Confirm Password" />
        <p><button  class="button">Create my Account <i class="icon-rocket"></i></button></p>
        <!--<input id="" type="button" class="button" value="Sign up" />-->
      </form>
    </div>
    <hr />
    <p><a class="scroll" href="#section1" data-section="1">&laquo; Login here</a></p>
  </div>
</div>
<!--END: Signup Section-->
</div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="assets/js/index-login.js"></script>




</body>

</html>

<script type="text/javascript">
    $(document).on('submit','.login-form',function(e){
        e.preventDefault();
        $.ajax
        ({
            url:"<?= base_url('Admin/login_check')?>",
            method:'post',
            dataType:'json',
            data:new FormData(this),
            contentType:false,
            processData:false,
            success:function(data)
            {
                if (data['type']=='success') 
                {
                    window.location.href=data['msg'];
                }
                else if(data['type']=='error')
                {
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
<script type="text/javascript">
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
</script>
<?php include_once 'assets/include/footer.php'; ?> 

<?php 
}
else
{
    header('location:Dashboard/');
}
?>