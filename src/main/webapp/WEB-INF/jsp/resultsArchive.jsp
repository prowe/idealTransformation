<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="includes/headSection.jsp"%>

</head>
<body>
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
		      <a class="navbar-brand" href="index.html">IdealTRANSFORMATION</a>
		    </div>
		    
		    <div class="collapse navbar-collapse" id="navbarCollapse">
			    <ul class="nav navbar-nav" >
			    	<li><a href="index.html#welcome">Welcome</a></li>
					<li><a href="index.html#about">About</a></li>
					<li><a href="index.html#staff" class="scrollclass">Staff</a></li>
					<li><a href="index.html#events" class="scrollclass">Events</a></li>
					<li><a href="index.html#results" class="scrollclass">Results</a></li>
					<li><a href="index.html#recipes" class="scrollclass">Recipes</a></li>
			    </ul>
			</div>
		</div>
	</nav>
	
	<div id="resultsArchive">
		
	</div>
	
	<%@ include file="includes/footer.jsp" %>
	
	<script type="text/javascript">
		$(function(){
			$('#target_nav').affix({
				offset : {
					top : $('#target_nav').offset().top
				}
			});
		});
	</script>
</body>
</html>