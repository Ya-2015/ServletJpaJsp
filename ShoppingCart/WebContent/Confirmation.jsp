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
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shopping Cart</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li ><a href="HomeServlet">Home</a></li>
        <li class="active"><a href="#">Confirmation</a></li>
    	<c:if test="${not empty items}">
        <li ><a href="Checkout">Checkout</a></li>
        </c:if>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${not empty username}">
      		<li><a href="#"></span> Welcome ${username }</a></li>
    		 <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</c:if>
       <c:if test="${empty username}">
    		 <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</c:if>
      </ul>
    </div>
  </div>
</nav>
</div>

<c:if test="${not empty username}">
<div class="container" style ="background:url('https://newevolutiondesigns.com/images/freebies/white-wallpaper-9.jpg')">
</c:if>
<c:if test="${empty username}">
<div class="container">
</c:if>
<h2>Confirmation</h2>
<br>
<h3>${qty} items added successfully in cart.</h3>
<br>
<h4>Subtotal: ${subtotal}</h4>
<br>
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

<br>
<div class="row">
<div class="col-md-2">
<a class="btn btn-primary" href="HomeServlet" role="button">Continue Shopping</a>
</div>
<div class="col-md-10">
<a class="btn btn-primary" href="Checkout" role="button">Check Out</a>
</div>
</div>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>

</body>
</html>