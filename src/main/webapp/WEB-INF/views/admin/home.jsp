<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/linearicons/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/chartist/css/chartist-custom.css'/>">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/main.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/demo.css'/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value='../resource/admin/assets/img/apple-icon.png'/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value='../resource/admin/assets/img/favicon.png'/>">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">

		<jsp:include page="common/header.jsp"></jsp:include>
		<%@include file="common/category.jsp"%>


		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<a class="metric-link" href="../admin/order-list" style="color: #676A6D;">
										<div class="metric" style="box-shadow: 0 0 3px;">
											<span class="icon"><i class="fa fa-shopping-cart"></i></span>
											<p>
												<span class="number">1,252</span> <span class="title">Order</span>
											</p>
										</div>
									</a>
								</div>
								<div class="col-md-3">
									<a class="metric-link" href="../admin/product-list"
										style="color: #676A6D;">
										<div class="metric" style="box-shadow: 0 0 3px;">
											<span class="icon"><i class="fab fa-product-hunt"
												style="font-size: 26px; margin-top: 12px;"></i></span>
											<p>
												<span class="number">203,764</span> <span class="title">Product</span>
											</p>
										</div>
									</a>
								</div>
								<div class="col-md-3">
									<a class="metric-link" href="user-list" style="color: #676A6D;">
										<div class="metric" style="box-shadow: 0 0 3px;">
											<span class="icon"><i
												style='font-size: 24px; margin-top: 2px;' class='fas'>&#xf0c0;</i></span>
											<p>
												<span class="number">505</span><span class="title">User</span>
											</p>
										</div>
									</a>
								</div>
								<div class="col-md-3">
									<div class="metric" style="box-shadow: 0 0 3px;">
										<span class="icon"><i class="fa fa-bar-chart"></i></span>
										<p>
											<span class="number">35%</span> <span class="title">Restore</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-9">
									<div class="panel">
										<div class="panel-heading">
											<h3 class="panel-title">Recent Purchases</h3>
											<div class="right">
												<button type="button" class="btn-toggle-collapse">
													<i class="lnr lnr-chevron-up"></i>
												</button>
												<button type="button" class="btn-remove">
													<i class="lnr lnr-cross"></i>
												</button>
											</div>
										</div>
										<div class="panel-body no-padding">
											<table class="table table-striped">
												<thead>
													<tr>
														<th>Order No.</th>
														<th>Name</th>
														<th>Amount</th>
														<th>Date &amp; Time</th>
														<th>Status</th>
														<th>Details</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${orders}" var="order">
														<tr>
															<td><a href="#">No. ${order.orderId}</a></td>
															<td>${order.userDTO.email.split("@")[0]}</td>
															<td>$${order.priceTotal}0</td>
															<td>${order.buyDate}</td>
															<c:if test="${order.status eq 'PENDING'}">
																<td><a href="order-updateHome?orderId=${order.orderId}"><span class="label label-warning">PENDING</span></a></td>
															</c:if>
															<c:if test="${order.status eq 'SUCCESS'}">
																<td><span class="label label-success">SUCCESS</span></td>
															</c:if>
															<td><a href="order-details?orderId=${order.orderId}" style="text-decoration: underline;">Details</a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<div class="panel-footer">
											<div class="row">
												<div class="col-md-6">
													<span class="panel-note"><i class="fa fa-clock-o"></i>
														Last 24 hours</span>
												</div>
												<div class="col-md-6 text-right">
													<a href="../admin/order-list" class="btn btn-primary">View All Purchases</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="headline-chart" class="ct-chart"></div>
								<div class="col-md-3">
									<div class="weekly-summary text-right">
										<span class="number">2,315</span> <span class="percentage"><i
											class="fa fa-caret-up text-success"></i> 12%</span> <span
											class="info-label">Total Sales</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">$5,758</span> <span class="percentage"><i
											class="fa fa-caret-up text-success"></i> 23%</span> <span
											class="info-label">Monthly Income</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">$65,938</span> <span class="percentage"><i
											class="fa fa-caret-down text-danger"></i> 8%</span> <span
											class="info-label">Total Income</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END OVERVIEW -->
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<jsp:include page="common/footer.jsp"></jsp:include>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
</body>
</html>