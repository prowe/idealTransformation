<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="results" class="container">
	<h2>Results</h2>

	<!-- crousel won't work here if we need a lot of content per person -->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="row">
					<div class="col-md-6">
						<img src="resources/images/results1/before1.jpg"  />
						<img src="resources/images/results1/after1.jpg" />
					</div>
					<div class="col-md-6">
						<h4>Jane Doe</h4>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
					</div>
				</div>
				<!-- 
					<div class="carousel-caption">Jane Doe (35 lbs)</div>
				-->
				
				<!-- 
				<img src="resources/images/results1/before2.jpg" />
				<img src="resources/images/results1/after2.jpg" />
				<img src="resources/images/results1/before3.jpg" />
				<img src="resources/images/results1/after3.jpg" />
				-->
			</div>
			<div class="item">
				<div>
					<h4>Jane Doe</h4>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
						
				</div>
				<div class="row">
					<div class="col-md-2">
						<img src="resources/images/results1/before1.jpg"  />
					</div>
					<div class="col-md-2">
						<img src="resources/images/results1/before2.jpg" />
					</div>
					<div class="col-md-2">
						<img src="resources/images/results1/before3.jpg" />
					</div>
					<div class="col-md-2">
						<img src="resources/images/results1/after1.jpg" />
					</div>
					<div class="col-md-2">
						<img src="resources/images/results1/after2.jpg" />
					</div>
					<div class="col-md-2">
						<img src="resources/images/results1/after3.jpg" />
					</div>
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>