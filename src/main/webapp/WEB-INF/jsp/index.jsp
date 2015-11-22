<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="includes/headSection.jsp" %>

<title>Ideal Transformation</title>
<style type="text/css">
	/* start page specific */
	#welcome-img-container img{
		width: 100%;
		height: 200px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="includes/headerBanner.jsp" %>
		<div class="row" id="welcome-img-container">
			<!--<img src="resources/images/building.png" /> -->
		</div>
		<%@ include file="includes/nav.jsp" %>
	</header>
	<main class="row">
		<section class="col-md-8">
			<div id="home-carousel" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#home-carousel" data-slide-to="0"
						class="active"></li>
					<li data-target="#home-carousel" data-slide-to="1"></li>
					<li data-target="#home-carousel" data-slide-to="2"></li>
					<li data-target="#home-carousel" data-slide-to="3"></li>
					<li data-target="#home-carousel" data-slide-to="4"></li>
				</ol>
	
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="resources/images/pictures/farmers_market.jpg" style="width: 100%;" />
					</div>
					<div class="item">
						<img src="resources/images/pictures/radish.jpg" style="width: 100%;"  />
					</div>
					<div class="item">
						<img src="resources/images/pictures/cabbage.png" style="width: 100%;" />
					</div>
					<div class="item">
						<img src="resources/images/pictures/quote.png" style="width: 100%;" />
					</div>
					<div class="item">
						<img src="resources/images/pictures/well_presented_meal.png" style="width: 100%;" />
					</div>
				</div>
	
				<!-- Controls -->
				<a class="left carousel-control" href="#home-carousel"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#home-carousel"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</section>
		<section class="col-md-4">
			<h4>IDEAL TRANSFORMATION</h4>
			<p>Ideal Transformation is a health, wellness, and weight loss center serving the greater Des Moines metro area. We offer individualized programs, cutting edge products, and personal support throughout your weight loss journey.  You want results and we’re here to offer sustainable solutions to last a lifetime.  We’ll work with you to match your lifestyle and personal preferences with a plan that will result in your own transformation.</p>
			<p>We are centrally located at the corner of 82nd and Hickman Road in Clive, IA.  Don’t let another day, month, or year pass you by… <a href="contactUs.html">Contact</a> us today and let’s get started!</p>
		</section>
	</main>
	
	<%@ include file="includes/footer.jsp" %>
</body>
</html>