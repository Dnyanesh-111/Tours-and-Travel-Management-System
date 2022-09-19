<?php
require_once('check_login.php');
?>
<?php include"header.php"?>
<!--  Author Name: Mayuri K. 
 for any PHP, Codeignitor or Laravel work contact me at mayuri.infospace@gmail.com  -->
<?php include"sidebar.php"?>
        
        <div class="page-wrapper">
            
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Add Vehical Details</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Vehicals</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            
            
            <div class="container-fluid">
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card card-outline-primary">
                            
                            <div class="card-body">
                              <form  action="operations/vehicals.php" method="post">
                                    <div class="form-body">
                                        <h3 class="card-title m-t-15">Vehical Info</h3>
                                        <hr>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Vehical Type </label>
                                                    <input type="text" class="form-control" name="vtype"   placeholder="Enter a username.." required>
                                                    </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Vehical No </label>
                                                    <input type="text" class="form-control" name="vno"   placeholder="Enter a username.." required>
                                                    </div>
                                            </div>
                                            
                                            
                                        </div>
                                        
                                        
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Seats</label>
                                                    <input type="number" class="form-control"  name="seats" placeholder="Enter number of seats" required>
                                                    </div>
                                            </div>
                                            
                                             
                                            
                                          
                                        </div> 

                                    </div>

                                        <button type="submit" class="btn btn-success" name="submit"> <i class="fa fa-check" ></i> Save</button>
                                        <a href="add_vehical.php"><button type="button" class="btn btn-inverse">Cancel</button></a>
                                    </div>
                                </form>
                            </div>
                        </div>
                
 </div>
</div>
</div>
        
<?php include "footer.php"?>