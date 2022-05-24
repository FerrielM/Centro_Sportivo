<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- ${corso.img} --%>
<div class="container-fluid my-4 d-flex justify-content-center flex-wrap">

	 <c:forEach items="${corsi}" var="corso"> 
		<div class="card rounded-4 cb1 m-5" style="width: 25rem;">
		  <img src='<c:url value="/static/images/${corso.img}"/>' class="card-img-top" alt="">
		  <div class="card-body">
		    <h5 class="card-title text-center text-uppercase">${corso.nome}</h5>
		    <p class="card-text my-3">	
			 	 ${corso.descrizione}
			</p>
			<p class="card-text text-end fw-light fst-italic">	
			 <fmt:formatNumber value="${corso.prezzo}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/> a lezione
			</p>
			<div class="text-center mt-3">
				<a href="#" class="btn btn-jim shadow">Aggiungi al carrello</a>
			</div>
		  </div>
		</div>
		
	 </c:forEach> 	
</div>