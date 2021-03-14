<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resource/common/authen.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body style="background-image: url(resource/client/images/bg.jpg);">
	<!-- Authen form -->
	<form action="login" method="post">
		<div class="auth-form" style="background-color: white;">
			<div class="auth-form-container">
				<div class="auth-form-header">
					<h3 class="auth-form-title">Login</h3>
					<a href="register" class="auth-form-subtitle">Register</a>
				</div>
				<p style="color: red; margin-top: -15px; margin-left: 3x; margin-bottom: 5px;">${err}</p>
				<div class="auth-form-form" style="margin-top: 15px;">
					<div class="auth-form-group">
						<input class="auth-form-input" type="text" name="account"
							placeholder="Email or Phone" required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" name="password"
							placeholder="Password" required="required" />
					</div>
					<div class="auth-form-group" style="display: flex; justify-content: space-between; margin-top: -10px; margin-bottom: 15px;">
						<div><input type="checkbox" name="remember" style="cursor: pointer;"/> Remember me</div>
						<div><a href="">Forgot password?</a></div>
					</div>
				</div>
	
				<div class="auth-form-controls">
					<a href="client/home" class="btn">Back</a>
					<button type="submit" class="btn" style="cursor: pointer;">Login</button>
				</div>
			</div>
			<div class="auth-form-social">
				<a href="#" class="btn-social-fb"><i class='fab' style="font-size: 20px;">&#xf09a;</i> Login with Facebook </a>
				<a href="#" class="btn-social-gg"><i class='fab' style='font-size:20px; color: tomato'>&#xf2b3;</i> Login with Google </a>
			</div>
		</div>
	</form>
</body>
</html>