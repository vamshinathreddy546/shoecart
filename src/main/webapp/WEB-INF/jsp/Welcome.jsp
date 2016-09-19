<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style>
ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.menu {
	display: flex;
	justify-content: space-around;
}

li {
	hover: none;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 50%;
	margin: 0 auto;
}

footer {
	background: #333333;
	width: 100%;
	overflow: hidden;
	opacity: 0.90;
}

footer p, footer h3 {
	color: #FFF;
}

footer p a {
	color: #FFF;
	text-decoration: none;
}

ul.social li {
	display: inline;
}

ul.social li img {
	height: 50px;
}

footer.second {
	border-top: 1px solid #4D4E50;
	background-color: #333333;
	max-height: 50px;
	text-align: center;
	opacity: 0.90;
}
</style>
<meta charset="ISO-8859-1">
<title>shop cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
<link
	href="<c:url value="/resources/css/footer-distributed-with-address-and-phones.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/registers.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/logins.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="w3-top">
		<nav>
			<ul class="w3-navbar w3-red w3-card-2 w3-medium "
				style="opacity: 0.9">
				<li><a href="Welcome" class="w3-hover-none"><i
						class="fa fa-home"></i> SHOPCART </a></li>
				<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="perform_logout"
							class="w3-hover-none"><i class="fa fa-sign-out"></i></a></li>
						<c:choose>
							<c:when test="${!Administrator}">
								<li style="float: right"><a href="viewcart"
									class="w3-hover-none"><i class="fa fa-shopping-cart"></i>(${cartsize})</a></li>
							</c:when>
						</c:choose>

						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</c:when>

					<c:otherwise>
						<!-- <li style="float: right"><a href="Register"
							class="w3-hover-none"><i class="fa fa-user-plus"></i></a></li> -->
						<li style="float: right"><a href="login"
							class="w3-hover-none"><i class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose>
			</ul>

	
			<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
				<div>
					<ul
						class="w3-navbar w3-cyan w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top:-2px;">
						<c:forEach items="${categoryList}" var="category">
							<li><a href="view/${category.id}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
						
					</ul>
				</div>
			</c:if>	
		</c:when>	
				
				<c:when test="${Administrator}">
					<ul
						class="w3-navbar w3-light-pink w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top: -2px;">
						<li><a href="product" class="w3-hover-none"><i
								class="fa fa-list" aria-hidden="true"></i> Products</a></li>
						<li><a href="category" class="w3-hover-none"><i
								class="fa fa-list" aria-hidden="true"></i> Category</a></li>
						<li><a href="supplier" class="w3-hover-none"><i
								class="fa fa-list" aria-hidden="true"></i> Supplier</a></li>
					</ul>
				</c:when>
			</c:choose>
		</nav>
	</div>
	<c:choose>
		<c:when test="${IfViewCartClicked}">
			<c:import url="/WEB-INF/jsp/cart.jsp">
			</c:import>
		</c:when>
		<c:when test="${IndividualItemClicked}">
			<c:import url="/WEB-INF/jsp/IndividualItem.jsp">
			</c:import>
		</c:when>

		<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/jsp/Payment.jsp">
			</c:import>
		</c:when>
	</c:choose>
	<!-- Category List End -->
	<c:choose>
		<c:when test="${IfLoginClicked}">
			<c:import url="/WEB-INF/jsp/logins.jsp">
			</c:import>
		</c:when>

		<c:when test="${IfRegisterClicked}">
			<c:import url="/WEB-INF/jsp/logins.jsp">
			</c:import>
		</c:when>
		<c:when test="${ViewCategoryClicked}">
			<c:import url="/WEB-INF/jsp/viewitem.jsp">
			</c:import>
		</c:when>
	</c:choose>

	<c:choose>
		<c:when test="${ProductPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${CategoryPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminCategory.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${SupplierPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminSupplier.jsp"></c:import>
		</c:when>
	</c:choose>

	<!-- carousel -->
	<c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
				<div>
					<div id="carousel-home" class="carousel slide">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li class=" item1 active"></li>
							<li class="item2"></li>
							<li class="item3"></li>
							<li class="item4"></li>
							<li class="item5"></li>
							<li class="item6"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img
									src="<c:url value="/resources/images/corousel/1.jpeg"></c:url>"
									alt="Apple">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item ">
								<img
									src="<c:url value="/resources/images/corousel/2.jpeg"></c:url>"
									alt="Apple">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="/resources/images/corousel/3.jpeg"></c:url>"
									alt="Sony">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="/resources/images/corousel/4.jpeg"></c:url>"
									alt="HP">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="/resources/images/corousel/5.jpeg"></c:url>"
									alt="Dell">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="/resources/images/corousel/6.jpeg"></c:url>"
									alt="Dell">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" role="button"
							href="#carousel-home" style="color: black"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control " href="#carousel-home"
							role="button" style="color: black"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</c:if>
		</c:when>
	</c:choose>
	<!-- Corousel End -->
	<c:if test="${empty HideOthers}">
	
	<div class="class-distributed w3-card-1 w3-white w3-margin-0"></div>
		<div class="row  w1-red " style="padding-left: 40px; opacity: 0.1">
			<h5>NEW Items</h5>
		</div> 
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList6}">
					<div>
						<!-- <ul> -->
						<div class="row w3-card-8 "
							style="padding-top: 20px; padding-botton: 20px; padding-left: 20px; padding-bottom: 20px;">
							<!-- <h3 style="margin-left: 15px">Latest Products</h3> -->
							<c:forEach items="${productList6}" var="product">
								<div class="col-xs-2 ">
									<div class="img">
										<img height="192px" width="192px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="desc">
											<p>
												${product.name}<br> <i class="fa fa-inr"
													aria-hidden="true"></i> ${product.price}
												 <%-- <c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
															<input type="number" value="1" name="quantity"
																class="btn btn-xs btn-primary   col-xs-6 "> <input
																type="submit" value="Add"
																class="btn btn-xs col-xs-6 btn-primary">
														</form>
													</c:when>
												</c:choose> --%>
											</p>

										</div>
									</div>
								</div>
								</c:forEach>
						</div>
						
				</c:if>
			</c:when>
		</c:choose>
	</c:if>
