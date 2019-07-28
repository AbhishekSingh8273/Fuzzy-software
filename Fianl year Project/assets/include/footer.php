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
        