<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container mt-4 d-flex justify-content-evenly flex-wrap">

	<c:forEach items="${corsi}" var="corso"> 
	
		<div class="card-dark bg-dark shadow mb-4 mx-3 rounded" style="width: 35rem;">
		  <img src='<c:url value="/static/image/${corso.img}"/>' class="card-img-top" alt="">
		  <div class="card-body">
		    <h5 class="card-title">${corso.nome}</h5>
		    <p class="card-text">	
			 	 ${corso.descrizione}
			</p>
			<p class="card-text">	
			 <fmt:formatNumber value="${corso.prezzo}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/>
			</p>
			<div class="d-flex flex-wrap justify-content-around">
				<a href ='<spring:url value="cart"/>?id=${corso.id_prodotto}' class="btn btn-primary shadow" >Aggiungi al carrello</a>
				<p>&nbsp;</p>
			    <%-- <p class="card-text fw-lighter fst-italic fs-6 mt-2">	
				 	 Ancora ${corso.quantity} posti disponibili
				</p> --%>
			</div>
		  </div>
		</div>
		
	 </c:forEach> 
</div>