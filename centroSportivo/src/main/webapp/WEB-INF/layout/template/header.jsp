<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-dark navbar-expand-lg bg-dark sticky-top shadow bottom-border-orange">
  <div class="container-fluid px-5">
  
    <a class="navbar-brand" href="<spring:url value="/index"/>">
    	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#ffa500" class="bi bi-house" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
</svg>

<span class="text-orange ms-3">Centro Sportivo Big Jim</span>
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto me-2 mb-2 mb-lg-0">
        <li class="nav-item">
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-orange" href="<spring:url value="/index"/>"><span class="text-orange btn-orange">Home</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-orange" href="<spring:url value="/corsi"/>"><span class="text-orange">Corsi</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-orange" href="<spring:url value="/abbonamenti"/>"><span class="text-orange">Abbonamenti</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-orange" href="<spring:url value="/login"/>"><span class="text-orange">Login</span></a>
        </li>
        
      </ul>
      
    </div>
    
    <a class="navbar-brand align-self-end" href="<spring:url value="/cart"/>">
    	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#ffa500" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>
    </a>
    
  </div>
</nav>