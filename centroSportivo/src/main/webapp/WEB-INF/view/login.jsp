<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
  <div class="card bg-dark w-75 my-5 mx-auto shadow">
  <div class="card-body">
    <h5 class="card-title text-center mb-3">Login</h5>
    <div id="loginError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
	    <div>
	   		&nbsp; L'email o la password inserite sono errate, si prega di riprovare.
	  	</div>
		<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
 	</div>
        <form method="POST" action="login/convalida" accept-charset="ISO-8859-1">
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
		    	<a href="#" class="btn btn-lg btn-jim shadow mt-4 mb-2 w-25 d-block mx-auto">Login</a>
	  </form>
	</div>
  </div>
  <h5 class="text-center"><span class="badge bg-dark">Non hai ancora un account? <a href="<spring:url value="/registrazione"/>">Registrati qui</a>!</span></h5>
  </div>