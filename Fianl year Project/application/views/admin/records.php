<?php
if ($_SESSION['status']=='0' OR $_SESSION['status']=='2') 
{
    ?>
    <style type="text/css">
    body{
        /*overflow-y: hidden;*/
        overflow-x: hidden;
    }
    .gModal
    {
        width: 1300px !important;
        height: 620px !important;
        background: #fff !important;
        /*color: #000 !important;*/
        /*position: relative !important;*/
        /*z-index: 9999 !im*/
        margin-left: calc(50% - 650px) !important;
    }
    .gModal .heading
    {
        color: #000 !important;
    }
    table
    {
        color: white;
    }
    .hide
    {
        display: none;
    }

    .times
    {
        background: #fff;
        color: #f00 !important;
        border:2px solid #f00;
        font-size: 25px;
        font-weight: lighter;
        border-radius: 50%;
        float: right;
        margin: 10px;
        margin-top: -38px;
        /*z-index: 99999999 !important;*/
        cursor: pointer !important;
        position: relative;

    }
    #msform {
        background: #fff;
        padding-top: 20px;
        border-top-left-radius : 8px !important;
        border-top-right-radius: 8px !important;
        width: 1000px;
        position: absolute !important;
        top: 30px !important;
        left: calc(50% -  500px) !important;
        z-index: 9999 !important;
        /*margin: ;*/
        opacity: 1;
        text-align: center;
        position: relative;
    }
    td{
        text-align: center;
    }
    #msform fieldset {
        background: #fff;
        border: 0 none;
        /*border-radius: 3px;*/
        /*box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);*/
        padding: 50px 30px;
        box-sizing: border-box;
        width: 100%;

        margin: 0 ;

        height: 520px;
        /*stacking fieldsets above each other*/
        position: relative;
    }
    /*Hide all except first fieldset*/
    #msform fieldset:not(:first-of-type) {
        display: none;
    }
    .purple
    {
        background: #5e72e4 !important;
    }
    /*inputs*/
    #msform input, #msform textarea {
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
        margin-bottom: 10px;
        width: 100%;
        box-sizing: border-box;
        font-family: montserrat;
        color: #2C3E50;
        font-size: 13px;
    }
    /*buttons*/
    #msform .action-button {
        width: 100px;
        background: #27AE60;
        font-weight: bold;
        color: white;
        border: 0 none;
        border-radius: 1px;
        cursor: pointer;
        padding: 10px 5px;
        margin: 10px 5px;
    }
    #msform .action-button:hover, #msform .action-button:focus {
        box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
    }
    /*headings*/
    .fs-title {
        font-size: 15px;
        text-transform: uppercase;
        color: #2C3E50;
        margin-bottom: 10px;
    }
    .fs-subtitle {
        font-weight: normal;
        font-size: 13px;
        color: #666;
        margin-bottom: 0px;
    }
    .fs-subtitle-n
    {
        margin-bottom: 30px;
    }
    /*progressbar*/
    #progressbar {
        margin-bottom: 30px;
        overflow: hidden;
        /*CSS counters to number the steps*/
        counter-reset: step;
    }
    #progressbar li {
        list-style-type: none;
        color: #5e72e4;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 9px;
        width: 33.33%;
        float: left;
        position: relative;
    }
    #progressbar li:before {
        content: counter(step);
        counter-increment: step;
        width: 20px;
        line-height: 20px;
        display: block;
        font-size: 10px;
        color: white;
        background: #5e72e4;
        border-radius: 3px;
        margin: 0 auto 5px auto;
    }
    /*progressbar connectors*/
    #progressbar li:after {
        content: '';
        width: 100%;
        height: 2px;
        background: #ccc;
        position: absolute;
        left: -50%;
        top: 9px;
        z-index: -1; /*put it behind the numbers*/
    }
    #progressbar li:first-child:after {
        /*connector not needed before the first step*/
        content: none; 
    }
    /*marking active/completed steps green*/
    /*The number of the step and the connector before it = green*/
    #progressbar li.active:before,  #progressbar li.active:after{
        background: #5e72e4;
        color: white;
    }
    .box{
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        left: 0;
        background: rgba(0,0,0,.1) !important;
        z-index: 1050;
        overflow-x: hidden;
        overflow-y: hidden;
    }
    .box1{
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        left: 0;
        background: rgba(0,0,0,.6) !important;
        z-index: 1050;
        overflow-x: hidden;
        overflow-y: hidden;
    }
