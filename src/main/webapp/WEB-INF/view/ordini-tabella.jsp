<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container-fluid">

<div class="mb-4">
	<h4 class="mb-3 text-white fw-bold text-center">I tui ordini</h4>
      <table class="table table-dark table-striped my-4 w-75 mx-auto">
      	<tr><th colspan="2">Prodotto</th><th>Prezzo</th></tr>
      	<c:forEach items="${articles}" var="article">
      	<tr>
      		<th colspan="2">${article.name}</th>
      		<th><fmt:formatNumber value="${article.price}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/></th>
      	</tr>
      	<tr><td></td></tr>
      	</c:forEach>
      </table>
</div>

</div>