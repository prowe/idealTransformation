<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar">
	<div class="navbar-header">
	     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav" aria-expanded="false">
	       	<span class="sr-only">Toggle navigation</span>
	       	<span class="icon-bar"></span>
	       	<span class="icon-bar"></span>
	       	<span class="icon-bar"></span>
	     </button>
		<a class="navbar-brand hidden-md hidden-lg" href="tel:+15152708446">515-270-THIN (8446)</a>
   	</div>
    <div class="collapse navbar-collapse" id="main-nav">
		<ul class="nav navbar-nav">
			<li><a href="index.html">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="blog.html">Blog</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li class="double-menu"><a href="services.html" >Products &amp; Services</a></li>
			<li><a href="recipes.html">Recipes</a></li>
			<li><a href="contactUs.html">Contact</a></li>
		</ul>
	</div>
</nav>
<script type="text/javascript">
$(function(){
	var path = window.location.pathname;
	$('#main-nav .nav LI A').filter(function(i, e){ 
		return path == e.pathname;
	}).closest('LI')
	.addClass('active')
});
</script>