</style>
<script src="assets/js/jquery.min.js"></script>

<script src="assets/js/jquery.easing.min.js"></script>

<?php include_once 'assets/include/head.php'; ?> 
<body class="fixed-sn white-skin">
    <style type="text/css">
    td,th{
        text-align: center;

    }
    #msform td,#msform th{
        color: #000;
    }
</style>
<?php include_once 'assets/include/nav.php'; ?>

<div class="main-content">
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
        <div class="container-fluid">
            <!-- Brand -->
            <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="Dashboard">Dashboard</a>
            <button data-toggle='modal' data-target='#modChart' class="ml-7 btn btn-primary   graph h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" >Graph</button>

            <!-- Form -->
            <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
                <div class="form-group mb-0">
               <!--  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-search"></i></span>
                    </div>
                    <input class="form-control" placeholder="Search" type="text">
                </div> -->
            </div>
        </form>
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
            <li class="nav-item dropdown">
                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="media align-items-center">
                        <span class="avatar avatar-sm rounded-circle">
                          <img alt="Image placeholder" class="disp-img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeFnzpB7oAiShcmjYfoyk8VMm7PuhozjYfbCQRfNoTqS_rBydtAQ">
                      </span>
                      <div class="media-body ml-2 d-none d-lg-block">
                        <span class="mb-0 text-sm  font-weight-bold disp-name"></span>
                    </div>
                </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                <div class=" dropdown-header noti-title">
                    <h6 class="text-overflow m-0">Welcome!</h6>
                </div>
                <a href="profile" class="dropdown-item">
                    <i class="ni ni-single-02"></i>
                    <span>My profile</span>
                </a>
                <div class="dropdown-divider"></div>
                <a href="https://argon-dashboard-laravel.creative-tim.com/logout" class="dropdown-item log_out">
                    <i class="ni ni-user-run"></i>
                    <span>Logout</span>
                </a>
            </div>
        </li>
    </ul>
</div>
</nav>  

<div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    <div class="container-fluid">

        <!-- Card stats -->
        <div class="row">

            <div class="col-xl-12">
                <table class="table table-reponsive table-condensed table-striped  able-bordered">
                    <thead>
                        <th width="10px">Sr.</th>
                        <th>Date</th>
                        <th>Project's Name</th>
                        <th>Project KLOC</th>
                        <th>Cocomo Basic(Effort)</th>
                        <th>Cocomo Inter(Effort)</th>
                        <th>Fuzzy Model(Effort)</th>
                        <th >Tools</th>

                    </thead>
                    <tbody class="user_table">

                    </tbody>
                </table>
                <div class="d-flex justify-content-between">
                    <!--Pagination -->
                    <nav class="my-4" id="pagination_link">
                    </nav>
                    <!--/Pagination -->

                </div>
            </div>
        </div>        
    </div>
    <!--/.Content-->
</div> 

<!-- Graph -->
<div class="modal fade" id="modChart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
    <div class="modal-dialog modal-lg " >
        <div class="modal-content" style="width: 1250px !important; height: 610px; margin-left: calc(50% - 600px);">
            <div class="modal-header">
                <ul class="nav nav-pills "  id="pills-tab" role="tablist" style="margin-left:400px; ">
                  <li class="nav-item">
                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">All Compare</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Argon vs Actual</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">MRmE Error</a>
                </li>
            </ul>

            <button type="button" class="close" data-dismiss="modal">
                <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="tab-content" id="pills-tabContent">
              <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="card">    
                    <div class="card-header">
                        <h5 class="h3 mb-0">Bar Comparison chart</h5>
                    </div>    
                    <div class="card-body">
                        <div class="chart change-graph">
                            <canvas id="bar-chart-grouped" width="1250" height="450"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
              <div class="card">    
                <div class="card-header">
                    <h5 class="h3 mb-0">Line chart</h5>
                </div>    
                <div class="card-body">
                    <div class="chart change-graph">
                        <canvas id="line-chart" width="1250" height="450"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
          <div class="card">    
            <div class="card-header">
                <h5 class="h3 mb-0">Bar  chart</h5>
            </div>    
            <div class="card-body">
                <div class="chart change-graph">
                    <canvas id="bar-chart" width="1250" height="450"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
