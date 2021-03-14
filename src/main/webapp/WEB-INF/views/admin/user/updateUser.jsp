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
<link rel="stylesheet" type="text/css"
	href="<c:url value='../resource/css/style.css'/>">
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">

		<jsp:include page="../common/header.jsp" />

		<jsp:include page="../common/category.jsp" />

		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading"
							style="display: flex; justify-content: space-between;">
							<h3 class="panel-title">UPDATE ACCOUNT</h3>
							<span style="color: red; font-weight: bold; font-size: 18px;">${message}</span>
							<a class="btn btn-warning" href="user-list"
								style="background-color: #D9534F; padding: 2px 10px; text-decoration: none; border: none; margin-right: 10px; height: 25px;">Back</a>
						</div>
						<form action="user-update" method="post"
							enctype="multipart/form-data">
							<div class="row"
								style="display: flex; justify-content: space-between;">
								<table
									style="margin: auto; margin-left: 45px; margin-right: 50px;"
									class="col-md-6">
									<tr>
										<th>Email:</th>
										<td><input required="required" type="email"
											class="form-control" style="height: 30px;"
											placeholder="Your Email..." name="email"
											value="${user.email}" readonly="readonly"/>
											<input type="hidden" name="userId" value="${user.userId}"/>
											</td>
									</tr>
									<tr>
										<th>Full name:</th>
										<td><input type="text" class="form-control"
											style="height: 30px;" placeholder="Your name..."
											name="fullName" value="${user.fullname}" /></td>
									</tr>
									<tr>
										<th>Gender:</th>
										<td><input type="radio" name="gender" value="true"
											style="cursor: pointer;"
											<c:if test="${user.gender eq 'true'}">
											 checked="checked"
											</c:if> />
											<span style="margin-right: 100px;">Male</span> <input
											type="radio" name="gender" value="false"
											style="cursor: pointer;"
											<c:if test="${user.gender eq 'false'}">
											 checked="checked"
											</c:if> />
											Female</td>
									</tr>
									<tr>
										<th>Phone number:</th>
										<td><input required="required" type="text"
											class="form-control" style="height: 30px;"
											placeholder="Your phone number..." name="phone"
											value="${user.phone}" /></td>
									</tr>
									<tr>
										<th>Address:</th>
										<td><textarea required="required" class="form-control"
												placeholder="Your address..." rows="4" name="address">${user.address}</textarea></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
								<table style="margin: auto; margin-right: 30px;"
									class="col-md-6">
									<tr>
										<th>ROLE:</th>
										<td><select name="roleId">
												<c:forEach items="${roles}" var="role">
													<option value="${role.roleId}"
														<c:if test="${user.roleDTO.roleId == role.roleId}">
														selected="selected"
														</c:if>>${role.roleName}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>Avatar:</th>
										<td style="display: flex;"><c:if test="${user.avatar != null}">
												<img src="../download?image=${user.avatar}" alt="Avatar"
													class="avatar img-circle" style="width: 15%;">
											</c:if> <input type="file" name="avatarFile" style="margin-left: 5px; margin-top: 30px;"/>
											<input type="hidden" name="avatar" value="${user.avatar}"/>	
										</td>
									</tr>
									<tr>
										<th>Password:</th>
										<td><input type="password"
											class="form-control" style="height: 30px;"
											placeholder="Your password..." name="password" /></td>
									</tr>
									<tr>
										<th>Re-password:</th>
										<td><input type="password"
											class="form-control" style="height: 30px;"
											placeholder="Re-password..." name="repassword" /></td>
									</tr>
									<tr>
										<th></th>
										<td>
											<button type="submit" class="btn btn-primary"
												style="font-weight: bold;">UPDATE</button>
										</td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
							</div>
						</form>
					</div>

				</div>
				<div id="headline-chart" class="ct-chart"></div>
			</div>

			<!-- END OVERVIEW -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">
					&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme
						I Need</a>. All Rights Reserved.
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script>
            let userSelection = document.getElementsByClassName('checkbox');
            let checkAll = document.getElementById('checkAll')


            checkAll.addEventListener('click', () => {
                if (checkAll.checked == true) {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = true
                    }
                } else {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = false
                    }
                }

            })
   </script>
</body>
</body>
</html>