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
                          <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Login Form</h3>
                          <form>
              
                            <div class="row">
                              
                              <div class="col-lg-12 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input type="text" id="phoneNumber" name="phoneNumber" class="form-control form-control-lg" />
                                  <label class="form-label" for="phoneNumber">Phone Number</label>
                                </div>
              
                              </div>
                            </div>
              
                            <div class="row">
                                <div class="col-lg-12 mb-4 pb-2">
              
                                    <div class="form-outline">
                                      <input type="password" id="password" name="password" class="form-control form-control-lg" />
                                      <label class="form-label" for="password">Password</label>
                                      
                                    </div>
                                  </div>                
                            </div>
                            <a href="signup.jsp">Create a new account</a>
                            
                            <div class="mt-4 pt-2">
                             <center><input class="btn btn-primary btn-lg" name="btnsub" type="submit" value="Login" /></center>
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
	
	<%

if(request.getParameter("btnsub")!=null)
{
	String con,pass;
	con=request.getParameter("phoneNumber");
	pass=request.getParameter("password");
	PreparedStatement pst=cn.prepareStatement("select * from register where Phone=? and password=?");
	pst.setString(1, con);
	pst.setString(2, pass);
	ResultSet rs=pst.executeQuery();
	if(rs.next()){
		session.setAttribute("emailid",con);
		response.sendRedirect("user/index.jsp");
	}
	else{
		out.println("<font color:red>Invalid username and password</font>");
	}
}
%>