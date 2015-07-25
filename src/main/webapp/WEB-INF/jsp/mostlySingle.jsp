<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<%@ include file="includes/headSection.jsp"%>

<title>Insert title here</title>
</head>
<body data-spy="scroll" data-target="#navbarCollapse" data-offset="70">
	<nav id="main-nav" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbarCollapse"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="nav navbar-nav" id="navList">
					<li><a href="#welcome" class="active">Welcome</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#staff">Staff</a></li>
					<li><a href="#events">Events</a></li>
					<li><a href="#results">Results</a></li>
					<li><a href="#getStarted">Get Started</a></li>
					<li><a href="#recipes">Recipes</a></li>
				</ul>
			</div>
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