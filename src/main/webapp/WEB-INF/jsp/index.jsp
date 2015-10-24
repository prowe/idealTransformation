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
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/images/carousel/IMG_8734.JPG" style="width: 100%;" class="flip-vertical"/>
				</div>
				<div class="item">
					<img src="resources/images/carousel/IMG_8731.JPG" style="width: 100%;"  class="flip-vertical"/>
				</div>
				<div class="item">
					<img src="resources/images/carousel/IMG_8738.JPG" style="width: 100%;" class="flip-vertical" />
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
		<p>Ideal Transformation is a weight loss center serving the Des Moines metro area. We offer the highest quality products available, individualized programs, and personalized support for your weight loss journey.  We are centrally located at the corner of 82nd & Hickman Road in Clive, IA. Start your transformation today with a little help from a friend.</p>
		<p>Ideal Transformation is an authorized center for the Ideal Protein Weight Loss Method.</p>
		
		<a href="about.html"  class="btn btn-primary btn-learn-more">learn more</a>
	</section>
<%-- 
	<section class="col-md-9">
			<h2>Welcome</h2>
			<p>Established in 2011, Ideal Transformation is a health and
				wellness center creating life-changing transformations, one unique
				experience at a time! Identify and implement a sustainable Health,
				Wellness, or Weight Loss Program that leads to success and long-term
				results.</p>
		
			<div class="row ">
				<div class="col-xs-6" style="text-align: right;">
					<strong>i•de•al</strong><br />tailor-made
				</div>
				<div class="col-xs-6">
					<strong>trans•for•ma•tion</strong><br />life changing experience
				</div>
			</div>
		</section>
		<%@ include file="includes/instagramFeed.jsp" %>
	
	--%>
	</main>
	
	<%@ include file="includes/footer.jsp" %>
</body>
</html>