</div>
</div>
<!-- Graph -->


<!-- Delete Modal Start -->
<div class="modal fade formModal" id="centralModalInfo"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header"   >
                <h2 class="heading lead text-center mo_heading" style="font-size: 25px;">Add User</h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="modalForm" class="form-submit">

                </form>
            </div>    
            <div class="modal-footer justify-content-right " style="margin-top: -43px;">
                <button type="submit" form="modalForm" class="btn  btn-outline-danger waves-effect" >Submit</button>
            </div>
        </div>
    </div>
</div>
<!-- Delete Modal End-->

<!--Update Modal Start  -->
<div class="box hide">
    <div class='main-content estimation-modal '> <!-- Top navbar -->
     <div class='header pb-8' style='margin-right:100px !important;'> </div> <div class='container-fluid mt--7'> <div class='row'> <form novalidate id='msform' class='form-submit'> <!-- progressbar --> <ul id='progressbar'> <li class='active'>Project Description</li> <li>Estimations Factors</li> <li>Final Results And statics</li><button  type="button" class="fa fa-times times"></button> </ul> <!-- fieldsets --> <fieldset> <h2 class='fs-title'>Project Description</h2> <h3 class='fs-subtitle fs-subtitle-n'>This is First step </h3> <div class='row mb-4'> <div class='col-md-3'></div> <div class='col-md-6'> <input type='name' id='project_name' name='project_name' placeholder='Project Name'> </div> </div> <div class='row mb-4'> <div class='col-md-3'></div> <div class='col-md-6'> <input type='number' id='project_kloc' name='project_kloc' placeholder='Project KLOC'><input type='hidden' name='action_u' id='action_u'><input type='hidden' name='action_u1' class='action_u'><input type='hidden' name='data_what' id='data_what' data-what='Estimations/update_Estimation' ><input type='hidden' name='image_id' id='image_id' > </div> </div> <input type='button' name='next' class='next action-button purple' value='Next'> </fieldset> <fieldset> <h2 class='fs-title'>Estimations Factors (As Per the IEEE Papers on Software Estimation And Bary Bohem)</h2> <h3 class='fs-subtitle'>Final step</h3> <div class='row mt-4'> <div class='col-md-2'></div> <div class='col-md-8'> <table class='table table-responsive table-condensed table-hover'> <tr> <th>Product Attr.</th> <th>Computer Attr.</th> <th>Personel Attr.</th> <th>Project Attr.</th> </tr> <tr> <td>RELY- <select name='rely'> <option value='.75'>Very Low</option> <option value='.88'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='1.15'>High</option> <option value='1.40'>Very High</option> </select> </td> <td>TIME- <select name='time'> <option value='1.00' selected=''>Nominal</option> <option value='1.11'>High</option> <option value='1.30'>Very High</option> <option value='1.66'>Extra High</option> </select> </td> <td>ACAP- <select name='acap'> <option value='1.46'>Very Low</option> <option value='1.19'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='.86'>High</option> <option value='.71'>Very High</option> </select> </td> <td>MODP- <select name='modp'> <option value='1.24'>Very Low</option> <option value='1.10'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='.91'>High</option> <option value='.82'>Very High</option> </select> </td> </tr> <tr> <td>DATA- <select name='data'> <option value='.94'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='1.08'>High</option> <option value='1.16'>Very High</option> </select> </td> <td>STOR- <select name='stor'> <option value='1.00' selected=''>Nominal</option> <option value='1.06'>High</option> <option value='1.21'>Very High</option> <option value='1.56'>Extra High</option> </select> </td> <td>AEXP- <select name='aexp'> <option value='1.29'>Very Low</option> <option value='1.13'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='.91'>High</option> <option value='.82'>Very High</option> </select> </td> <td>TOOL- <select name='tool'> <option value='1.24'>Very Low</option> <option value='1.10'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='.91'>High</option> <option value='.83'>Very High</option> </select> </td> </tr> <tr> <td>CPLX- <select name='cplx'> <option value='.70'>Very Low</option> <option value='.85'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='1.15'>High</option> <option value='1.30'>Very High</option> <option value='1.65'>Extra High</option> </select> </td> <td>VIRT- <select name='virt'> <option value='.87'>Very Low</option> <option value='1.00' selected=''>Low</option> <option value='1.15'>Nominal</option> <option value='1.30'>High</option> </select> </td> <td>PCAP- <select name='pcap'> <option value='1.42'>Very Low</option> <option value='1.17'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='.86'>High</option> <option value='.70'>Very High</option> </select> </td> <td>SCED- <select name='sced'> <option value='1.23'>Very Low</option> <option value='1.08'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='1.04'>High</option> <option value='1.10'>Very High</option> </select> </td> </tr> <tr> <td> </td> <td>TURN- <select name='turn'> <option value='.87'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='1.07'>High</option> <option value='1.15'>Very High</option> </select> </td> <td>VEXP- <select name='vexp'> <option value='1.21'>Very Low</option> <option value='1.10'>Low</option> <option value='1.00' selected=''>Nominal</option> <option value='.90'>High</option> </select> </td> <td> </td> </tr> </table> </div> </div> <input type='button' name='previous' class='previous action-button purple' value='Previous'> <input type='submit' name='submit' class='next submit action-button purple' value='Submit'> <!-- <input type='button' name='next' class='next action-button purple' value='Next'> --> </fieldset> <fieldset> <h2 class='fs-title'>Final Results</h2> <h3 class='fs-subtitle'>Here it is. </h3> <div class='row mt-4'> <!-- <div class='col-md-2'></div> --> <div class='col-md-12'> <table class='table table-bordered table-hover table-condensed table-responsive estimation_table'> <tr> <th></th> <th>Cocomo Basic</th> <th>Cocomo Inter</th> <th>Halsted Model</th> <th>Baiely Model</th> <th>Doty Model</th> <th>Fuzzy Model</th> </tr> </table> </div> </div> <input type='button' name='previous' class='previous action-button purple' value='Previous'> </fieldset></form> </div></div></div>
 </div>
 <!--Update Modal End  -->

