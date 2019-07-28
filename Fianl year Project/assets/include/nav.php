<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Brand -->
        <a class="navbar-brand pt-0" href="home/">
            <h1  style="font-size: 27px;color: #5e72e4 !important;font-weight: bolder;">Cost Estimation</h1>
        </a>
        <!-- User -->
        <ul class="nav align-items-center d-md-none">
            <li class="nav-item dropdown">
                <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="media align-items-center">
                        <span class="avatar avatar-sm rounded-circle">
                        <img alt="Image placeholder" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeFnzpB7oAiShcmjYfoyk8VMm7PuhozjYfbCQRfNoTqS_rBydtAQ">
                        </span>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                    <div class=" dropdown-header noti-title">
                        <h6 class="text-overflow m-0">Welcome!</h6>
                    </div>
                    <a href="profile/" class="dropdown-item">
                        <i class="ni ni-single-02"></i>
                        <span>My profile</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a  class="dropdown-item log_out" >
                        <i class="ni ni-user-run"></i>
                        <span>Logout</span>
                    </a>
                </div>
            </li>
        </ul>
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
            <!-- Collapse header -->
            <div class="navbar-collapse-header d-md-none">
                <div class="row">
                    <div class="col-6 collapse-brand">
                        <a href="home/">
                            <img src="https://argon-dashboard-laravel.creative-tim.com/argon/img/brand/blue.png">
                        </a>
                    </div>
                    <div class="col-6 collapse-close">
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
            <!-- Form -->
            <form class="mt-4 mb-3 d-md-none">
                <div class="input-group input-group-rounded input-group-merge">
                    <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <span class="fa fa-search"></span>
                        </div>
                    </div>
                </div>
            </form>
            <!-- Navigation -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Dashboard">
                        <i class="ni ni-tv-2 text-primary"></i> Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Estimations">
                        <i class="ni ni-tv-2 text-primary"></i>Calculate Estimate
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Records">
                        <i class="ni ni-tv-2 text-primary"></i>My Estimations
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profile">
                        <i class="ni ni-single-02 text-yellow"></i> User profile
                    </a>
                </li>
                <?php
                    if ($_SESSION['status']=='2') 
                    {
              ?>
                <li class="nav-item">
                    <a class="nav-link" href="Users">
                        <i class="ni ni-bullet-list-67 text-red"></i> User Management
                    </a>
                </li>
                <?php
            }
                ?>
            </ul>
            <!-- Divider -->
            <hr class="my-3">
        </div>
    </div>
</nav>