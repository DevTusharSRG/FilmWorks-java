<%@ include file="ConnectionMaster.jsp"%>
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
		<body style="background-color:rgb(229, 252, 218)">
            <section class="vh-100 gradient-custom" >
                <div class="container py-5 h-100">
                  <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                      <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5">
                          <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Application Form</h3>
                          <div class="row">
                              
                            <div class="col-lg-12 mb-4 pb-2">
                          	Select an image to upload:<br />
							<form action="upload.jsp" method="post" encrypt="multipart/form-data">
							<input type="file" name="file" size="50" />
							
							<input class="btn btn-primary btn-lg" type="submit" value="Upload" />
							<br>
							</form>
							</div>
							</div>
                          <form method="post">
                            <div class="row">
                              
                                <div class="col-lg-12 mb-4 pb-2">
                
                                  <div class="form-outline">
                                    <input type="text" id="title" name="title" class="form-control form-control-lg" />
                                    <label class="form-label" for="name">Title</label>
                                  </div>
                
                                </div>
                              </div>

                            
              
                            <div class="row">
                                <div class="col-lg-12 mb-4 pb-2">
              
                                    <div class="form-outline">
                                      <input type="text" id="date" name="date" class="form-control form-control-lg" />
                                      <label class="form-label" for="add">Last Date</label>
                                      
                                    </div>
                                  </div>                
                            </div>
                            
                            <div class="row">
                              
                                <div class="col-lg-12 mb-4 pb-2">
                
                                  <div class="form-outline">
                                    <input type="text" id="desc" name="desc" class="form-control form-control-lg" />
                                    <label class="form-label" for="desc">Description</label>
                                  </div>
                
                                </div>
                              </div>
                              
                            <div class="mt-4 pt-2">
                             <center><input class="btn btn-primary btn-lg" name="btnsub" type="submit" value="Apply" /></center>
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
	
	<% try{
	if(request.getParameter("btnsub")!=null)
	{
		System.out.println("Inserting data...");
		String tl,dt,im,rdt="",dec;
		int id = 1;
		tl=request.getParameter("title");
		dt=request.getParameter("date");
		dec=request.getParameter("desc");
		im=(String)session.getAttribute("filepath");
		PreparedStatement pst=cn.prepareStatement("insert into Application values(?,?,?,?,?,?)");
		pst.setInt(1,id);
		pst.setString(2, tl);
		pst.setString(3, dt);
		pst.setString(4, im);
		pst.setString(5, dec);
		pst.setString(6, rdt);
	
		int ans=pst.executeUpdate();
		
		if(ans!=0) {
			out.print("<script>alert('Applied Successful')</script>");
		}
		else {
			out.print("<script>alert('Problem Occured!')</script>");
		}
	}
	            } 
	            catch (Exception e) {
	            	e.printStackTrace();
	            }
%>
	