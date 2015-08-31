<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section id="results" class="container">
	<h2>Results</h2>

	<!-- crousel won't work here if we need a lot of content per person -->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="row">
					<div class="col-md-3 before-container">
						<img src="resources/images/results1/before1.jpg"  />
					</div>
					<div class="col-md-6">
						<h4>Jane Doe <small>Lost 34 lbs.</small></h4>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut</p>					

<!-- 						<img src="resources/images/results1/before2.jpg" /> -->
<!-- 						<img src="resources/images/results1/before3.jpg" /> -->
<!-- 						<img src="resources/images/results1/after2.jpg" /> -->
<!-- 						<img src="resources/images/results1/after3.jpg" /> -->

					</div>
					<div class="col-md-3 after-container">
						<img src="resources/images/results1/after1.jpg" />
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
	<div>
		Read more success stories in the <a href="resultsArchive.html">archive.</a> 
	</div>
</section>

