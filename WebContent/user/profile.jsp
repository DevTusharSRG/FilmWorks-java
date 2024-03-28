<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Filmworks</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">					
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">

		</head>
		<body>
            <section class="vh-100 gradient-custom" style="background-color:rgb(229, 252, 218)">
                <div class="container py-5 h-100">
                  <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                      <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5">
                          <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Your profile</h3>
                          <form>
              
                            <div class="row">
                              <div class="col-md-6 mb-4">
              
                                <div class="form-outline">
                                  <input type="text" id="name" name="name" class="form-control form-control-lg" />
                                  <label class="form-label" for="firstName">Name</label>
                                </div>
              
                              </div>
                              <div class="col-md-6 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input type="text" id="phoneNumber" name="phoneNumber" class="form-control form-control-lg" />
                                  <label class="form-label" for="phoneNumber">Phone Number</label>
                                </div>
              
                              </div>
                            </div>
              
                            <div class="row">
                              <div class="col-md-6 mb-4 d-flex align-items-center">
              
                                <div class="form-outline datepicker w-100">
                                  <input type="email" class="form-control form-control-lg" id="eml" name="email" />
                                  <label for="email" class="form-label">Email_ID</label>
                                </div>
              
                              </div>
                              <div class="col-md-6 mb-4">
              
                                <h6 class="mb-2 pb-1">Gender: </h6>
              
                                <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                                    value="option1" checked />
                                  <label class="form-check-label" for="femaleGender">Female</label>
                                </div>
              
                                <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                                    value="option2" />
                                  <label class="form-check-label" for="maleGender">Male</label>
                                </div>
              
                                <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
                                    value="option3" />
                                  <label class="form-check-label" for="otherGender">Other</label>
                                </div>
              
                              </div>
                            </div>
              
                            <div class="row">
                              <div class="col-lg-12 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input type="text" id="add" name="add" class="form-control form-control-lg" />
                                  <label class="form-label" for="Address">Address</label>
                                </div>
              
                              </div>
                              
                            </div>
                            <div class="row">
                              <div class="col-lg-12 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input type="password" id="pass" name="pass" class="form-control form-control-lg" />
                                  <label class="form-label" for="password">Password</label>
                                </div>
              
                              </div>
                              
                            </div>
                            <div class="row">
                              <div class="col-6">
              
                                <select class="select form-control-lg">
                                  <option value="" disabled>Choose option</option>
                                  <option value="worker">Worker</option>
                                  <option value="worker">Production Manager</option>
                                  
                                </select>
                                <label class="form-label select-label">Choose Type</label>
              
                              </div>
                              <div class="col-6">
              
                                <select class="select form-control-lg">
                                  <option value="" >Choose option</option>
                                  <option value="art_director">Art Director</option>
                                  <option value="costume-designer">Costume Designer</option>
                                  <option value="makeup_artist">Makeup Artist</option>
                                  <option value="spot_boy">Spot Boy</option>
                                  <option value="dop">Dop</option>
                                  <option value="lightman">Lightman</option>
                                  <option value="cameraman">Camera_man</option>
                                  <option value="driver">Driver</option>
                                </select>
                                <label class="form-label select-label">Choose Work</label>
              
                              </div>
                            </div>
              
                            <div class="mt-4 pt-2">
                              <center><input class="btn btn-primary btn-lg" type="submit" value="Edit" /></center>
                            </div>
              
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
  <script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>	
			<script src="js/imagesloaded.pkgd.min.js"></script>
			<script src="js/justified.min.js"></script>					
			<script src="js/jquery.sticky.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>			
			<script src="js/parallax.min.js"></script>		
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>