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

<title>Checkout</title>
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
          <a class="navbar-brand" href="#">Checkout</a>
        </div>
      </div>
    </nav>
</div>

<div class="container">
<h2>Shopping Cart</h2>


<c:if test="${not empty items}">
    <table class="table table-bordered">
<tr>
    <th>Name</th>
    <th>Description</th>
    <th>Price</th> 
    <th>Quantity</th>
    <th>Cost</th>
    <th></th>
  </tr>
  <c:forEach items="${items}" var="item">
    <tr>      
        <td>${item.productname}</td>
        <td><img src="img/${item.image}" alt="HTML5 Icon" width="128" height="128"></td>
        <td><fmt:setLocale value="en_US"/><fmt:formatNumber value="${item.price}" type="currency"/></td>
        <td>${item.quantity}</td>
        <td><fmt:setLocale value="en_US"/><fmt:formatNumber value="${item.productcost}" type="currency"/></td>
        <td><a class="btn btn-default" href="Checkout?PurchaseId=${item.purchaseno}" role="button">Remove</a></td>
    </tr>
	</c:forEach>
</table>

<br>
<a class="btn btn-success" href="#" role="button">Payment</a>
</c:if>



</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
</body>
</html>

<!-- ${prod.image} -->