</body>

<script src="assets/js/jquery.min.js"></script>

<?php include_once 'assets/include/footer.php'; ?>    
<script>
    function showall(page)
    {   action="select";
    url=$(location).attr('href');
    $.ajax
    ({
        url: "<?= base_url();?>Records/fetch_records/"+page+"/",
        data:{action:action},
        dataType:"json",
        method:"get",
        cache:false,
        success:function(data)
        { 
            $("tbody.user_table").html(data.table);
            $("#pagination_link").html(data.pagination_link);
            console.log(data);

        },
        error:function(data)
        {
            console.log("error in show");
        }
        
    })
}
</script>
<script type="text/javascript">
    showall(1);
    $(document).on("click", ".pagination li a", function(event){
      event.preventDefault();
      var page = $(this).data("ci-pagination-page");
      showall(page);
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
                    $('.estimation_table').html("");
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
                      $('.formModal').modal('hide');
                        // $('.box').slideUp();
                        console.log(data)
                        if(data_what=='Estimations/update_Estimation')
                        {
                             $('.estimation_table').html(" <tr> <th></th> <th>Cocomo Basic</th> <th>Cocomo Inter</th> <th>Halsted Model</th> <th>Baiely Model</th> <th>Doty Model</th> <th>Fuzzy Model</th> </tr>");
                            output="";
                            output+="<tr>";
                            output+="<th>Effort </th>";
                            output+="<td>"+data['result'][0]+"</td>";
                            output+="<td>"+data['result'][1]+"</td>";
                            output+="<td>"+data['result'][2]+"</td>";
                            output+="<td>"+data['result'][3]+"</td>";
                            output+="<td>"+data['result'][4]+"</td>"; 
                            output+="<td>"+data['result'][5]+"</td>";
                            output+="</tr>";
                            output+="  "; 
                            $('.estimation_table').append(output);
                        }
                        showall(1);
                        $('.form-submit')[0].reset();

                    }
                    else if(data['type']=='error')
                    {
                        if(data_what=='Estimations/update_Estimation')
                        {
                              output="";
                            output+="<tr><td colspan='7' class='text-danger'><b>Oops! Error Occured .Go Back And Check, Are You Submitting With Previous Values?</b></td>";
                                      
                                       output+="</tr>";
                                 output+="  "; 
                        $('.estimation_table').append(output);
                        }
                        $('.form-submit')[0].reset();

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

                  }    
              },
              error:function(data)
              {
                alert('Error Occured');
            }
        })
        });
    </script>
    <script type="text/javascript">
        $(document).on('click','.graph_call',function(e)
        {
            $('.box1').slideDown();
            id=$(this).attr('data-id');
            // $('#modChart').modal('show');
            user_id=$(this).attr("data-id");

        });
    </script> 
    <script type="text/javascript">
        $(document).on('click','.update_call',function(e)
        {
            // $('.box').removeClass('hide');
            // $('#msform').addClass('animated');
            // $('#msform').addClass('slideInDown');
            $('.box').slideDown();
            user_id=$(this).attr("data-id");
            kloc=$(this).attr("data-kloc");
            name=$(this).attr("data-name");

         // alert(user_id);
         $.ajax({
          url:"<?= base_url('Users/fetch_update');?>",
          method:'post',
          data:{user_id:user_id},
          dataType:'json',
          success:function(data)
          {
                    // $('.formModal').modal('show');
                    // $('.msform').html(data2);
                    // $('.modal-footer').show();
                    // $('#name').val(data[0].name);
                    // $('#email').val(data[0].email);
                    // $('#mobile').val(data[0].mobile);
                    // $('#type').val(data[0].type);
                    $('#image_id').val(user_id);
                    $('#project_name').val(name);
                    $('#project_kloc').val(kloc);
                    $('#action_u').val('user_id');
                    $('.action_u').attr('data-what','Records/update_record');
                    $('label').addClass('active');
                    
                    console.log(data[0]);
                },
                error:function(data)
                {
                    alert('error');
                }
            });
     });
 </script>
 <script type="text/javascript">
    $(document).on('click','.delete_call',function(e)      
        {   data="<div class='row'> <div class='col-md-12'> <h3 class='text-center'>Are You Sure?</h3> <br> </div> </div> <div class='row'> <div class='col-md-4 offset-md-2'> <button type='submit' class='btn btn-danger form-submit'>Yes</button> <input type='hidden' name='delete_id' id='delete_id'> </div> <div class='col-md-6'> <button type='submit' class='btn btn-danger' data-dismiss='modal'>No</button><input type='hidden' name='data_what' id='data_what' data-what='Records/delete_record' ></div> </div>";
        id=$(this).attr('data-id');
        $('.formModal').modal('show');
        $('.mo_heading').text('Delete Record')
        $('div.modal-dialog').removeClass('modal-lg');
        $('div.modal-dialog').removeClass('modal-info');
        $('#modalForm').html(data);
        $('#delete_id').val(id);
        $('.modal-footer').hide();
    });
