<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<section id="results" class="container">
	<h2>Results</h2>
	
	<div id="results-carousel">
		<div class="results-carousel-wrapper">
			<c:forEach begin="1" end="3" var="index" varStatus="status">
				 <div class="item result-panel ${status.first ? 'active' : ''}">
					<img class="before-pic" src="resources/images/results/${index}/before.jpg" />
					<img class="after-pic" src="resources/images/results/${index}/after.jpg" /> 
					<div class="result-panel-caption">
						<h4>Jane Doe</h4>
					</div>
				</div> 
			</c:forEach>
			
			<c:forEach begin="1" end="3" var="index" varStatus="status">
				 <div class="item result-panel ${status.first ? 'active' : ''}">
					<img class="before-pic" src="resources/images/results/${index}/before.jpg" />
					<img class="after-pic" src="resources/images/results/${index}/after.jpg" />
					<div class="result-panel-caption">
						<h4>Jane Doe</h4>
					</div>
				</div> 
			</c:forEach>
		</div>
	</div>
</section>

<style type="text/css">
	#results-carousel .result-panel {
		float: left;
		margin-left: 0;
		margin-right: 0;
		
	}
	.before-pic, .after-pic {
		display: inline;
		width: 48%;
	}
	.results-carousel-wrapper {
		width: 10000em;
	}
	#results-carousel {
		overflow-x: scroll;
		position: relative;
	}
	.result-panel-caption {
		text-align: center;
	}
</style>

<script type="text/javascript">
	function advanceCarousel(){
		var carousel = $('#results-carousel');
		var scrollPos = carousel.scrollLeft();
		var nextItem = carousel
			.find('.item')
			.filter(function(){
				return $(this).position().left > scrollPos;
			})
			.first();
		
		if(nextItem.size() > 0) {
			carousel.animate({
			    scrollLeft: nextItem.position().left
			}, 1000);
		}else{
			//out of items, reset
			carousel.animate({
			    scrollLeft: 0
			}, 0);
		}
	}
	
	function setItemWidths(){
		var carousel = $('#results-carousel');
		var carouselWidth = carousel.width();
		var itemWidth = carouselWidth;
		if(carouselWidth >= 768){
			itemWidth = carouselWidth / 2;
		}
		if(carouselWidth >= 970){
			itemWidth = carouselWidth / 3;
		}
		carousel.find('.item')
			.css('width', itemWidth + "px");
	}
	
	$(function(){
		setItemWidths();
		$( window ).resize(setItemWidths);
		setInterval(advanceCarousel, 5000);
	});
</script>