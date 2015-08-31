<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="modal fade" id="contactUsModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title">Contact Us</h3>
			</div>
			<div class="modal-body">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button id="contactUsSaveButton" type="button" class="btn btn-primary">Submit</button>
			</div> 
		</div>
	</div>
</section>

<div id="events" class="container">
	<h2>Events</h2>
	<div id="classDescriptions" class="col-md-6 col-sm-12">
		<h3>Info Session</h3>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
		
		<h3>Maintenance Class</h3>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
		
		<h3>Support Group</h3>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
		
		<button 
			type="button" class="btn btn-primary btn-xs contactUsButton">Contact Us</button>
	</div>
	<div class="col-md-6 col-sm-12">
		<div class="embed-responsive embed-responsive-4by3">
			<iframe class="embed-responsive-item"
				src="https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=6ci10meqqa5enjfgi5bnqmjb6s%40group.calendar.google.com&amp;color=%23AB8B00&amp;ctz=America%2FChicago">
			</iframe>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function(){
			$('.contactUsButton').click(function (e){
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
</div>