</script>
<script type="text/javascript">
    $(document).on('click','.mmre_single',function(e)      
        {   data="<div class='row'> <div class='col-md-12'><div class='card'><div class='card-header'><h5 class='h3 mb-0'>MMRE Line chart</h5></div><div class='card-body'><div class='chart change-graph'><canvas id='line-chart-mmre' width='1200' height='600'></canvas></div></div></div></div></div>";
        id=$(this).attr('data-id');
        $('.formModal').modal('show');
        $('.mo_heading').text('')
        $('div.modal-dialog').addClass('modal-lg');
        $('div.modal-dialog').removeClass('modal-info');
        $('#modalForm').html(data);
        $('#delete_id').val(id);
        $('.modal-footer').hide();
    });
</script>
<script src="assets/js/jquery.easing.min.js"></script>
<script type="text/javascript">
    $(document).on('click','.actual_call',function(e)      
        {   data=" <div class='row'> <div class='col-md-5 offset-md-3'><input type='number' id='actual' step='.01' name='actual_effort' placeholder='Enter..' class='form-control'><br><br></div><div class='col-md-2 offset-md-9'><button type='submit' class='btn btn-danger form-submit'>Submit</button> </div> <input type='hidden' name='delete_id' id='delete_id'> </div> <input type='hidden' name='data_what' id='data_what' data-what='Records/update_actual' ></div> </div>";
        id=$(this).attr('data-id');
        $('.formModal').modal('show');
        $('.mo_heading').text('Actual Effort')
        $('div.modal-dialog').removeClass('modal-lg');
        $('div.modal-dialog').removeClass('modal-info');
        
        $('#modalForm').html(data);
        $('#delete_id').val(id);
        $('.modal-footer').hide();
        a= $(this).attr('data-actual');
        $('#actual').val(a);
    });
