<?php
if ($_SESSION['status']=='0' OR $_SESSION['status']=='2') 
{
?>
<?php include_once 'assets/include/head.php'; ?>
<body class="fixed-sn white-skin">
  <style type="text/css">
    body{
      overflow-x: hidden;
    }
  </style>
<?php 
include_once 'assets/include/nav.php';
 ?>
    <!--Main layout-->
    
        
        <div class="main-content">
            <!-- Top navbar -->
  <?php 
include_once 'assets/include/nav2.php';
 ?>
                <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    <div class="container-fluid">
        <div class="header-body">
            <!-- Card stats -->
            <div class="row">
                <div class="col-xl-3 col-lg-6">
                  <a href="Estimations">
                    <div class="card card-stats mb-4 mb-xl-0">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title text-uppercase text-muted mb-0">Estimate</h5>
                                    <span class="h2 font-weight-bold mb-0">350,897</span>
                                </div>
                              
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                                        <i class="fas fa-chart-bar"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-3 mb-0 text-muted text-sm">
                                <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                                <span class="text-nowrap">Since last month</span>
                            </p>
                        </div>
                    </div>
                  </a>
                </div>
                <div class="col-xl-3 col-lg-6">
                  <a href=" Records">

                    <div class="card card-stats mb-4 mb-xl-0">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title text-uppercase text-muted mb-0">My Estimations</h5>
                                    <span class="h2 font-weight-bold mb-0">2,356</span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                                        <i class="fas fa-chart-pie"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-3 mb-0 text-muted text-sm">
                                <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
                                <span class="text-nowrap">Since last week</span>
                            </p>
                        </div>
                    </div>
                  </a>
                </div>
                <div class="col-xl-3 col-lg-6">
                   <?php
                    if ($_SESSION['status']=='2') 
                    {
                  ?>
                  <a href="Users">

                    <div class="card card-stats mb-4 mb-xl-0">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title text-uppercase text-muted mb-0">All Users</h5>
                                    <span class="h2 font-weight-bold mb-0">924</span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                                        <i class="fas fa-users"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-3 mb-0 text-muted text-sm">
                                <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                                <span class="text-nowrap">Since yesterday</span>
                            </p>
                        </div>
                    </div>
                  </a>
                  <?php
                }
                else{
                  ?>
                   <a href="Profile">

                    <div class="card card-stats mb-4 mb-xl-0">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title text-uppercase text-muted mb-0">Profile</h5>
                                    <span class="h2 font-weight-bold mb-0"></span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                                        <i class="fas fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-3 mb-0 text-muted text-sm">
                                <span class="text-warning mr-2"> </span>
                                <span class="text-nowrap">&nbsp;</span>
                            </p>
                        </div>
                    </div>
                  </a>
                  <?php
                }
                ?>

              
                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="card card-stats mb-4 mb-xl-0">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title text-uppercase text-muted mb-0">Accuracy</h5>
                                    <span class="h2 font-weight-bold mb-0">99%</span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                                        <i class="fas fa-percent"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-3 mb-0 text-muted text-sm">
                                <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                <span class="text-nowrap">Since last month</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>    
    <div class="container-fluid mt--7">
         <div class="row">
        <div class="col-xl-8">
          <div class="card bg-default">
            <div class="card-header bg-transparent">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-light text-uppercase ls-1 mb-1">Overview</h6>
                  <h5 class="h3 text-white mb-0">Argon Effort vs Actual Effort (in PM)</h5>
                </div>
                <div class="col">
                  <ul class="nav nav-pills justify-content-end">
                    <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales-dark" data-update='{"data":{"datasets":[{"data":[0, 20, 10, 30, 15, 40, 20, 60, 60]}]}}' data-prefix="$" data-suffix="k">
                     
                    </li>
                    <li class="nav-item" data-toggle="chart" data-target="#chart-sales-dark" data-update='{"data":{"datasets":[{"data":[0, 20, 5, 25, 10, 30, 15, 40, 40]}]}}' data-prefix="$" data-suffix="k">
                      
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="card-body">
              <!-- Chart -->
              <div class="chart">
                <!-- Chart wrapper -->
                <canvas id="line-chart" class="chart-canvas text-white"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-4">
          <div class="card">
            <div class="card-header bg-transparent">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-uppercase text-muted ls-1 mb-1">Performance</h6>
                  <h5 class="h3 mb-0">MMRE(%) Comparison Of Various Models</h5>
                </div>
              </div>
            </div>
            <div class="card-body">
              <!-- Chart -->
              <div class="chart">
                <canvas id="bar-chart" class="chart-canvas"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
        </div>
        
    
    <!--Main layout-->
    <!-- <canvas id="bar-chart-grouped" width="800" height="450"></canvas> -->

</body>
 <!--Footer-->

        <footer class="footer">
    <div class="row" >
            <div class="col-lg-12 col-md-6 col-sm-12 order-01">
              <center >  Copyright © 2019<br> Design & Developed By <a href=""><strong>Hardik Chaturvedi</strong></a>.<br>   All Rights Reserved.</center>

            </div>
        </div>
</footer>
<!-- Footer -->
<script src="assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>  
<script src="assets/js/jquery.lavalamp.min.js"></script>
<script src="assets/js/jquery-scrollLock.min.js"></script>
<script src="assets/js/jquery.scrollbar.min.js"></script>
<script src="assets/plugins/toastr/toastr.min.js"></script>


 <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
    <script src="assets/vendor/chart.js/dist/Chart.extension.js"></script>
    <script src="assets/vendor/chart.js/dist/Chart.bundle.min.js"></script>

<!-- Argon JS -->
<script src="assets/js/argon.js"></script>
      </script>
      <script type="text/javascript">
        $(document).on('click','.log_out',function(e)
        {
          e.preventDefault();
          $.ajax
          ({
            url:'Admin/logout',
            dataType:'json',
            data:{log_out:true},
            method:'post',
            success:function(data)
            {
              window.location.href=data['msg'];
            },
            error:function(data)
            {
              console.log('Error in Ajax');
            }
          })
        })
      </script>
<script type="text/javascript">
    new Chart(document.getElementById("bar-chart-grouped"), {
    type: 'bar',
    data: {
      labels: ["1900", "1950", "1999", "2050"],
      datasets: [
        {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478]
        }, {
          label: "Europe",
          backgroundColor: "#8e5ea2",
          data: [408,547,675,734]
        }
      ]
    },
    options: {
      title: {
        display: true,
        text: 'Population growth (millions)'
      }
    }
});
</script>

<script>
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
                      labels: ["B.Cocomo", "I.Cocomo", "Baiely", "Doty", "Halsted","Argon"],
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
</script>

<?php 
}
else
{
    header('location:../Welcome/');
}
?>
