<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="includes/headSection.jsp"%>

</head>
<body>
	
	<script type="text/javascript">
		$(function() {
			$('#target_nav').affix({
				offset : {
					top : $('#target_nav').offset().top
				}
			});
			$('body').scrollspy({ 
				offset: $('#target_nav').height(),
				target: '#target_nav' 
			});
			$(".nav A").click(function(e) {
				e.preventDefault();
			    $('html, body').animate({
			    	scrollTop: $($(this).attr('href')).offset().top - $('#target_nav').height()
			    }, 1000);
			});
			
			//load recipes
			$('#recipes').load('recipes.html');
		});
		
	</script>
	
	<nav id="target_nav" class="navbar navbar-default">
		<div class="container">
			 <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
		      	data-target="#navbarCollapse" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"><img src="resources/images/logo.png" /></a>
		    </div>
		    
		    <div class="collapse navbar-collapse" id="navbarCollapse">
			    <ul class="nav navbar-nav" >
			    	<li><a href="#welcome">Home</a></li>
					<li><a href="#events" class="scrollclass">Events</a></li>
					<li><a href="#about" class="scrollclass">Contact Us</a></li>
					<li><a href="#staff" class="scrollclass">Staff</a></li>
					<li><a href="#results" class="scrollclass">Results</a></li>
					<li><a href="#recipes" class="scrollclass">Recipes</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li><a class="navbar-brand" href="tel:+15152708446">515-270-THIN (8446)</a></li>
			    </ul>
			</div>
		</div>
	</nav>
	
	<main class="col-md-9">
		<img class="building-image" src="resources/images/building.png" />
		<%@ include file="includes/welcome.jsp" %>
		<%@ include file="includes/events.jsp" %>
		<%@ include file="includes/about.jsp" %>
		<%@ include file="includes/staff.jsp" %>
		<%@ include file="includes/results3.jsp" %>
		<section id="recipes" class="container"></section>
	</main>
	<%@ include file="includes/instagramFeed.jsp" %>
	
	<%@ include file="includes/footer.jsp" %>
</body>
</html>