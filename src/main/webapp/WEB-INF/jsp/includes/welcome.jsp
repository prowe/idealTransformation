<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section id="welcome" class="">
	<h2>Welcome</h2>
	<p>Established in 2011, Ideal Transformation is a health and
		wellness center creating life-changing transformations, one unique
		experience at a time! Identify and implement a sustainable Health,
		Wellness, or Weight Loss Program that leads to success and long-term
		results.</p>

	<div class="row ">
		<div class="col-xs-6" style="text-align: right;">
			<strong>i•de•al</strong><br />tailor-made
		</div>
		<div class="col-xs-6">
			<strong>trans•for•ma•tion</strong><br />life changing experience
		</div>
	</div>


	<h3>Weight Loss</h3>
	<p>Your ideal weight is more than just a number. You should feel
		good from the inside out, wear the clothes you want to wear, not just
		the ones that fit, and be actively participating in your life!</p>
	<button data-toggle="modal" data-target="#weightLossModal"
		type="button" class="btn btn-primary btn-xs">learn more!</button>

	<h3>Health Coaching</h3>
	<p>You don’t have to go alone to reach your highest aspirations! A
		health coach serves as a supportive mentor who inspires positive
		health choices and motivation to achieve health and lifestyle
		objectives.</p>
	<button type="button" data-toggle="modal" data-target="#healthCoachingModal"
		class="btn btn-primary btn-xs">learn
		more!</button>

	<div class="modal fade" id="weightLossModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Weight Loss</h4>
				</div>
				<div class="modal-body">
					<p><em>Your ideal weight is more than just a number. You should
						feel good from the inside out, wear the clothes you want to wear,
						not just the ones that fit, and be actively participating in your
						life!</em></p>
					<p>As an authorized center for the Ideal Protein Weight Loss
						Method, we offer a medically supervised weight loss protocol with
						a 30-year track record of proven results. Our program includes
						four phases:</p>

					<p style="margin-left: 3em;">
						<strong>Phase 1 and 2</strong> focus on weight loss and include low carbohydrate
						foods, recipes, and cooking methods. 
						<br />
						<strong>Phases 3 and 4</strong> re-introduce
						higher carbohydrate foods and provide simple guidelines for
						stabilizing and maintaining your new ideal weight.
						</p>
					
					<p>If you’ve tried exercise and balanced nutrition and can’t
						get the scale to budge, we’ll share the secret to successful
						weight loss! Our protocol is designed to work with your body’s
						natural ability to burn fat. In addition to fat loss, many dieters
						experience additional health benefits that come with improved diet
						and nutrition.</p>
					<p>If you are ready to TAKE CHARGE of your body and REGAIN YOUR
						HEALTH, this may be the program for you. To learn more, <a href="#" class="contactUsButton">register
						for an upcoming workshop</a> or <a href="#" class="contactUsButton">schedule a one-on-one consultation.</a></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<div class="modal fade" id="healthCoachingModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Health Coaching</h4>
				</div>
				<div class="modal-body">
					<p><em>You don’t have to go alone to reach your highest aspirations!  A health coach serves as a supportive mentor who inspires positive health choices and motivation to achieve health and lifestyle objectives.</em></p> 
					<p>Health coaches can play an important role in your quest for a more fulfilling existence!  Whether you are seeking a plan for healthier eating, time management, life balance, or weight loss, a health coach can help you identify your primary objectives and work with you to craft a plan of action to help you get there!</p>
				
					<h5>Personal Consultation Rates <small style="display: block;">By Appointment</small></h5>

 		  			<dl style="margin-left: 3em;" class="dl-horizontal">
 		  				<dt>15 Minutes</dt>
 		  				<dd>$20</dd>
 		  				
 		  				<dt>25 Minutes</dt>
 		  				<dd>$40</dd>

		 	    		<dt>50 Minutes</dt>
		 	    		<dd>$75</dd>
					</dl>
					
					<p><a href="#" class="contactUsButton">Schedule a FREE initial consultation</a> with one of our health coaches to share your health goals and learn how a personal health coach can benefit you!</p>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</section>


<script type="text/javascript">
	$(function(){
		$('.contactUsButton').click(function (e){
			e.preventDefault();
			//if we already have a modal open, close it
			$(this).closest('.modal').modal('hide');
			
			$('#contactUsModal .modal-body').load("contactUs.html", function(){
				$('#contactUsModal').modal({
					
				});
			});
		});
		$('#contactUsSaveButton').click(function(e){
			$.post("contactUs.html",
				$('#contactUsForm').serialize(),
				function(result){
			    	$('#contactUsModal .modal-body').html(result);
			    	console.log("we're back " + result);
			    }
			);
		});
	});
</script>




