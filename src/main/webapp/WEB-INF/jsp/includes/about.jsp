<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<section id="about" class="">
	<h2>Contact Us</h2>
	
	<div class="col-md-6 col-sm-12 contact-info">
		<div>
			Ideal TRANSFORMATION<br /> 8230 Hickman Road, Suite 300 <br />
			Clive, IA 50325
		</div>

		<label>Phone</label>
		<div>515-270-8446</div>

		<label>Fax</label>
		<div>888-581-4224</div>

		<label>Email</label> 
		<a class="email"
			href="email:info@idealtransformation.net">info@idealtransformation.net</a> 

		<label>Office Hours</label>
		<dl class="dl-horizontal office-hours">
			<dt>Monday</dt>
			<dd>9AM – 5PM</dd>
			<dt>Tuesday</dt>
			<dd>9AM – 5PM</dd>
			<dt>Wednesday</dt>
			<dd>9AM – 5PM</dd>
			<dt>Thursday</dt>
			<dd>9AM – 5PM</dd>
			<dt>Friday</dt>
			<dd>7AM – 1PM</dd>
		</dl>

		<div class="row hidden-md hidden-lg">
			<label class="col-md-6">Social</label>
			<div class="col-md-6 social-icons ">
				<a href="http://twitter.com/idealDSM" 
					target="_blank"><img src="resources/images/icons/TwitterLogo_55acee_29.png" /></a>
				<a href="http://www.facebook.com/idealtransformation?ref=hl" 
					target="_blank"><img src="resources/images/icons/FB-f-Logo__blue_29.png" /></a>
				<a href="http://pinterest.com/dsmideal/boards/" 
					target="_blank"><img src="resources/images/icons/Pinterest_Badge_Red_29.png" /></a>
				<a href="https://instagram.com/idealtransformation/" 
					target="_blank"><img src="resources/images/icons/Instagram_Icon_Large.png" /></a>
			</div>
		</div>
		
		<!-- <div class="row">
			<label class="col-md-6">Message Us</label>
			<div class="col-md-6" id="embeddedMessageFormWrapper">
				
			</div>
		</div> -->
		
	</div>
	<div class="col-md-6 col-sm-12 map">
		<div class="embed-responsive embed-responsive-4by3">
			<iframe class="embed-responsive-item"
				src="https://www.google.com/maps/embed/v1/place?key=AIzaSyChtWPYR9_BzD1QlLDHkV5gD-USwt9w3mw&q=8230+Hickman+Rd+Suite+300+Clive+IA+50325">
			</iframe>
		</div>
	</div>
</section>

<script type="text/javascript">
$(function(){
	//currently defunct
	var wrapper = $('#embeddedMessageFormWrapper');
	wrapper.load("contactUs.html?embedded=true");
	wrapper.click(function(e){
		var saveButton = $('#embeddedContactSaveButton').get(0);
		if(e.target == saveButton){
			e.preventDefault();
			$.post("contactUs.html?embedded=true",
				wrapper.find('#contactUsForm').serialize(),
				function(result){
					wrapper.html(result);
			    }
			);
		}
	});
});
</script>
