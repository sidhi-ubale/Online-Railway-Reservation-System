<?php
    session_start();
    include('assets/inc/config.php');
    //date_default_timezone_set('Africa /Nairobi');
    include('assets/inc/checklogin.php');
    check_login();
    $aid=$_SESSION['emp_id'];
    if(isset($_POST['update_train']))
    {
            $id = $_GET['id'];
            $train_name = $_POST['train_name'];
            $train_no = $_POST['train_no'];
            $route = $_POST['route'];
            $journey_date = $_POST['journey_date'];
            $deptime = $_POST['deptime'];
            $arrtime = $_POST['arrtime'];
            $fare = $_POST['fare'];
            $passengers = $_POST['passengers'];
            //sql querry to post the entered information
            $query="update orrs_train set train_name= ?, train_no=?, route = ?, journey_date = ?, deptime = ?, arrtime = ?, fare = ?, passengers = ? where id = ?";
            $stmt = $mysqli->prepare($query);
            //bind this parameters
            $rc=$stmt->bind_param('ssssssssi', $name, $train_no, $route ,$journey_date ,$deptime, $arrtime, $fare, $passengers, $id);
            $stmt->execute();
                if($stmt)
                {
                    $succ = "Train Updated";
                }
                else 
                {
                    $err = "Please Try Again Later";
                }
            #echo"<script>alert('Your Profile Has Been Updated Successfully');</script>";
            }
?>
<!DOCTYPE html>
<html lang="en">
<!--Head-->
<?php include('assets/inc/head.php');?>
<!--End Head-->
  <body>
    <div class="be-wrapper be-fixed-sidebar ">
    <!--Navigation Bar-->
      <?php include('assets/inc/navbar.php');?>
      <!--End Navigation Bar-->

      <!--Sidebar-->
      <?php include('assets/inc/sidebar.php');?>
      <!--End Sidebar-->
      <div class="be-content">
        <div class="page-head">
          <h2 class="page-head-title">Manage Train</h2>
          <nav aria-label="breadcrumb" role="navigation">
            <ol class="breadcrumb page-head-nav">
              <li class="breadcrumb-item"><a href="pass-dashboard.php">Dashboard</a></li>
              <li class="breadcrumb-item"><a href="#">Trains</a></li>
              <li class="breadcrumb-item active">Manage Train</li>
            </ol>
          </nav>
        </div>
            <?php if(isset($succ)) {?>
                                <!--This code for injecting an alert-->
                <script>
                            setTimeout(function () 
                            { 
                                swal("Success!","<?php echo $succ;?>!","success");
                            },
                                100);
                </script>

        <?php } ?>
        <?php if(isset($err)) {?>
        <!--This code for injecting an alert-->
                <script>
                            setTimeout(function () 
                            { 
                                swal("Failed!","<?php echo $err;?>!","Failed");
                            },
                                100);
                </script>

        <?php } ?>
        <div class="main-content container-fluid">
       <!--Train Details forms-->
       <?php
            $aid=$_GET['id'];
            $ret="select * from orrs_train where id=?";
            $stmt= $mysqli->prepare($ret) ;
            $stmt->bind_param('i',$aid);
            $stmt->execute() ;//ok
            $res=$stmt->get_result();
            //$cnt=1;
            while($row=$res->fetch_object())
        {
        ?>
          <div class="row">
            <div class="col-md-12">
              <div class="card card-border-color card-border-color-success">
                <div class="card-header card-header-divider">Update Train<span class="card-subtitle"> Please Fill All Details</span></div>
                <div class="card-body">
                  <form method ="POST">
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3"> Train Name</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="train_name" value ="<?php echo $row->train_name;?>" id="inputText3" type="text">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3"> Train Number</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="train_no" value = "<?php echo $row->train_no;?>" id="inputText3" type="text">
                      </div>
                    </div>
                      <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3">Journey Date</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="journey_date" value = "<?php echo $row->journey_date;?>" id="inputText3" type="text">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3">Train Route</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="route"  value ="<?php echo $row->route;?>" id="inputText3" type="text">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3">Departure Time</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="deptime" value ="<?php echo $row->deptime;?>"  id="inputText3" type="text">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3">Arrival Time</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="arrtime" value ="<?php echo $row->arrtime;?>"  id="inputText3" type="text">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3">Number of passengers</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="passengers" value = "<?php echo $row->passengers;?>"  id="inputText3" type="text">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-12 col-sm-3 col-form-label text-sm-right" for="inputText3">Train Fare</label>
                      <div class="col-12 col-sm-8 col-lg-6">
                        <input class="form-control" name="fare" value = "<?php echo $row->fare;?>"  id="inputText3" type="text">
                      </div>
                    </div>
                    
                    <div class="col-sm-6">
                        <p class="text-right">
                          <input class="btn btn-space btn-success" value ="Update Train" name = "update_train" type="submit">
                          <button class="btn btn-space btn-danger">Cancel</button>
                        </p>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
       
        <!--End Train Instance-->
        <?php }?>
        
        </div>
        <!--footer-->
        <?php include('assets/inc/footer.php');?>
        <!--EndFooter-->
      </div>

    </div>
    <script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
    <script src="assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="assets/js/app.js" type="text/javascript"></script>
    <script src="assets/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="assets/lib/jquery.nestable/jquery.nestable.js" type="text/javascript"></script>
    <script src="assets/lib/moment.js/min/moment.min.js" type="text/javascript"></script>
    <script src="assets/lib/datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="assets/lib/select2/js/select2.min.js" type="text/javascript"></script>
    <script src="assets/lib/select2/js/select2.full.min.js" type="text/javascript"></script>
    <script src="assets/lib/bootstrap-slider/bootstrap-slider.min.js" type="text/javascript"></script>
    <script src="assets/lib/bs-custom-file-input/bs-custom-file-input.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      	App.formElements();
      });
    </script>
  </body>

</html>