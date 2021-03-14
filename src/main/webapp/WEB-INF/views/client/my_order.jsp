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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>

<body id="home">
	<div class="wrapper">
		<jsp:include page="common/header.jsp" />
		<div class="clearfix"></div>
		<div class="container_fullwidth" style="margin-top: 0px;">
			<div class="container">
				<div class="container shopping-cart">
				<div class="row">
					<div class="col-md-3">
						<div class="get-newsletter leftbar" style="margin-top: 0px;">
							<h3 class="title">
								Get <strong> newsletter </strong>
							</h3>
							<p>Casio G Shock Digital Dial Black.</p>
							<form>
								<input class="email" type="text" name=""
									placeholder="Your Email..."> <input class="submit"
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
								<li class="steps active"><a href="my-order"><div
											class="step-title">01. MY ORDER</div></a>
									<table class="table table-striped" style="font-size: 15px;">
										<thead>
											<tr>
												<th>Order No.</th>
												<th>Amount</th>
												<th>Date &amp; Time</th>
												<th>Status</th>
												<th>Order Details</th>
												<th>Edit</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${orders}" var="order">
												<tr>
													<td><a href="#">No. ${order.orderId}</a></td>
													<td style="color: red; font-weight: bold;">$${order.priceTotal}0</td>
													<td>${order.buyDate}</td>
													<td><c:if test="${order.status == 'PENDING'}">
															<span class="label label-warning">${order.status}</span>
														</c:if> <c:if test="${order.status eq 'SUCCESS'}">
															<span class="label label-success">${order.status}</span>
														</c:if></td>
													<td><a href="order-details?orderId=${order.orderId}"
														style="color: blue; text-decoration: underline;">Details</a></td>
													<td>
													<c:if test="${order.status eq 'PENDING'}">
													<a href=""><i class="material-icons" style="color: #F7544A;">&#xe5c9;</i></a>
														</c:if>
														
														<c:if test="${order.status eq 'SUCCESS'}">
													<i style='font-size:24px; color: #5CB85C;' class='far'>&#xf058;</i>	
													</c:if>
														</td>
												</tr>
											</c:forEach>
										</tbody>
									</table></li>
								<li class="steps"><a href="profile"><div
											class="step-title">02. BILLING INFORMATION</div></a></li>
							</ol>
						</div>
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