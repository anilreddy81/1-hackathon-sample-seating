<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Seating application</title>
<script src="/js/jquery-2.2.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<link rel="stylesheet"  type="text/css" href="/css/seating-style.css">
</head>
<body>
	<div>
		<form:form method="POST" modelAttribute="userForm" class="container1" action="/registration">
			<h3 class="form-signin-heading">Create your account</h3>
			<spring:bind path="firstName">
				<div class="front-indicator1 ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="firstName" class="form-control"
						placeholder="First Name" autofocus="true"></form:input>
					<form:errors path="firstName"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="lastName">
				<div class="front-indicator1 ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="lastName" class="form-control"
						placeholder="Last Name" autofocus="true"></form:input>
					<form:errors path="lastName"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="email">
				<div class="front-indicator1 ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="email" class="form-control"
						placeholder="Email" autofocus="true"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="location">
				<div class="front-indicator1 ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="location" class="form-control"
						placeholder="Location" autofocus="true"></form:input>
					<form:errors path="location"></form:errors>
				</div>
			</spring:bind>

			<form:select class="front-indicator1" path="country" items="${countries}"/>

			<spring:bind path="password">
				<div class="front-indicator1 ${status.error ? 'has-error' : ''}">
					<form:input type="password" path="password" class="form-control"
						placeholder="Password"></form:input>
					<form:errors path="password"></form:errors>
				</div>
			</spring:bind>
			<%-- 	<form:input type="password" 
						class="form-control" placeholder="Confirm your password"></form:input>
 --%>
			<spring:bind path="passwordConfirm">
				<div class="front-indicator1 ${status.error ? 'has-error' : ''}">
					<form:input type="password" path="passwordConfirm"
						class="form-control" placeholder="Pw Conf"></form:input>
					<form:errors path="passwordConfirm"></form:errors>
				</div>
			</spring:bind>

			<button class="registartionBtn" type="submit">Register</button>
		</form:form>
	
	</div>
	
<div>
		<form action="/login" method="post" class="container2">
		<h3>Seating application Login</h3>
		<c:if test="${param.error ne null}">
			<div style="color: red">Invalid credentials.</div>
		</c:if>	
			<div class="front-indicator">
				<label for="username">UserName: <input type="text"
					class="form-control" id="username" name="username" style="width: 60%;">
			</div>
			<div class="front-indicator">
				<label for="pwd">Password:</label> <input type="password"
					style="width: 60%;" class="form-control" id="pwd" name="password">
			</div>

			<button type="submit" class="loginBtn">Submit</button>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <br /> <!-- <a href="/registration"
				style="color: #4285f4; line-height: 1.4286; cursor: pointer;">New
				User</a> -->			
	</form>
	</div>
</html>