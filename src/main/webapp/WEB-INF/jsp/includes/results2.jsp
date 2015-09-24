<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<section id="results" class="container">
	<h2>Results</h2>
	
	<div class="col-lg-6 col-md-offset-3">
		<div class="carousel slide" id="myCarousel">
		  <div class="carousel-inner">
		    <div class="item active">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/e499e4/fff&amp;text=1" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/e477e4/fff&amp;text=2" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/eeeeee&amp;text=3" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/f4f4f4&amp;text=4" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/f566f5/333&amp;text=5" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/f477f4/fff&amp;text=6" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/eeeeee&amp;text=7" class="img-responsive"></a></div>
		    </div>
		    <div class="item">
		      <div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/fcfcfc/333&amp;text=8" class="img-responsive"></a></div>
		    </div>
		  </div>
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
		</div>
	</div>

<!--
	<div class="carousel slide" id="results-carousel">
		<div class="carousel-inner">
			<c:forEach begin="1" end="10" var="index" varStatus="status">
				<div class="item active">
					<div class="col-lg-2"><a href="#"><img src="http://placehold.it/500/e499e4/fff&amp;text=${index}" 
						class="img-responsive"></a></div>
			    </div>
				 <div class="item result-panel ${status.first ? 'active' : ''}">
					<div class="col-md-4">
						<img class="before-pic img-responsive" src="resources/images/results/${index}/before.jpg" />
						<img class="after-pic img-responsive" src="resources/images/results/${index}/after.jpg" /> 
					</div>
				</div> 
			</c:forEach>
		</div>
		<a class="left carousel-control" href="#results-carousel" data-slide="prev"><i
			class="glyphicon glyphicon-chevron-left"></i></a> 
		<a class="right carousel-control" href="#results-carousel" data-slide="next"><i
			class="glyphicon glyphicon-chevron-right"></i></a>
	</div>
-->
</section>

<script type="text/javascript">
	$(function(){
		$('#myCarousel').carousel({
			  interval: 4000
			})

			$('.carousel .item').each(function(){
			  var next = $(this).next();
			  if (!next.length) {
			    next = $(this).siblings(':first');
			  }
			  next.children(':first-child').clone().appendTo($(this));
			  
			  for (var i=0;i<3;i++) {
			    next=next.next();
			    if (!next.length) {
			    	next = $(this).siblings(':first');
			  	}
			    
			    next.children(':first-child').clone().appendTo($(this));
			  }
			});
	});
</script>