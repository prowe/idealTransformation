<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	<form:form modelAttribute="command" id="contactUsForm">
		<p>Please complete the following to register for one of our
			upcoming classes or Informational Sessions!</p>
		<div class="row">
			<div class='form-group col-md-6 <form:errors path="name">has-error</form:errors>' >
				<form:label path="name" cssClass="form-label">Name</form:label>
				<form:input path="name" cssClass="form-control" />
				<form:errors path="name" cssClass="help-block"/>
			</div>
			<div class='form-group col-md-6 <form:errors path="phone">has-error</form:errors>' >
				<form:label path="phone" cssClass="form-label">Phone Number</form:label>
				<form:input path="phone" cssClass="form-control" type="tel"/>
				<form:errors path="phone" cssClass="help-block"/>
			</div>
		</div>
		<div class='form-group <form:errors path="email">has-error</form:errors>' >
			<form:label path="email" cssClass="form-label">Email</form:label>
			<form:input path="email" cssClass="form-control" type="email" />
			<form:errors path="email" cssClass="help-block"/>
		</div>
		
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
	</form:form>
	
<script type="text/javascript">
	$('#eventDateGroup').datetimepicker({
		format: 'MM/DD/YYYY'
	});
</script>
