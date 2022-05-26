<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container-fluid d-block my-4">

<div class="card cb1 mb-3 w-75 mx-auto p-4">
  <h5 class="card-title text-center title-home-sm fw-bold mt-1 mb-4 ">${corso.nome}</h5>
  <img src='<c:url value="/static/images/${corso.img}"/>' class="img-fluid rounded-start bg-image mx-5 my-3" alt="${corso.nome}">
  <div class="card-body">
    <p class="card-text">${corso.descrizione}</p>
    <p class="card-text text-end fw-light fst-italic m-2">	
		<fmt:formatNumber value="${corso.prezzo}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/> a lezione
	</p>
	<div class="text-center mt-3 mx-2">
		<a href ='<spring:url value="/cart"/>?id=${corso.id_prodotto}&path=corsi/viewcorso' class="btn btn-jim mb-4 shadow" >Aggiungi al carrello</a>
	</div>
  </div>
</div>

</div>