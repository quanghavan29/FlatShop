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
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>
<body id="home">
	<div class="wrapper">
		<jsp:include page="common/header.jsp" />

		<div class="container_fullwidth">
			<div class="container">


				<div class="clearfix"></div>
				<div class="container_fullwidth">
					<div class="container shopping-cart">
						<div class="row">
							<div class="col-md-12">
								<h3 class="title">Shopping Cart</h3>
								<div class="clearfix"></div>
								<table class="shop-table">
									<thead>
										<tr>
											<th>Image</th>
											<th>Details</th>
											<th>Price</th>
											<th>Quantity</th>
											<th>Total Amount</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${sessionScope.cart}" var="cart">
											<tr>
												<td><a href="product-details?productId=${cart.value.productDTO.productId}"><img
														src="../download?image=${cart.value.productDTO.image}"
														alt=""></a></td>
												<td>
													<div class="shop-details">
														<div class="productname">${cart.value.productDTO.productName}</div>
														<p>
															<img alt="" src="../resource/client/images/star.png">
															<a class="review_num" href="#"> 02 Review(s) </a>
														</p>

														<p>${product.description}</p>
														<p>
															Sale : <strong class="pcode">-${cart.value.productDTO.saleDTO.salePercent}%</strong>
														</p>
														<p>
															Product Code : <strong class="pcode">${cart.value.productDTO.productId}</strong>
														</p>
													</div>
												</td>
												<td>
													<h5 style="color: #41B314; font-weight: bold;">$${cart.value.unitPrice}0</h5>
													<c:if
														test="${cart.value.productDTO.saleDTO.salePercent > 0}">
														<p
															style="font-size: 16px; padding-top: 7px; text-decoration: line-through;">$${cart.value.productDTO.price}0</p>
													</c:if>
												</td>
												<td>
													<form action="add-to-cart" method="post">
														<select name="quantity" onchange="this.form.submit()">
															<c:forEach begin="1" end="5" var="i">
																<option
																	<c:if test="${cart.value.quantity == i}">
														selected="selected"
														</c:if>
																	value="${i}">${i}</option>
															</c:forEach>
															<input type="hidden"
															value="${cart.value.productDTO.productId}"
															name="productId" />
														</select>
													</form>
												</td>
												<td>
													<h5>
														<strong class="red" style="font-weight: bold;">
															$${Math.round(cart.value.unitPrice) *
															cart.value.quantity}.00 </strong>
													</h5>
												</td>
												<td><a
													href="delete-from-cart?productId=${cart.value.productDTO.productId}">
														<i class="material-icons">&#xe92b;</i>
												</a></td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="6"><a href="home"><button
														class="pull-left">Continue Shopping</button></a>
												<button class=" pull-right">Update Shopping Cart</button></td>
										</tr>
									</tfoot>
								</table>
								<div class="clearfix"></div>
								<div class="row">
									<div class="col-md-4 col-sm-6">
										<div class="shippingbox">
											<h5>Estimate Shipping And Tax</h5>
											<label> Address * </label> <input type="text" name=""
												value="${sessionScope.user.address}" style="color: red;"
												readonly="readonly" /> <label> Phone number * </label> <input
												type="text" name="" value="${sessionScope.user.phone}"
												style="color: red;" readonly="readonly" /> <label>
												Change of shipping address * </label>
											<c:if test="${sessionScope.user != null}">
												<a href="profile"><button>Go To Profile</button></a>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 col-sm-6">
										<div class="shippingbox">
											<h5>Discount Codes</h5>
											<form>
												<label> Enter your coupon code if you have one </label> <input
													type="text" name=""
													value="There are currently no discount codes."
													style="color: red;" readonly="readonly" />
												<div class="clearfix"></div>
												<button>Get A Qoute</button>
											</form>
										</div>
									</div>
									<div class="col-md-4 col-sm-6">
										<div class="shippingbox">
											<div class="subtotal">
												<h5>Sub Total:</h5>
												<span>$${sessionScope.subTotal}0</span>
											</div>
											<div class="subtotal">
												<h5>Shipping Fee:</h5>
												<span> $5.00 </span>
											</div>
											<div class="grandtotal">
												<h5>GRAND TOTAL</h5>
												<span>$${sessionScope.grandTotal}0</span>
											</div>
											<c:if test="${sessionScope.user != null}">
												<c:if
													test="${sessionScope.user.address == null || sessionScope.user.phone == null}">
													<a href="profile-from-cart"><button>Process To
															Checkout</button></a>
												</c:if>
												<c:if
													test="${sessionScope.user.address != null && sessionScope.user.phone != null && sessionScope.grandTotal > 5}">
													<form action="checkout" method="post">
														<button type="submit">Process To Checkout</button>
													</form>
												</c:if>
											</c:if>
											<c:if test="${sessionScope.user == null}">
												<a href="../login"><button>Process To Checkout</button></a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 			<div th:replace="client/common/ourbands :: ourbands"></div> -->

			</div>
		</div>

		<jsp:include page="common/footer.jsp" />
	</div>
	<!-- Bootstrap core JavaScript==================================================-->
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