</div>

	<footer class="footer-distributed w3-card-4 w3-red w3-margin-0"
		style="opacity: 0.9">
		<div class="footer-left">
			<h3>
				<b>SHOPCART</b>
			</h3>
			<p>
				<b>211-2221-123242</b><br>KUKATPALLY<br> 501203<br>
				vamshinath.231@gmail.com<br>
			</p>
		</div>
		<div class="footer-center">
			<h3>Keep in touch with us</h3>
			<ul class="social">
				<li><a href="https://www.facebook.com/"><img
						src="http://www.w3newbie.com/wp-content/uploads/facebook.png" /></a></li>
				<li><a href="https://www.youtube.com/"><img
						src="http://www.w3newbie.com/wp-content/uploads/youtube.png" /></a></li>
				<li><a href="https://www.twitter.com/"><img
						src="http://www.w3newbie.com/wp-content/uploads/twitter.png" /></a></li>
			</ul>
		</div>

		<div class="footer-right">
			<p class="footer-company-about">
				<%-- <img src="<c:url value="/resources/images/corousel/images.jpg"></c:url>"
					alt="Sony">  --%>
			<p>
				shopcart <i class="fa fa-copyright" aria-hidden="true">
					2016-2020</i>
			</p>

		</div>
	</footer>
	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#carousel-home").carousel();
			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#carousel-home").carousel(0);
			});
			$(".item2").click(function() {
				$("#carousel-home").carousel(1);
			});
			$(".item3").click(function() {
				$("#carousel-home").carousel(2);
			});
			$(".item4").click(function() {
				$("#carousel-home").carousel(3);
			});
			$(".item5").click(function() {
				$("#carousel-home").carousel(4);
			});
			$(".item6").click(function() {
				$("#carousel-home").carousel(5);
			});
			// Enable Carousel Controls
			$(".left").click(function() {
				$("#carousel-home").carousel("prev");
			});
			$(".right").click(function() {
				$("#carousel-home").carousel("next");
			});
		});
	</script>
	<!-- Carousel Script End  -->


</body>
</html>