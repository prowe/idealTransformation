<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="includes/headSection.jsp" %>

<title>Ideal Transformation</title>
<style type="text/css">
	/* start page specific */
</style>
</head>
<body>
	<header>
		<%@ include file="includes/headerBanner.jsp" %>
		<%@ include file="includes/nav.jsp" %>
	</header>
	<main class="row">
		<c:if test="${not empty successMessage}">
			<div class="alert alert-dismissible alert-success" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<c:out value="${successMessage}"/>
			</div>
		</c:if>
		<c:if test="${not empty errorMessage}">
			<div class="alert alert-dismissible alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<c:out value="${errorMessage}"/>
			</div>
		</c:if>
		<div class="col-md-8">
			<div class="embed-responsive embed-responsive-4by3">
				<iframe class="embed-responsive-item"
					src="https://www.google.com/maps/embed/v1/place?key=AIzaSyChtWPYR9_BzD1QlLDHkV5gD-USwt9w3mw&q=8230+Hickman+Rd+Suite+300+Clive+IA+50325">
				</iframe>
			</div>
			<section id="contact-section">
				<form:form modelAttribute="command" id="contactUsForm">
					<p><strong>Contact Us!</strong>  <a href="tel:515-270-8446">Call,</a> <a href="email:info@idealtransformation.net">Email,</a> or send us a message:</p>
					<div class="row">
						<div class='form-group col-md-6 <form:errors path="name">has-error</form:errors>' >
<%-- 							<form:label path="name" cssClass="form-label">Name</form:label> --%>
							<form:input path="name" cssClass="form-control" placeholder="Name" />
							<form:errors path="name" cssClass="help-block"/>
						</div>
						<div class='form-group col-md-6 <form:errors path="phone">has-error</form:errors>' >
<%-- 							<form:label path="phone" cssClass="form-label">Phone Number</form:label> --%>
							<form:input path="phone" cssClass="form-control" type="tel" placeholder="Phone Number"/>
							<form:errors path="phone" cssClass="help-block"/>
						</div>
					</div>
					<div class='form-group <form:errors path="email">has-error</form:errors>' >
<%-- 						<form:label path="email" cssClass="form-label">Email</form:label> --%>
						<form:input path="email" cssClass="form-control" type="email" placeholder="Email" />
						<form:errors path="email" cssClass="help-block"/>
					</div>
					<div class='form-group <form:errors path="comments">has-error</form:errors>' >
<%-- 						<form:label path="comments" cssClass="form-label">Email</form:label> --%>
						<form:textarea path="comments" cssClass="form-control" placeholder="Comments" />
						<form:errors path="comments" cssClass="help-block"/>
					</div>
					<div class='form-group'>
						<button class="btn btn-primary btn-sm" type="submit">Submit</button>
					</div>
					
					<%-- 
					<div class="row">
						<div class='form-group col-md-6 <form:errors path="classType">has-error</form:errors>' >
							<form:label path="classType" cssClass="form-label">Which class will you be attending?</form:label>
							<form:errors path="classType" cssClass="help-block" />
							<ul class="list-unstyled classTypeList">
								<form:radiobuttons path="classType" itemLabel="label" element="li" cssClass="radio" />
							</ul>
						</div>
						<div class="col-md-6">
							<div class='form-group <form:errors path="eventDate">has-error</form:errors>'>
								<form:label path="eventDate" cssClass="form-label form-date">Event Date</form:label>
				                <div class='input-group date' id='eventDateGroup'>
				                    <form:input path="eventDate" cssClass="form-control" type="date" />
				                    <span class="input-group-addon">
				                        <span class="glyphicon glyphicon-calendar"></span>
				                    </span>
				                </div>
				                <form:errors path="eventDate" cssClass="help-block"/>
				            </div>
							<div class='form-group <form:errors path="attendCount">has-error</form:errors>'>
								<form:label path="attendCount" cssClass="form-label">How many attending?</form:label>
								<form:input path="attendCount" cssClass="form-control" type="number" />
								<form:errors path="attendCount" cssClass="help-block" />
							</div>
						</div>
					</div>
					--%>
					
					
				</form:form>
			</section>
		</div>
		<%@ include file="includes/_aside.jsp" %>
	</main>
	<%@ include file="includes/footer.jsp" %>
	<script type="text/javascript">
		$('#eventDateGroup').datetimepicker({
			format: 'MM/DD/YYYY'
		});
	</script>
</body>
</html>

	
	
