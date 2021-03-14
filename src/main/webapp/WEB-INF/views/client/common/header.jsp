<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.png">
<title>Welcome to FlatShop</title>
<!-- <link href="client/css/bootstrap.css" rel="stylesheet"> -->
<!-- <link -->
<!-- 	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' -->
<!-- 	rel='stylesheet' type='text/css'> -->
<!-- <link href="client/css/font-awesome.min.css" rel="stylesheet"> -->
<!-- <link rel="stylesheet" href="client/css/flexslider.css" type="text/css" -->
<!-- 	media="screen" /> -->
<!-- <link href="client/css/sequence-looptheme.css" rel="stylesheet" -->
<!-- 	media="all" /> -->
<!-- <link href="client/css/style.css" rel="stylesheet"> -->
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>
<body id="home">
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<div class="logo">
						<a href="index.html"><img
							src="../resource/client/images/logo.png" alt="FlatShop"></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-10">
					<div class="header_top">
						<div class="row">
							<div class="col-md-3">
								<ul class="option_nav">
									<li class="dorpdown"><a href="#">Eng</a></li>
									<li class="dorpdown"><a href="#">USD</a></li>
								</ul>
							</div>
							<div class="col-md-6">
								<ul class="topmenu">
									<li><a href="#">About Us</a></li>
									<li><a href="#">News</a></li>
									<li><a href="#">Service</a></li>
									<li><a href="#">Recruiment</a></li>
									<li><a href="#">Media</a></li>
									<li><a href="#">Support</a></li>
								</ul>
							</div>
							<div class="col-md-3">
								<c:if test="${sessionScope.user == null}">
									<ul class="usermenu">
										<li><a href="../login" class="log">Login</a></li>
										<li><a href="../register" class="reg">Register</a></li>
									</ul>
								</c:if>

								<c:if test="${sessionScope.user != null}">
									<ul class="usermenu" style="display: flex;">   
										<li> <a href="profile"><img class="img-circle"
											src="../download?image=${sessionScope.user.avatar}"
											style="width: 26px; margin-top: -4px;">
											</a><a href="profile" style="margin-left: -22px;"><span style="margin-left: 5px; color: white; font-size: 14px;">${sessionScope.username}</span></a></li>    
										<li><i
											style="font-size: 22px; margin-top: -2px; color: #F7544A;"
											class="fa">&#xf011;</i> <a  
											style="position: absolute; margin-left: -18px;"
											href="../logout">Logout</a></li>  
									</ul>   
								</c:if>

							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="header_bottom">
						<ul class="option">
							<li id="search" class="search">
								<form action="search" method="get">
									<input class="search-submit" type="submit" value=""><input
										class="search-input" placeholder="Enter your search term..."
										type="text" value="" name="text">
								</form>
							</li>

							<li class="option-cart""><a href="cart"
								class="cart-icon">cart <span class="cart_no">${sessionScope.totalQuantity}</span></a></li>

							<!--                            <li class="option-cart" sec:authorize="isAuthenticated()">
                              <a th:href="@{/client/cart-load}" class="cart-icon">cart <span class="cart_no">02</span></a>
                           </li>
                            -->
						</ul>
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span><span
									class="icon-bar"></span><span class="icon-bar"></span><span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse">
							<ul class="nav">
								<li><a style="text-transform: none;" href="home">Home</a></li>
								<c:forEach items="${sessionScope.categories}" var="category">
									<li><a style="text-transform: none;"
										href="search?categoryId=${category.categoryId}">${category.categoryName}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript==================================================-->
<!-- 	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> -->
<!-- 	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script> -->
<!-- 	<script type="text/javascript" src="js/bootstrap.min.js"></script> -->
<!-- 	<script type="text/javascript" src="js/jquery.sequence-min.js"></script> -->
<!-- 	<script type="text/javascript" -->
<!-- 		src="js/jquery.carouFredSel-6.2.1-packed.js"></script> -->
<!-- 	<script defer src="js/jquery.flexslider.js"></script> -->
<!-- 	<script type="text/javascript" src="js/script.min.js"></script> -->
</body>
</html>