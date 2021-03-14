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

		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="products-details">
							<div class="preview_image">
								<div class="preview-small">
									<img src="../download?image=${product.image}" alt=""
										style="margin-left: 35px; width: 78%; margin-top: 2px;">
								</div>
								<div class="offer">-${product.saleDTO.salePercent}%</div>
								<div class="thum-image">
									<ul id="gallery_01" class="prev-thum">
										<c:forEach begin="1" end="5">
											<li><a
												href="#"> <img
													src="../download?image=${product.image}" alt="">
											</a></li>
										</c:forEach>
									</ul>
									<a class="control-left" id="thum-prev"
										href="javascript:void(0);"> <i class="fa fa-chevron-left">
									</i>
									</a> <a class="control-right" id="thum-next"
										href="javascript:void(0);"> <i class="fa fa-chevron-right">
									</i>
									</a>
								</div>
							</div>
							<div class="products-description">
								<h5 class="name" style="font-size: 24px;">${product.productName}</h5>
								<p>
									<img alt="" src="../resource/client/images/star.png"> <a class="review_num"
										href="#"> 02 Review(s) </a>
								</p>
								<p>
									Availability: <span class=" light-red" > In Stock </span>
								</p>
								<p style="padding-top: 3px; font-size: 18px;">${product.description}</p>
								<hr class="border">
								<div class="price">
									Price : <span class="new_price">
										<sup> $${product.price - (product.price * product.saleDTO.salePercent / 100)}0 </sup>
									</span> <span class="old_price"><sup>
											$${product.price}0  </sup> </span>
								</div>
								<hr class="border">
								<form action="add-to-cart" method="post">
									<div class="wided">
										<div class="qty">
											Qantity &nbsp;&nbsp;: <select name="quantity">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select> <input type="hidden" name="productId"
												value="${product.productId}"/>
										</div>
										<div class="button_group">

											<a href="#"><button
													class="button">Add To Cart</button></a>
											<button class="button favorite">
												<i class="fa fa-heart-o"> </i>
											</button>
											<button class="button favorite">
												<i class="fa fa-envelope-o"> </i>
											</button>
										</div>
									</div>
								</form>
								<div class="clearfix"></div>
								<hr class="border">
								<img src="../resource/client/images/share.png" alt="" class="pull-right">
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-3">
						<div th:replace="client/common/special :: special"></div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
						<div class="others leftbar">
							<h3 class="title">Others</h3>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
						<div class="leftbanner">
							<img src="../resource/client/images/vans.jpg" alt="">
						</div>
						<div class="clearfix"></div>
					</div>


					<div th:replace="client/common/new :: new"></div>
				</div>

				<!-- 			<div th:replace="client/common/ourbands :: ourbands"></div> -->

			</div>
		</div>

		<jsp:include page="common/footer.jsp"/>
	</div>
	<script type="text/javascript" src="../resource/client/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="../resource/client/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="../resource/client/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/jquery.sequence-min.js"></script>
	<script type="text/javascript"
		src="../resource/client/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script defer src="../resource/client/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="../resource/client/js/script.min.js"></script>
</body>

</html>