<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid d-block my-4">
	<div class="card bg-dark mb-3 w-75 mx-auto">
	  <div class="row g-0">
	    <div class="col-md-4">
	      <img src="static/images/basket.png" class="img-fluid rounded-start bg-image" alt="...">
	    </div>
	    <div class="col-md-8">
	      <div class="card-body">
	        <h5 class="card-title">Basket</h5>
	        <p class="card-text">Basket basket basket basket waaaaaaa</p>
	      </div>
	    </div>
	    <div class="text-center py-2">
	    	<p class="card-text"><small class="text-muted">Ancora ${article.quantity} posti disponibili</small></p>
	    </div>
	  </div>
	</div>
</div>