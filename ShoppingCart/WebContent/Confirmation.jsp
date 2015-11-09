<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

<title>Confirmation</title>
</head>
<body>

<div class="container">
    <nav class="navbar navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="HomeServlet">Home</a>
          <a class="navbar-brand" href="#">Confirmation</a>
          <a class="navbar-brand" href="Checkout">Checkout</a>
        </div>
      </div>
    </nav>
</div>

<div class="container">
<h2>Confirmation</h2>

<table class="table table-bordered">
<tr>
    <th>Name</th> 
    <th>Description</th>
    <th>Price</th>
  </tr>
    <tr>      
        <td>${product.prodname}</td>
        <td>
        <div class="row">
  			<div class="col-md-4">
  			<img src="img/${product.image}" alt="HTML5 Icon" width="200" height="200">
  			</div>
  			<div class="col-md-8">
  			<p>${product.description}</p>
  			</div>
		</div>
        </td>
        <td><fmt:setLocale value="en_US"/><fmt:formatNumber value="${product.price}" type="currency"/></td>
    </tr>
</table>
<br>
<h3>${qty} items added successfully in cart.</h3>
<br>
<div class="row">
<div class="col-md-2">
<a class="btn btn-primary" href="HomeServlet" role="button">Continue Shopping</a>
</div>
<div class="col-md-10">
<a class="btn btn-success" href="Checkout" role="button">Check Out</a>
</div>
</div>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>

</body>
</html>