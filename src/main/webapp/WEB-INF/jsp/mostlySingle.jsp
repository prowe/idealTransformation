<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="includes/headSection.jsp"%>

<title>IdealTRANSFORMATION</title>

</head>
<body>
	<div class="container">
		<div class="col-sm-3" >
			<div id="left-nav" class="bs-docs-sidebar hidden-print" role="complementary" style="position: fixed;">
				<h3>About the Spa</h3>
				<ul class="nav bs-docs-sidenav">
					<li><a href="#welcome" class="scrollclass">Welcome</a></li>
					<li><a href="#about" class="scrollclass">About</a></li>
					<li><a href="#staff" class="scrollclass">Staff</a></li>
					<li><a href="#events" class="scrollclass">Events</a></li>
					<li><a href="#results" class="scrollclass">Results</a></li>
					<li><a href="#getStarted" class="scrollclass">Get Started</a></li>
					<li><a href="#recipes" class="scrollclass">Recipes</a></li>
				</ul>
			</div>
		</div>

		<div class="col-sm-9">
	
	
	<%@ include file="includes/welcome.jsp" %>
	<%@ include file="includes/about.jsp" %>
	<%@ include file="includes/staff.jsp" %>
	<%@ include file="includes/events.jsp" %>
	<%@ include file="includes/results.jsp" %>
	<%@ include file="includes/getStarted.jsp" %>
	<%@ include file="includes/recipes_modal.jsp" %>
	
	</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$('body').scrollspy({
				target : '#left-nav'
			});
		})
	</script>
</body>
</html>