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
		      <a class="navbar-brand" href="#">IdealTRANSFORMATION</a>
		    </div>
		    
		    <div class="collapse navbar-collapse" id="navbarCollapse">
			    <ul class="nav navbar-nav" >
			    	<li><a href="#welcome">Welcome</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#staff" class="scrollclass">Staff</a></li>
					<li><a href="#events" class="scrollclass">Events</a></li>
					<li><a href="#results" class="scrollclass">Results</a></li>
					<li><a href="#recipes" class="scrollclass">Recipes</a></li>
			    </ul>
			</div>
		</div>
	</nav>
	
	<section>
		<%@ include file="includes/welcome.jsp" %>
	</section>
	<section>
		<%@ include file="includes/about.jsp" %>
	</section>
	<section>
		<%@ include file="includes/instagramFeed.jsp" %>
	</section>
	<section>
		<%@ include file="includes/staff.jsp" %>
	</section>
	<section>		
		<%@ include file="includes/events.jsp" %>
	</section>
	<%-- <%@ include file="includes/results.jsp" %> --%>
	<section>
		<div id="recipes" class="container"></div>
	</section>
	
	<nav id="footer" class="navbar navbar-inverse navbar-fixed-bottom">
	  <div class="container">
	  	<div class="navbar-left">
		  	<p class="navbar-text">Copyright IdealTRANSFORMATION, 8230 Hickman Rd, Ste 400, Clive, IA 50325</p>
		  	<p class="navbar-text">Designed and built by <a href="email:paul.w.rowe@gmail.com">Paul Rowe</a></p>
	  	</div>
	  	
	  	<div class="navbar-right social-icons">
			<a href="http://www.facebook.com/idealtransformation?ref=hl" 
				target="_blank"><img src="resources/images/icons/FB-f-Logo__blue_29.png" /></a>
			<a href="http://twitter.com/idealDSM" 
				target="_blank"><img src="resources/images/icons/TwitterLogo_55acee_29.png" /></a>
			<a href="http://pinterest.com/dsmideal/boards/" 
				target="_blank"><img src="resources/images/icons/Pinterest_Badge_Red_29.png" /></a>
		</div>
	  </div>
	</nav>
</body>
</html>