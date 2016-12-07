<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


    
<!DOCTYPE html>
<html lang="en">
<head>

 

  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <title>Bootstrap Example</title>
   
   <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">


</head>


<!--  NAVBAR
============================================================-->


<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
    <div class="navbar-header">
    <img src="${pageContext.servletContext.contextPath}/resources/images/Logomakr_4Zjf0a.png" width="100" height="48" align=left><nbsp>
      <a class="w3-text-white w3-hover-text-green navbar-brand" href="<c:url value="/" /> ">BESTBUY</a>
    </div>
    <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="display:block">

        
    
    
    
    <ul class="nav navbar-nav">
        
         <li><a class="w3-text-white w3-hover-text-yellow" href="<c:url value="/" /> "><span class="glyphicon glyphicon-home"></span>Home</a></li>
          <li><a class="w3-text-white w3-hover-text-orange" href="<c:url value="/product/productList/all" />">Products</a></li>
          <li><a class="w3-text-white w3-hover-text-blue" href="<c:url value="/about" />">About Us</a></li> 
          
    </ul>

    <ul class="nav navbar-nav navbar-right">
    
    <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                           
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
      <li><a class="w3-text-white w3-hover-text-green" href="<c:url value="/register" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a class="w3-text-white w3-hover-text-green" href="<c:url value="/login/" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </c:if>
    </ul>
    
  </div>
</nav><br>







