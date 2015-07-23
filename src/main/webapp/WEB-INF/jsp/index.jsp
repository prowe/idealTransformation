<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<%@ include file="includes/headSection.jsp"%>
<title>Insert title here</title>
<style type="text/css">
	body {
		position: relative;
	}
</style>
</head>
<body data-spy="scroll" data-target="#bs-example-navbar-collapse-1">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><em>Ideal</em>TRANSFORMATION</a>
			</div>
			
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      			<ul class="nav navbar-nav">
      				<li><a href="#">Home</a></li>
			        <li><a href="#about">About</a></li>
					<li><a href="#events">Events</a></li>
					<li><a href="#staff">Staff</a></li>
					<li><a href="#results">Results</a></li>
					<li><a href="#recipes">Recipes</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container" >
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img style="height: 200px !important"
						src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgdmlld0JveD0iMCAwIDkwMCA1MDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzkwMHg1MDAvYXV0by8jNzc3OiM1NTUvdGV4dDpGaXJzdCBzbGlkZQpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE0ZTllZDVkMmU2IHRleHQgeyBmaWxsOiM1NTU7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6NDVwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTRlOWVkNWQyZTYiPjxyZWN0IHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIiBmaWxsPSIjNzc3Ii8+PGc+PHRleHQgeD0iMzA4LjI4OTA2MjUiIHk9IjI3MC4xMTQwNjI1Ij5GaXJzdCBzbGlkZTwvdGV4dD48L2c+PC9nPjwvc3ZnPg==">
				</div>
				<div class="item">
					<img style="height: 200px !important"
						src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgdmlld0JveD0iMCAwIDkwMCA1MDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzkwMHg1MDAvYXV0by8jNjY2OiM0NDQvdGV4dDpTZWNvbmQgc2xpZGUKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNGU5ZWQ1ZTBlMyB0ZXh0IHsgZmlsbDojNDQ0O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjQ1cHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE0ZTllZDVlMGUzIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzY2NiIvPjxnPjx0ZXh0IHg9IjI2NC45NDUzMTI1IiB5PSIyNzAuMTE0MDYyNSI+U2Vjb25kIHNsaWRlPC90ZXh0PjwvZz48L2c+PC9zdmc+">
				</div>
				<div class="item">
					<img style="height: 200px !important"
						src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgdmlld0JveD0iMCAwIDkwMCA1MDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzkwMHg1MDAvYXV0by8jNTU1OiMzMzMvdGV4dDpUaGlyZCBzbGlkZQpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE0ZTllZDVhYmU3IHRleHQgeyBmaWxsOiMzMzM7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6NDVwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTRlOWVkNWFiZTciPjxyZWN0IHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIiBmaWxsPSIjNTU1Ii8+PGc+PHRleHQgeD0iMjk4LjMxMjUiIHk9IjI3MC4xMTQwNjI1Ij5UaGlyZCBzbGlkZTwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" />
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div id="home" class="row-fluid">
			<p>Ensure correct role and provide a label</p>
			<p>In order for assistive technologies – such as screen readers –
				to convey that a series of buttons is grouped, an appropriate role
				attribute needs to be provided. For button groups, this would be
				role="group", while toolbars should have a role="toolbar".</p>
			<p>One exception are groups which only contain a single control
				(for instance the justified button groups with elements) or a
				dropdown.</p>
			<p>In addition, groups and toolbars should be given an explicit
				label, as most assistive technologies will otherwise not announce
				them, despite the presence of the correct role attribute. In the
				examples provided here, we use aria-label, but alternatives such as
				aria-labelledby can also be used.</p>
		</div>
		<div id="about" class="row-fluid">
			<div class="col-md-6" style="text-align: center">
				<h2>About</h2>
				<div>
					<strong>Email:</strong> <a
						href="email:info@idealtransformation.net">info@idealtransformation.net</a>
				</div>
				<div>
					<strong>Phone:</strong> 515.270.THIN(8446)
				</div>
				<div>
					<strong>Fax:</strong> 888.581.4224
				</div>
				<div>
					8230 Hickman Rd<br /> Ste 400<br /> Clive, IA 50325
				</div>
				<ul class="list-unstyled">
					<li>Monday - Thursday: 9-5</li>
					<li>Friday: 9-1</li>
				</ul>
				<small>Extended Hours available by appointment</small>
			</div>
			<div class="col-md-6">
				<!-- <img width="100%" 
					src="https://maps.googleapis.com/maps/api/staticmap?size=250x250&markers=8230+Hickman+Rd+Ste+400+Clive+IA+50325&zoom=14" />
				-->
				<iframe width="100%" height="350" style="border: 0"
					src="https://www.google.com/maps/embed/v1/place?key=AIzaSyChtWPYR9_BzD1QlLDHkV5gD-USwt9w3mw
				    &q=8230+Hickman+Rd+Ste+400+Clive+IA+50325">
				</iframe>
			</div>
		</div>
		<div id="events" class="row-fluid">
			<h2>Events</h2>
			<iframe
				src="https://www.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=6ci10meqqa5enjfgi5bnqmjb6s%40group.calendar.google.com&amp;color=%23AB8B00&amp;ctz=America%2FChicago"
				style="border-width: 0" width="500" height="500"></iframe>
		</div>
		<div id="staff">
			<h2>The Staff</h2>
			asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br />
			adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br />
			sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br /> sdfa<br />
			sfd<br /> asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br />
		</div>

		<div id="results">
			<h2>Results</h2>
			asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br />
			adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br />
			sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br /> sdfa<br />
			sfd<br /> asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br />
			asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br />
			adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br />
			sdfa<br /> sfd<br />
		</div>

		<div id="recipes">
			<h2>Recipes</h2>
			asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br />
			adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br />
			sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br /> sdfa<br />
			sfd<br /> asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br />
			asdf<br /> adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br />
			adf<br /> a<br /> sdfa<br /> sfd<br /> asdf<br /> adf<br /> a<br />
			sdfa<br /> sfd<br />
		</div>
	</div>
</body>
</html>