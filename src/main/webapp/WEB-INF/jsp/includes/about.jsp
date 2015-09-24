<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<section id="about" class="container">
	<h2>Contact Us</h2>
	
	<div class="col-md-6 col-sm-12 contact-info">
		<div class="row">
			<label class="col-md-6">Address</label>
			<div class="col-md-6">
				8230 Hickman Rd<br /> 
				Ste 500<br /> 
				Clive, IA 50325
			</div>
		</div>
		<div class="row">
			<label class="col-md-6">Phone</label>
			<div class="col-md-6">
				<a class="phone" href="tel:+15152708446">515.270.THIN(8446)</a>
			</div>
		</div>
		<div class="row">
			<label class="col-md-6">Fax</label>
			<div class="col-md-6">888-581-4224 (fax)</div>
		</div>
		<div class="row">
			<label class="col-md-6">Email</label>
			<div class="col-md-6">
				<a class="email" href="email:info@idealtransformation.net">info@idealtransformation.net</a>
			</div>
		</div>
		<div class="row">
			<label class="col-md-6">Hours</label>
			<ul class="col-md-6 list-unstyled ">
				<li>9-5 (Mon - Thur)</li>
				<li>9-1 (Fri)</li>
				<li><small>Extended Hours available by appointment</small></li>
			</ul>
		</div>
		
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
		
		<div class="row">
			<label class="col-md-6">Message Us</label>
			<div class="col-md-6" id="embeddedMessageFormWrapper">
				
			</div>
		</div>
		
	</div>
	<div class="col-md-6 col-sm-12 map">
		<div class="embed-responsive embed-responsive-4by3">
			<iframe class="embed-responsive-item"
				src="https://www.google.com/maps/embed/v1/place?key=AIzaSyChtWPYR9_BzD1QlLDHkV5gD-USwt9w3mw&q=8230+Hickman+Rd+Ste+400+Clive+IA+50325">
			</iframe>
		</div>
	</div>
</section>

<script type="text/javascript">
$(function(){
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
