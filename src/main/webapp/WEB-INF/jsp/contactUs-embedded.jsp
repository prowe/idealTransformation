<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form modelAttribute="command" id="contactUsForm">

	<div class='form-group <form:errors path="name">has-error</form:errors>' >
		<form:input path="name" cssClass="form-control" placeholder="Name"/>
		<form:errors path="name" cssClass="help-block"/>
	</div>
	<div class='form-group <form:errors path="email">has-error</form:errors>' >
		<form:input path="email" cssClass="form-control" type="email" placeholder="Email"/>
		<form:errors path="email" cssClass="help-block"/>
	</div>
	<div class='form-group <form:errors path="comments">has-error</form:errors>' >
		<form:textarea path="comments" cssClass="form-control" placeholder="Message"/>
		<form:errors path="comments" cssClass="help-block"/>
	</div>
	<div class="form-group">
		<button id="embeddedContactSaveButton" type="button" class="btn btn-primary btn-sm pull-right">Submit</button>
	</div>
</form:form>
	
