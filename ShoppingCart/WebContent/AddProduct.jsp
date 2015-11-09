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

<title>Add to Cart</title>
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
          <a class="navbar-brand" href="#">Add to Cart</a>
          <a class="navbar-brand" href="Checkout">Checkout</a>
        </div>
      </div>
    </nav>
</div>
<div class="container">
<h2>Add to Cart</h2>

<table class="table table-bordered">
<tr>
    <th>Name</th> 
    <th>Description</th>
    <th>Price</th>
  </tr>
    <tr>      
        <td>${product.prodname}</td>
        <td><!-- ${product.description}<br><img src="img/${product.image}" alt="HTML5 Icon" width="128" height="128"> -->
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
<div class="container">
<form action="ConfirmationServlet" method="post">
<div class="row">
<div class="pull-left col-md-2">
<div class="row">
<div class="pull-left col-md-4">
<p>Quantity</p>
</div>
<div class="pull-left col-md-8">
<select name="quantity" class="selectpicker">
  <% for(int i = 1; i < 100; i+=1) { %>
  	<option value=<%=i %>><%=i %></option>
    <% } %>
</select> 
</div>
</div> 
</div>
<div class="pull-left col-md-10">
<button type="submit" class="btn btn-primary">Add to Cart</button>
</div>
</div>
</form>
</div>



</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>

</body>
</html>