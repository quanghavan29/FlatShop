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
<link href="../resource/client/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="../client/css/flexslider.css"
	type="text/css" media="screen" />
<link href="../resource/client/css/sequence-looptheme.css" rel="stylesheet"
	media="all" />
<link href="../resource/client/css/style.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>
<body id="home">
	<div class="wrapper">
		<%@include file="common/header.jsp"%>	

		<div class="container_fullwidth">
			<div class="container">

				<jsp:include page="common/hot.jsp"></jsp:include>

				<jsp:include page="common/featured.jsp"></jsp:include>
				
				<!-- 			<div th:replace="client/common/ourbands :: ourbands"></div> -->

			</div>
		</div>

		<%@include file="common/footer.jsp"%>
	</div>
	<!-- Bootstrap core JavaScript==================================================-->
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