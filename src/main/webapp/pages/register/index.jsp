<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:s="/struts-tags" version="2.0">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<jsp:text>
		<![CDATA[ <?xml version="1.0" encoding="UTF-8" ?> ]]>
	</jsp:text>
	<jsp:text>
		<![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
	</jsp:text>
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="x-ua-compatible" content="ie=edge"/>
<title>Register</title>
</head>
<body>
	<h1 class="my-4">Register</h1>
	<s:actionerror/>
	<s:form id="frmAddUser"
	action="%{#pageContext.request.contextPath}/register"
	method="post" theme="simple">
		<h3 class="my-4">Personal Info</h3>
		<div class="form-group row">
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Name</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txName" name="model.name" placeholder="Juan"/>
				<s:fielderror fieldName="model.name" class="text-danger"/>
			</div>
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Last Name</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txLastName" name="model.lastName" placeholder="Gonzalez"/>
				<s:fielderror fieldName="model.lastName" class="text-danger"/>
			</div>
		</div>

		<div class="form-group row">
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Second Last Name</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txSecondLastName" name="model.secondLastName" placeholder="Ramirez"/>
				<s:fielderror fieldName="model.secondLastName" class="text-danger"/>
			</div>
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Email</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txLogin" name="model.login" placeholder="goku777@gmail.com"/>
				<s:fielderror fieldName="model.login" class="text-danger"/>
			</div>
		</div>

		<div class="form-group row">
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Password</label>
				<s:password cssClass="form-control" cssErrorClass="is-invalid" id="txPassword" name="model.password" placeholder="*******"/>
				<s:fielderror fieldName="model.password" class="text-danger"/>
			</div>
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Confirm Password</label>
				<s:password cssClass="form-control" cssErrorClass="is-invalid" id="txConfirmPassword" name="confirmPassword" placeholder="*******"/>
				<s:fielderror fieldName="confirmPassword" class="text-danger"/>
			</div>
		</div>
		
		

		<h3 class="my-4">Address</h3>

		<div class="form-group row">
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">Street</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txStreet" name="model.street" placeholder="Calle El Solecito 231"/>
				<s:fielderror fieldName="model.street" class="text-danger"/>
			</div>
			<div class="col-lg-6 col-md-6">
				<label for="" class="text-dark">City</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txCity" name="model.city" placeholder="Naucalpan de Juarez"/>
				<s:fielderror fieldName="model.city" class="text-danger"/>
			</div>
		</div>

		<div class="form-group row">
			<div class="col col-lg-4">
				<label for="" class="text-dark">State</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txState" name="model.state" placeholder="Edo. de Mexico"/>
				<s:fielderror fieldName="model.state" class="text-danger"/>
			</div>
			<div class="col col-lg-4">
				<label for="" class="text-dark">Zip Code</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txZipCode" name="model.zipCode" placeholder="54040"/>
				<s:fielderror fieldName="model.zipCode" class="text-danger"/>
			</div>
			<div class="col-md-6 col-lg-4">
				<label for="" class="text-dark">Telephone</label>
				<s:textfield cssClass="form-control" cssErrorClass="is-invalid" id="txTelephone" name="model.telephone" placeholder="55-55-55-55-55"/>
				<s:fielderror fieldName="model.telephone" class="text-danger"/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2 col-lg-2">
				<s:submit class="btn btn-success" value="Sign Up" />
			</div>
			<div class="col-md-2 col-lg-5">
				<a class="btn btn-danger" href="${pageContext.request.contextPath}/products">Go back to products</a>
			</div>
			<div class="col-md-2 col-lg-5">
				<a class="btn btn-info" href="${pageContext.request.contextPath}/login/products">Already have an account? Log In</a>
			</div>
		</div>

	</s:form>

</body>
</html>
</jsp:root>