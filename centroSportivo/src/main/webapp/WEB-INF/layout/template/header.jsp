<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light sticky-top">
  <div class="container-fluid px-5">
  
    <a class="navbar-brand" href="<spring:url value="/index"/>">
    	<img src='<c:url value="/static/image/homeIcon.png"/>' alt="Home">
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/index"/>">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/store"/>">Store</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/cart"/>">Carrello ()</a>
        </li>
        
      </ul>
      
    </div>
  </div>
</nav>