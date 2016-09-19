<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/logins.css" />"
	rel="stylesheet">
	</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="login" class="active" id="login-form">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="Register" id="register-form">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login" action="perform_login" method="post"
									 style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" required="true"  placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password"
											tabindex="2" required="true" class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember"
											id="remember"> <label for="remember">
											Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="log in" id="login" tabindex="4"
													class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									</form>
									
									 <!-- <div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div> 
							 -->
								<!-- <form id="register" action="http://phpoll.com/register/process" method="post" role="form" style="display: none;">
								 -->
								 <script>
$(function() {
	$("#Register").fadeOut(100);
	$('#register-form').removeClass('active');
    $('#login-form').click(function(e) {
		$("#login").delay(100).fadeIn(100);
 		$("#Register").fadeOut(100);
		$('#register-form').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form').click(function(e) {
		$("#Register").delay(100).fadeIn(100);
 		$("#login").fadeOut(100);
		$('#login-form').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
});
</script>
		 
								<c:url var="addAction" value="adduser"></c:url>
					
								<form:form id="Register" action="${addAction}" commandName="userDetails"
									method="post">
									<div class="form-group">
										<form:input path="name" type="text"
											class="form-control input-sm" placeholder="Name" pattern=".{5,15}"
											required="true" id="username" name="username" title="minimum length for name is 5" />
									</div>

									 <div class="form-group"> 
										<form:input path="userName" type="text"
											class="form-control input-sm" placeholder="Username" pattern=".{5,15}"
											required="true" id="username" name="username" title="minimum length for name is 5" />
									</div>

									<div class="form-group">
										<form:input path="email" type="email"
											class="form-control input-sm" placeholder="Email"
											required="true" id="email" name="email" />
									 </div>
									<div class="form-group">
										<form:input path="password" type="password"
											class="form-control input-sm" placeholder="password"
											required="true" id="password" name="password" />
									</div>
									<div class="form-group">
										<form:input path="mobile" type="mobile"
											class="form-control input-sm" placeholder="mobile"
											required="true" id="mobile" name="mobile" />
									</div>
 

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" id="Register" value="Register" tabindex="4"
													class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form:form>
							</div>
					 	</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	 
	</body>
</html>