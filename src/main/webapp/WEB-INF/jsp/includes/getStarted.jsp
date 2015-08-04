<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div id="getStarted" class="container">
 	<h2>Get Started</h2>
 	<p>Please complete the following to register for one of our upcoming classes and Informational Sessions!
 	</p>
 	<form>
		<div class="form-group col-md-4">
			<label for="name">Name</label> 
			<input type="text" class="form-control" id="name" placeholder="Name" />
		</div>
		<div class="form-group col-md-4">
			<label for="eamil">Email</label> 
			<input type="email" class="form-control" id="eamil" placeholder="Email">
		</div>
		<div class="form-group col-md-4">
		    <label for="phone">Phone Number</label>
		    <input class="form-control" type="text" id="phone">
		</div>
  		<div class="form-group col-md-4">
   			<label for="classType">Which class will you be attending?</label>
   			<ul class="list-unstyled">
   				<li class="radio">
   					<label><input type="radio" name="classType" >
   					Info Session</label>
   				</li>
   				<li class="radio">
   					<label><input type="radio" name="classType" >
   					Maintenance Class</label>
   				</li>
   				<li class="radio">
   					<label><input type="radio" name="classType" >
   					Support Group</label>
   				</li>
   			</ul>
      	</div>
      	<div class="form-group col-md-4">
		    <label for="date">Event Date</label>
		    <input class="form-control" type="date" id="date" placeholder="mm/dd/yyyy" />
		</div>
		<div class="form-group col-md-4">
			<label for="attendCount">How many attending?</label>
		    <input class="form-control" type="number" id="attendCount" />
		</div>
		<div class="col-md-12">
	 		<button type="submit" class="btn btn-default">Submit</button>
		</div>
 	</form>
 </div>