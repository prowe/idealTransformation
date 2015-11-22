<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside class="col-md-4">
	<section class="">
		<h4>NEWS</h4>
		<p>Stay up-to-date on our latest products, special promotions, and in-store sales.</p>
		
		<form>
			<div class='form-group ' >
				<input path="email" class="form-control" type="email" placeholder="Email"/>
			</div>
			<div class="form-group clearfix">
				<button id="embeddedContactSaveButton" type="button" class="btn btn-primary btn-sm pull-right">Submit</button>
			</div>
		</form>
	</section>
	
	<%@ include file="instagramFeed.jsp" %>
</aside>