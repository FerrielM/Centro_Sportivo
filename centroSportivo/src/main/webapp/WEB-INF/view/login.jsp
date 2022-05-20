<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
  <div class="card bg-dark w-75 my-5 mx-auto shadow">
  <div class="card-body">
    <h5 class="card-title text-center mb-3">Login</h5>
        <div class="form">
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">E-mail</label>
	            <input type="email" class="form-control bg-dark text-white" placeholder="Indirizzo e-mail">
	        </div>
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Password</label>
	            <input type="password" class="form-control bg-dark text-white" placeholder="Password">
	        </div>
	        </div>
		    	<a href="#" class="btn btn-lg btn-jim mt-4 mb-2 w-25 d-block mx-auto">Login</a>
	  </div>
	</div>
  </div>
  <p>Non hai ancora un account? <a href="<spring:url value="/registrazione"/>">Registrati qui</a>!</p>
  </div>