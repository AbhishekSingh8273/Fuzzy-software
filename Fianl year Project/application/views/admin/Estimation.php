<?php
if ($_SESSION['status']=='0' OR $_SESSION['status']=='2') 
{
?>
<html>
<head>
<style class="cp-pen-style">
* {margin: 0; padding: 0;}

body {
    font-family: montserrat, arial, verdana;
}
/*form styles*/
#msform {
    width: 100%;

    margin: 0px;

    text-align: center;
    position: relative;
}
td{
    text-align: center;
}
#msform fieldset {
    background: white;
    border: 0 none;
    border-radius: 3px;
    box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
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
    background: white;
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



</style>

</head>
<?php include_once 'assets/include/head.php'; ?>

<body>
    <?php 
include_once 'assets/include/nav.php';
 ?>

<!-- multistep form -->
    <div class="main-content">
            <!-- Top navbar -->
    <div class="header pb-8" style="margin-right:100px !important;">
    </div>    
    <div class="container-fluid mt--7">
        <div class="row">            
<form id="msform" class="form-submit">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Project Description</li>
    <li>Estimations Factors</li>
    <li>Final Results And statics</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Project Description</h2>
    <h3 class="fs-subtitle fs-subtitle-n">This is First step </h3>
     <div class="row mb-4">
         <div class="col-md-3"></div>
         <div class="col-md-6">
            <input type="name" name="project_name" placeholder="Project Name">
         </div>
     </div>
     <div class="row mb-4">
         <div class="col-md-3"></div>
         <div class="col-md-6">
           <input type="number" step="0.01" name="project_kloc" placeholder="Project KLOC">
         </div>
     </div>
    <input type="button" name="next" class="next action-button purple" value="Next">
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Estimations Factors (As Per the IEEE Papers on Software Estimation And Bary Bohem)</h2>
    <h3 class="fs-subtitle">Final step</h3>
    <div class="row mt-4">
        <div class="col-md-2"></div>
        <div class="col-md-8">
             <table  class="table   table-responsive table-condensed table-hover" style="margin-left: 60px">
            <tr>
                <th>Product Attr.</th>
                <th>Computer Attr.</th>
                <th>Personel Attr.</th>
                <th>Project Attr.</th>
            </tr>
            <tr>
                <td title="Software Reliability">RELY- 
                    <select name="rely">
                        <option value=".75">Very Low</option>
                        <option value=".88">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value="1.15">High</option>
                        <option value="1.40">Very High</option>
                    </select>
                </td>
                <td title="Runtime Performance Constraints  ">TIME-
                    <select name="time">
                        <option value="1.00" selected="">Nominal</option>
                        <option value="1.11">High</option>
                        <option value="1.30">Very High</option>
                        <option value="1.66">Extra High</option>
                    </select>
                </td>
                <td title="Analyst capability   ">ACAP-
                    <select name="acap">
                        <option value="1.46">Very Low</option>
                        <option value="1.19">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value=".86">High</option>
                        <option value=".71">Very High</option>
                    </select>
                </td>
                <td title="Modern Programming Practices">MODP-
                    <select name="modp">
                        <option value="1.24">Very Low</option>
                        <option value="1.10">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value=".91">High</option>
                        <option value=".82">Very High</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td title="Database Complexity">DATA-
                    <select name="data">
                        <option value=".94">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value="1.08">High</option>
                        <option value="1.16">Very High</option>
                    </select>
                </td>
                <td title="Storage Required">STOR-
                    <select name="stor">
                        <option value="1.00" selected="">Nominal</option>
                        <option value="1.06">High</option>
                        <option value="1.21">Very High</option>
                        <option value="1.56">Extra High</option>
                    </select>
                </td>
                <td title="Analyst experience">AEXP-
                    <select name="aexp">
                        <option value="1.29">Very Low</option>
                        <option value="1.13">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value=".91">High</option>
                        <option value=".82">Very High</option>
                    </select>
                </td>
                <td title="Use of software tools    ">TOOL-
                    <select name="tool">
                        <option value="1.24">Very Low</option>
                        <option value="1.10">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value=".91">High</option>
                        <option value=".83">Very High</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td title="Complexity of The Product    ">CPLX-
                    <select name="cplx">
                        <option value=".70">Very Low</option>
                        <option value=".85">Low</option>
                    <option value="1.00" selected="">Nominal</option>
                        <option value="1.15">High</option>
                        <option value="1.30">Very High</option>
                        <option value="1.65">Extra High</option>
                    </select>
                </td>
                <td title="Volatility of the virtual machine environment">VIRT-
                    <select name="virt">
                        <option value=".87">Very Low</option>
                        <option value="1.00" selected="">Low</option>
                        <option value="1.15">Nominal</option>
                        <option value="1.30">High</option>
                    </select>
                </td>
                <td title="Programmer capability">PCAP-
                    <select name="pcap">
                        <option value="1.42">Very Low</option>
                        <option value="1.17">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value=".86">High</option>
                        <option value=".70">Very High</option>
                    </select>
                </td>
                <td title="Required development schedule    ">SCED-
                    <select name="sced">
                        <option value="1.23">Very Low</option>
                        <option value="1.08">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value="1.04">High</option>
                        <option value="1.10">Very High</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td> </td>
                <td title="Required turnabout time">TURN-
                    <select name="turn">
                        <option value=".87">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value="1.07">High</option>
                        <option value="1.15">Very High</option>
                    </select>
                </td>
                <td title="Virtual machine experience">VEXP-
                    <select name="vexp">
                        <option value="1.21">Very Low</option>
                        <option value="1.10">Low</option>
                        <option value="1.00" selected="">Nominal</option>
                        <option value=".90">High</option>
                    </select>
                </td>
                <td> </td>
            </tr>
        </table>            
        </div>
    </div>
    <input type="button" name="previous" class="previous action-button purple" value="Previous">
    <input type="submit" name="submit" class="next submit action-button purple" value="Submit">
    <!-- <input type="button" name="next" class="next action-button purple" value="Next"> -->
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Final Results</h2>
    <h3 class="fs-subtitle">Here it is. </h3>
    <div class="row mt-4">
        <!-- <div class="col-md-2"></div> -->
        <div class="col-md-12">
            <table class="table table-bordered table-hover table-condensed table-responsive estimation_table">
                <tr>
                    <th>E/M</th>
                    <th>Cocomo Basic</th>
                    <th>Cocomo Inter</th>
                    <th>Halsted Model</th>
                    <th>Baiely Model</th>
                    <th>Doty Model</th>
                    <th>Fuzzy Model</th>
                </tr>
            </table>
        </div>
    </div>
    <input type="button" name="previous" class="previous action-button purple" value="Previous">
  </fieldset>
</form>
            
        </div>

<script src="assets/plugins/toastr/toastr.min.js"></script>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.easing.min.js"></script>
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
     $(document).on('submit','.form-submit',function(e){
            e.preventDefault();
            // alert(data_what);
            form=new FormData(this);
            $.ajax
            ({
                url:"<?= base_url()?>Estimations/add_Estimation",
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
                          // alert(data['msg']);
                          // alert(data['result']);
                        // $('.form-submit')[0].reset();
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
                    else if(data['type']=='error')
                    {
                         output="";
                            output+="<tr><td  colspan='7' class='text-danger'><b>Oops! Error Occured .Go Back And Fill Entries</b></td>";
                                      
                                       output+="</tr>";
                                 output+="  "; 
                        $('.estimation_table').append(output);
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
</body>
</html>
<?php 
}
else
{
    header('location:Welcome/');
}
?>