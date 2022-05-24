<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container-fluid">
	<h2 class="text-center my-2">Benvenuto nella tua area riservata!</h2>
	<hr>
    <div class="mb-4">
	<h4 class="mb-3 text-white fw-bold text-center">I tuoi corsi</h4>
      <table class="table table-striped table-hover table-dark my-4 w-75 shadow mx-auto">
      	<tr><th colspan="2">Corso</th><th>Data</th><th>Orario</th></tr>
      	<c:forEach items="${corsi}" var="corso">
      	<tr>
      		<th colspan="2">${corso.name}</th>
      		<td>${corso.date}</td>
      		<td>${corso.orario-inizio} - ${corso.orario-fine}</td>
      	</tr>
      	</c:forEach>
      </table>
</div>
<hr>
<div class="mb-4">
	<h4 class="mb-3 text-white fw-bold text-center">I tuoi Ordini</h4>
      <table class="table table-striped table-hover table-dark my-4 w-75 shadow mx-auto">
      	<tr><th colspan="2">Prodotto</th><th>Data di acquisto</th><th>Totale Pagato</th></tr>
      	<c:forEach items="${products}" var="product">
      	<tr>
      		<td colspan="2">${product.items}</td>
      		<td>${product.date}</td>
      		<td><fmt:formatNumber value="${article.price}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/></td>
      	</tr>
      	</c:forEach>
      </table>
</div>
</div>