</script>
<script>
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function () {
    if (animating) return false;
    animating = true;

    current_fs = $(this).parent();
    next_fs = $(this).parent().next();

    //activate next step on progressbar using the index of next_fs
    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

    //show the next fieldset
    next_fs.show();
    //hide the current fieldset with style
    current_fs.animate({ opacity: 0 }, {
        step: function (now, mx) {
            //as the opacity of current_fs reduces to 0 - stored in "now"
            //1. scale current_fs down to 80%
            scale = 1 - (1 - now) * 0.2;
            //2. bring next_fs from the right(50%)
            left = now * 50 + "%";
            //3. increase opacity of next_fs to 1 as it moves in
            opacity = 1 - now;
            current_fs.css({
                'transform': 'scale(' + scale + ')',
                'position': 'absolute' });

            next_fs.css({ 'left': left, 'opacity': opacity });
        },
        duration: 800,
        complete: function () {
            current_fs.hide();
            animating = false;
        },
        //this comes from the custom easing plugin
        easing: 'easeInOutBack' });

});

$(".previous").click(function () {
    if (animating) return false;
    animating = true;

    current_fs = $(this).parent();
    previous_fs = $(this).parent().prev();

    //de-activate current step on progressbar
    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

    //show the previous fieldset
    previous_fs.show();
    //hide the current fieldset with style
    current_fs.animate({ opacity: 0 }, {
        step: function (now, mx) {
            //as the opacity of current_fs reduces to 0 - stored in "now"
            //1. scale previous_fs from 80% to 100%
            scale = 0.8 + (1 - now) * 0.2;
            //2. take current_fs to the right(50%) - from 0%
            left = (1 - now) * 50 + "%";
            //3. increase opacity of previous_fs to 1 as it moves in
            opacity = 1 - now;
            current_fs.css({ 'left': left });
            previous_fs.css({ 'transform': 'scale(' + scale + ')', 'opacity': opacity });
        },
        duration: 800,
        complete: function () {
            current_fs.hide();
            animating = false;
        },
        //this comes from the custom easing plugin
        easing: 'easeInOutBack' });

});

</script>
<script type="text/javascript">
    $(document).on('click','.times',function(){
        $('.box').slideUp();
    });
</script>

