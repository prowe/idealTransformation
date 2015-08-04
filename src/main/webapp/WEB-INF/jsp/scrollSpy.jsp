<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="includes/headSection.jsp"%>

<style>
div#scroll-able {
	/*height: 400px;*/
	/*overflow: scroll;*/
}
#target_nav {
	background-color: white;
}
.affix, .affix-top {
	top: 0;
	width: 100%;
	position: fixed;
	z-index: 1000;
}
.active {
	font-weight: bold;
}
body {
}
</style>


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
		});
		
	</script>
	
	<!-- <div class="container" id="introText">
	<p>
		orem ipsum dolor sit amet, consectetur adipiscing elit. In
				gravida bibendum mauris vitae tincidunt. Vestibulum feugiat odio
				ipsum, non euismod elit luctus vel. Donec eros libero, porta id nunc
				nec, mattis efficitur eros. Donec ac sodales augue. Duis tincidunt,
				nulla sit amet varius luctus, lacus neque sagittis orci, vitae
				pellentesque leo diam a felis. Vivamus eu mi ut augue imperdiet
				posuere. Aliquam diam lacus, euismod sed blandit a, dictum laoreet
				lectus. In hac habitasse platea dictumst. Aliquam erat volutpat.
				Vivamus lobortis bibendum nisl, in euismod urna laoreet ut. Duis
				libero dui, tincidunt feugiat tempus quis, vulputate vitae sem.
				Pellentesque dapibus imperdiet sem elementum feugiat. In gravida,
				lacus a scelerisque fermentum, lorem nulla lacinia quam, eget
				iaculis ligula ligula et libero. Suspendisse aliquet vitae purus ut
				convallis. Nullam blandit felis at justo laoreet, et vestibulum
				velit suscipit. Sed convallis eu ligula a maximus. Cras rhoncus
				vehicula elit, sed commodo ligula feugia
	</p>
	</div> -->
	
	<nav id="target_nav" class="navbar navbar-default">
		<div class="container">
		    <ul class="nav navbar-nav">
		    	<li><a href="#welcome">Welcome</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#staff" class="scrollclass">Staff</a></li>
				<li><a href="#events" class="scrollclass">Events</a></li>
				<li><a href="#results" class="scrollclass">Results</a></li>
				<li><a href="#getStarted" class="scrollclass">Get Started</a></li>
				<li><a href="#recipes" class="scrollclass">Recipes</a></li>
		    </ul>
		</div>
	</nav>
	
	<%@ include file="includes/welcome.jsp" %>
	<%@ include file="includes/about.jsp" %>
	<%@ include file="includes/staff.jsp" %>
	<%@ include file="includes/events.jsp" %>
	<%@ include file="includes/results.jsp" %>
	<%@ include file="includes/getStarted.jsp" %>
	<%@ include file="includes/recipes_modal.jsp" %>
	

</body>
</html>