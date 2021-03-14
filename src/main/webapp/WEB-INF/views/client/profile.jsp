<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="../resource/client/images/favicon.png">
<title>Welcome to FlatShop</title>
<link href="../resource/client/css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="../resource/client/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../resource/client/css/flexslider.css"
	type="text/css" media="screen" />
<link href="../resource/client/css/sequence-looptheme.css"
	rel="stylesheet" media="all" />
<link href="../resource/client/css/style.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>

<body id="home">
	<div class="wrapper">
		<jsp:include page="common/header.jsp" />
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="get-newsletter leftbar" style="margin-top: 0px;">
							<h3 class="title">
								Get <strong> newsletter </strong>
							</h3>
							<p>Casio G Shock Digital Dial Black.</p>
							<form action="../get-news" method="post">
								<input class="email" type="text" name="email"
									placeholder="Your Email..." required="required"> <input class="submit"
									type="submit" value="Submit">
							</form>
						</div>
						<div class="leftbanner">
							<img src="../resource/client/images/vans.jpg" alt="">
						</div>
					</div>
					<div class="col-md-9">
						<div class="checkout-page">
							<ol class="checkout-steps">
								<li class="steps">
									<a href="my-order"><div class="step-title">01. MY ORDER</div></a>
								</li>
								<li class="steps active">
									<div style="display: flex;">
										<span class="step-title">02. Billing information </span>
										<c:if test="${messageError != null}">
											<span
												style="width: 90%; margin-top: 15px; font-size: 15px; color: red;">${messageError}</span>
										</c:if>
										<c:if test="${messageSuccess != null}">
											<span
												style="width: 100%; margin-top: 15px; font-size: 15px; color: green;">${messageSuccess}</span>
										</c:if>
									</div>
									<div class="step-description">
										<div class="row">
											<div class="col-md-6 col-sm-6">
												<form action="profile-update" method="post">
													<div class="your-details">
														<h5>Your Persional Details</h5>
														<input type="hidden" name="userId"
															value="${sessionScope.user.userId}" />
														<div class="form-row">
															<label class="lebel-abs"> Email <strong
																class="red"> * </strong>
															</label> <input type="email" class="input namefild" name="email"
																readonly="readonly" required="required"
																value="${sessionScope.user.email}" />
														</div>
														<div class="form-row">
															<label class="lebel-abs"> Full Name <strong
																class="red"> * </strong>
															</label> <input type="text" class="input namefild"
																name="fullname" value="${sessionScope.user.fullname}" />
														</div>
														<div class="form-row">
															<label class="lebel-abs"> Telephone <strong
																class="red"> * </strong>
															</label> <input type="text" class="input namefild" name="phone"
																required="required" value="${sessionScope.user.phone}">
														</div>
														<div class="form-row">
															<label class="lebel-abs"> Address <strong
																class="red"> * </strong>
															</label> <input type="text" class="input namefild" name="address"
																required="required" value="${sessionScope.user.address}">
														</div>
														<button type="submit">Update Your Information</button>
													</div>
												</form>
											</div>
											<div class="col-md-6 col-sm-6">
												<form action="change-password" method="post">
													<div class="your-details">
														<h5>Your Passowrd</h5>
														<div class="form-row">
															<label class="lebel-abs"> Your Old Password <strong
																class="red"> * </strong>
															</label> <input type="password" class="input namefild"
																name="oldpassword" required="required">
														</div>
														<div class="form-row">
															<label class="lebel-abs"> Your New Password <strong
																class="red"> * </strong>
															</label> <input type="password" class="input namefild"
																name="newpassword" required="required">
														</div>
														<div class="form-row">
															<label class="lebel-abs"> Confird Your Password <strong
																class="red"> * </strong>
															</label> <input type="password" class="input cpass"
																name="repassword" required="required">
														</div>
														<p class="privacy">
															<span class="text"> The password should be longer
																than 8 characters, to protect your account </span>
														</p>
														<button type="submit">Change Password</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</li>
							</ol>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
		<jsp:include page="common/footer.jsp" />
	</div>
	<script type="text/javascript"
		src="../resource/client/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/jquery.sequence-min.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script defer src="../resource/client/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/script.min.js"></script>
</body>

</html>