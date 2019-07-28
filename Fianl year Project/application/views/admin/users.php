<?php
if ($_SESSION['status']=='0' OR $_SESSION['status']=='2') 
{
?>
<style type="text/css">
    table
    {
        color: white;
    }
</style>
<?php include_once 'assets/include/head.php'; ?> 
<body class="fixed-sn white-skin">
    <style type="text/css">
        td{
            text-align: center;
        }
        th{
            text-align: center;
        }
    </style>
<?php include_once 'assets/include/nav.php'; ?>
<div class="main-content">
<?php include_once 'assets/include/nav2.php'; ?>
      
 <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    <div class="container-fluid">
            <!-- Card stats -->
            <div class="row">
                <div class="col-xl-12">
                    <table class="table table-reponsive table-condensed table-bordered">
                        <thead>
                            <th width="30px">Sr.</th>
                            <th>Date</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Profession</th>
                            <th>Address</th>

                            <th  width="150px">Tools</th>

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
<!-- Central Modal Medium Info -->
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

        <!--Body-->
        <div class="modal-body">
            <form id="modalForm" class="form-submit">
                    
           </form>
        </div>    
        <div class="modal-footer justify-content-right " style="margin-top: -43px;">
            <button type="submit" form="modalForm" class="btn  btn-outline-danger waves-effect" >Submit</button>
        </div>
    </div>
    <!--/.Content-->
</div>
</div>


<!-- Central Modal Medium Info-->

    <script>
        // SideNav Initialization
        $(".button-collapse").sideNav();

        var container = document.querySelector('.custom-scrollbar');
        Ps.initialize(container, {
            wheelSpeed: 2,
            wheelPropagation: true,
            minScrollbarLength: 20
        });

        // Data Picker Initialization
        $('.datepicker').pickadate();
        // Tooltips Initialization
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

</body>
<?php include_once 'assets/include/footer.php'; ?>

<script>
    function showall(page)
{   action="select";
url=$(location).attr('href');
// alert(url);
parts=url.split('/');
// last_part=parts[parts.length - 1];
// alert(page);
    $.ajax
    ({
        url: "<?= base_url();?>Users/fetch_users/"+page+"/",
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
// function showall()
// {   action='select';
//     $.ajax
//     ({
//         url: "<?= base_url('Users/fetch_users');?>",
//         data:{action:action},
//         dataType:'json',
//         method:'post',
//         cache:false,
//         success:function(data)
//         {
//             if (data['type']=='success') 
//             {
//                    x=1;
//             output="";
//             for (var i = 0; i < data['msg'].length; i++) 
//             {
//                 output+="<tr>";
//                            output+="<td>"+x+"</td>"
//                            output+="<td>"+data['msg'][i].date+"</td>"
//                            output+="<td>"+data['msg'][i].name+"</td>"
//                            output+="<td>"+data['msg'][i].email+"</td>"
//                            output+="<td>"+data['msg'][i].mobile+"</td>"
//                           output+= "<td class='text-center'>";
//                            output+="<button type='button' name='update' data-id='"+data['msg'][i].id+"' class='btn  btn-success btn-sm update_call my-0' data-what='update_user'><i class='fa fa-pen' ></i></button>";
//                            output+="<button class='btn btn-danger  delete_call btn-sm my-0'data-what='delete_user'  data-id='"+data['msg'][i].id+"'><i class='fa fa-times' ></i></button></td>"
//                            ;
//                            output+="</tr>";
//                            x++;    
//                           }
//                      output+="  ";    
//             }
//             else if(data['type']=='error')
//             {
//                 output="<h3 class='text-center'>No Record Found</h3>";
//             }  
            
//             $('tbody.user_table').html(output);
//         },
//         error:function(data)
//         {
//             console.log('error in show');
//         }
        
//     })
// }
</script>
<!-- <script type="text/javascript">
    showall();

</script> -->

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
                    if (data['type']=='success') 
                    {
                        // alert(data['msg']);
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
                        showall(1);
                        $('.form-submit')[0].reset();

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
        $(document).on('click','.update_call',function(e)
        {
            data2=" <div class='row'> <div class='col-md-4'> <div class='md-form'> <input type='text' name='name' class='form-control' id='name'> <label for='name' >Name</label> </div> </div> <div class='col-md-4'> <div class='md-form'> <input type='text' name='email' id='email' class='form-control' > <label for='email' >Email</label> </div> </div> <div class='col-md-4'> <div class='md-form'><input type='text' name='mobile' class='form-control'  id='mobile'> <label for='mobile' >Mobile</label></div></div></div><input type='hidden' name='action_u' class='action_u' data-what='update_user' ><input type='hidden' name='data_what' id='data_what' data-what='Users/update_user' > <input type='hidden' name='image_id' id='image_id' > </div>";
          user_id=$(this).attr("data-id");
         // alert(user_id);
        $.ajax({
          url:"<?= base_url('Users/fetch_update');?>",
          method:'post',
          data:{user_id:user_id},
          dataType:'json',
          success:function(data)
          {

                    $('.formModal').modal('show');
                    $('#modalForm').html(data2);
                    $('.modal-footer').show();
                    $('.mo_heading').text('Update User')
                    $('div.modal-dialog').removeClass('modal-info');
                    $('div.modal-dialog').addClass('modal-danger');
                    $('div.modal-dialog').addClass('modal-lg');
                    $('#name').val(data[0].name);
                    $('#email').val(data[0].email);
                    $('#mobile').val(data[0].mobile);
                    $('#type').val(data[0].type);
                    $('#image_id').val(user_id);
                    $('#action_u').val('user_id');
                    $('.action_u').attr('data-what','Users/update_user');
                    $('label').addClass('active');
                    
                    console.log(data[0]);
          },
          error:function(data){
            alert('error');
          }
        });
        });
    </script>
            <script type="text/javascript">
        $(document).on('click','.delete_call',function(e)
        {   data="<div class='row'> <div class='col-md-12'> <h3 class='text-center'>Are You Sure?</h3> <br> </div> </div> <div class='row'> <div class='col-md-4 offset-md-2'> <button type='submit' class='btn btn-danger form-submit'>Yes</button> <input type='hidden' name='delete_id' id='delete_id'> </div> <div class='col-md-6'> <button type='submit' class='btn btn-danger' data-dismiss='modal'>No</button><input type='hidden' name='data_what' id='data_what' data-what='Users/delete_user' </div> </div>";
            id=$(this).attr('data-id');
            $('.formModal').modal('show');
            $('.mo_heading').text('Delete User')
            $('div.modal-dialog').addClass('modal-dange');
            $('div.modal-dialog').removeClass('modal-lg');
            $('div.modal-dialog').removeClass('modal-info');
            $('#modalForm').html(data);
            $('#delete_id').val(id);
            $('.modal-footer').hide();

        });
    </script>

<?php 
}
else
{
    header('location:Welcome/');
}
?>
