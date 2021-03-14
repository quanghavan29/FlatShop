<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- LEFT SIDEBAR -->
	<div th:fragment="category">
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll" style="padding-top: 20px;">
				<nav>
					<ul class="nav">
						<li><a href="home" class=""><i class="lnr lnr-home"></i> <span>Home</span></a></li>
						<li><a href="user-list" class=""><i class="lnr lnr-users"></i> <span>User</span></a></li>
						<li><a href="product-list" class=""><i class="lnr lnr-gift"></i> <span>Product</span></a></li>
						<li><a href="" class=""><i class="lnr lnr lnr-dice"></i>
								<span>Order</span></a></li>
						<li><a href="" class=""><i class="lnr lnr-store"></i> <span>Go
									to shop</span></a></li>
						<li><a href="" class=""><i class="lnr lnr-cog"></i> <span>Setting</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- END LEFT SIDEBAR -->
</body>
</html>