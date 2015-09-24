<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="contactUsModal">
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
</div>

<section id="events" class="container">
	<h2>Events</h2>
	<div id="classDescriptions" class="col-md-6 col-sm-12">
		<h3>Workshops</h3>
		<p>Workshops provide an excellent overview of how our weight loss protocol works with your body to shed fat while maintaining lean muscle. Results are predictable and repeatable!</p>
		
		<h3>Classes</h3>
		<p>Anyone is welcome to attend our informational classes. We provide a relaxed setting where we will discuss several topics about weight loss and developing a healthy lifestyle. Open discussion and questions are encouraged!</p>
		
		<button 
			type="button" class="btn btn-primary btn-xs contactUsButton">Contact Us</button>
	</div>
	<div class="col-md-6 col-sm-12">
		<div class="embed-responsive embed-responsive-4by3">
			<iframe class="embed-responsive-item"
				src="https://www.google.com/calendar/embed?title=Ideal%20Tran%20Event%20Calendar&amp;showTitle=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=joa8fgdm9b4s06gfq914kn1v4k%40group.calendar.google.com&amp;color=%23875509&amp;ctz=America%2FChicago">
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
</section>