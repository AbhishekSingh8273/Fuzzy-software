<nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
    <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="Dashboard">Dashboard</a>
        <!-- Form -->
        <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
            <!-- <div class="form-group mb-0"> -->
                <!-- <div class="input-group input-group-alternative"> -->
                    <!-- <div class="input-group-prepend"> -->
                        <!-- <span class="input-group-text"><i class="fas fa-search"></i></span> -->
                    <!-- </div> -->
                    <!-- <input class="form-control" placeholder="Search" type="text"> -->
                <!-- </div> -->
            <!-- </div> -->
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