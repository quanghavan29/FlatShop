<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="shortcut icon" href="images/favicon.png"> -->
<!-- <title>Welcome to FlatShop</title> -->
<!-- <link href="../resource/client/css/bootstrap.css" rel="stylesheet"> -->
<!-- <link -->
<!-- 	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' -->
<!-- 	rel='stylesheet' type='text/css'> -->
<!-- <link href="../resource/client/css/font-awesome.min.css" -->
<!-- 	rel="stylesheet"> -->
<!-- <link rel="stylesheet" href="../client/css/flexslider.css" -->
<!-- 	type="text/css" media="screen" /> -->
<!-- <link href="../resource/client/css/sequence-looptheme.css" -->
<!-- 	rel="stylesheet" media="all" /> -->
<!-- <link href="../resource/client/css/style.css" rel="stylesheet"> -->
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>

<body id="home">
	<div class="hot-products">
		<h3 class="title">
			<strong>Hot</strong> Products
		</h3>
		<div class="control">
			<a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot"
				class="next" href="#">&gt;</a>
		</div>
		<ul id="hot">
			<li>
				<div class="row">
					<c:forEach items="${hotOne}" var="product">
						<div class="col-md-3 col-sm-6">
							<div class="products">
								<div class="offer">-${product.saleDTO.salePercent}%</div>
								<div class="thumbnail">
									<a href="product-details?productId=${product.productId}"><img
										style="width: 90%;" src="../download?image=${product.image}"
										alt="Product Name"></a>
								</div>
								<div class="productname">${product.productName}</div>

								<c:if test="${product.saleDTO.salePercent == 0}">
									<span class="price"
										style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">.</span>
									<span class="price">$${product.price - (product.price *
										product.saleDTO.salePercent / 100)}0</span>
								</c:if>

								<c:if test="${product.saleDTO.salePercent != 0}">
									<span class="price"
										style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">$${product.price}0</span>
									<span class="price">$${product.price - (product.price *
										product.saleDTO.salePercent / 100)}0</span>
								</c:if>
								<div class="button_group">
									<a class="button add-cart" type="button"
										href="add-to-cart?productId=${product.productId}">Add To
										Cart</a>

									<button class="button compare" type="button">
										<i class="fa fa-exchange"></i>
									</button>
									<button class="button wishlist" type="button">
										<i class="fa fa-heart-o"></i>
									</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</li>
			<li>
				<div class="row">
					<c:forEach items="${hotTwo}" var="product">
						<div class="col-md-3 col-sm-6">
							<div class="products">
								<div class="offer">-${product.saleDTO.salePercent}%</div>
								<div class="thumbnail">
									<a href="product-details?productId=${product.productId}"><img
										style="width: 90%;" src="../download?image=${product.image}"
										alt="Product Name"></a>
								</div>
								<div class="productname">${product.productName}</div>

								<c:if test="${product.saleDTO.salePercent == 0}">
									<span class="price"
										style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">.</span>
									<span class="price">$${product.price - (product.price *
										product.saleDTO.salePercent / 100)}0</span>
								</c:if>

								<c:if test="${product.saleDTO.salePercent != 0}">
									<span class="price"
										style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">$${product.price}0</span>
									<span class="price">$${product.price - (product.price *
										product.saleDTO.salePercent / 100)}0</span>
								</c:if>

								<div class="button_group">
									<a class="button add-cart" type="button"
										href="add-to-cart?productId=${product.productId}">Add To
										Cart</a>

									<button class="button compare" type="button">
										<i class="fa fa-exchange"></i>
									</button>
									<button class="button wishlist" type="button">
										<i class="fa fa-heart-o"></i>
									</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</li>
		</ul>
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