<!-- GRAPH SCRIPT START -->
<script type="text/javascript">
    $(document).on('click','.graph',function(){
        // GROUP CHART START
        $.ajax({
          url:"<?=base_url();?>Records/fetch_total",
          method:'post',
          data:{data:true},
          dataType:'json',
          success:function(data)
          {
            
            console.log(data);
            new Chart(document.getElementById("bar-chart-grouped"), {
                type: 'bar',
                data: {
                  labels: data['kloc'],
                  datasets: [
                  {
                      label: "Actual",
                      backgroundColor: "#3e95cd",
                      data: data['actual']
                  }, {
                      label: "Basic",
                      backgroundColor: "#8e5ea2",
                      data: data['cocomo_basic']

                  }
                  , {
                      label: "Inter",
                      backgroundColor: "#800080",
                      data:data['cocomo_inter']
                  }, {
                      label: "Halsted",
                      backgroundColor: "#FF00FF",
                      data: data['halsted']
                  }, {
                      label: "Basil",
                      backgroundColor: "#000080",
                      data: data['baiely']
                  }, {
                      label: "Doty",
                      backgroundColor: "#0000FF",
                      data:data['doty']
                  }, {
                      label: "Fuzzy",
                      backgroundColor: "#00FFFF",
                      data: data['fuzzy']
                  }
                  ]
              },
              options: {
                  title: {
                    display: true,
                    text: 'Comparison Of Effort Estimated Of Various Models'
                }
                ,
                scales: {
                  yAxes: [{
                    type: 'logarithmic',
                    ticks: {
                        autoSkip: true,
                        min: 1,
                        callback: function (value, index, values) {
                            if(value==1 || value==10 || value==100 || value==1000 || value==10000|| value==100000){
                                return value;
                            }
                        }
                    },
                    scaleLabel: {
                        display: true,
                        labelString: 'Mean Time Between Stock-Out'
                    }
                }]
            }
        }
    });
        }
    });
    // Group CHART END

    // LINE CHART START
    $.ajax({
      url:"<?=base_url();?>Records/fetch_total",
      method:'post',
      data:{data:true},
      dataType:'json',
      success:function(data)
      {
        
        console.log(data);
        new Chart(document.getElementById("line-chart"), {
          type: 'line',
          data: {
            labels: data['kloc'],
            datasets: [{ 
                data: data['actual'],
                label: "Actual Effort",
                borderColor: "#f00",
                backgroundColor:"#f00",
                fill: false
            }, { 
                data: data['fuzzy'],
                label: "Argon Effort",
                borderColor: "#00f",
                backgroundColor:"#00f",
                fill: false
            }
            ]
        },
        options: {
            bezierCurve : false,
            elements: {
                line: {
                    tension: 0
                }
            },
            title: {
              display: true,
              text: 'Argon Effort vs Actual Effort (in Person Month)'
          }
          ,
          scales: {
            yAxes: [{
                ticks: {
                                // max: 10,
                                // min: 0,
                                stepSize: 200
                            }
                        }]
                    }
                }
            });
    }
});
        // LINE CHART END

        // MMRE BAR CHART START
        $.ajax({
          url:"<?=base_url();?>Records/fetch_mmre",
          method:'post',
          data:{data:true},
          dataType:'json',
          success:function(data)
          {
            
            console.log(data);
            new Chart(document.getElementById("bar-chart"), {
                type: 'bar',
                data: {
                  labels: ["Basic Cocomo", "Inter Cocomo", "Baiely", "Doty", "Halsted","Argon"],
                  datasets: [
                  {
                      label: "MMRE (%)",
                      backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#000","#c45850"],
                      data:data
                  }
                  ]
              },
              options: {

                  legend: { display: false },
                  title: {
                    display: true,
                    text: 'MMRE(%) Comparison Of Various Models'
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            max: 10,
                            min: 0,
                            stepSize: 1
                        }
                    }]
                }
            }
        });
        }
    });
        // MMRE BAR CHART END
    });

</script>
<!-- GRAPH SCRIPT END -->

<script type="text/javascript">
    $(document).on('click','.mmre_single',function(){
        id=$(this).attr('data-id');
        $.ajax({
          url:"<?=base_url();?>Records/fetch_mmre",
          method:'post',
          data:{id:id},
          dataType:'json',
          success:function(data)
          {
            
            console.log(data);
            new Chart(document.getElementById("line-chart-mmre"), {
              type: 'line',
              data: {
                labels: ['Basic','Inter','Baiely','Doty','Halsted','Argon'],
                datasets: [{ 
                    data: data,
                    label:'MMRE',
                    borderColor: "#f00",
                    backgroundColor:"#f00",
                    fill: false
                }]
            },
            options: {
                bezierCurve : false,
                elements: {
                    line: {
                        tension: 0
                    }
                },
                title: {
                  display: true,
                  text: 'Argon Effort vs Actual Effort (in Person Month)'
              }
              ,
              scales: {
                yAxes: [{
                    ticks: {
                        
                        min: 0,
                       
                    }
                }]
            }
        }
    });
        }
    });

    })
</script>
<script type="text/javascript">
  function showall1()
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
        console.log(data);
        $('.disp-name').text(data[0].name);
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
    showall1();
</script>
<?php 
}
else
{
    header('location:Welcome/');
}
?>
