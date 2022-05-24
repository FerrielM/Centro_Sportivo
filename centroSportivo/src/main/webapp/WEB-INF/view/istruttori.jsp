<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container mt-4 d-flex justify-content-evenly flex-wrap">

	<%-- <c:forEach items="${articles}" var="article"> --%>
	
	<%-- 	<div class="card-dark bg-dark shadow mb-4 mx-3 rounded" style="width: 35rem;">
		  <img src='<c:url value="/static/image/${article.imageFile}"/>' class="card-img-top" alt="">
		  <div class="card-body">
		    <h5 class="card-title">${article.name}</h5>
		    <p class="card-text">	
			 	 ${article.description}
			</p>
			<p class="card-text">	
			 <fmt:formatNumber value="${article.price}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/>
			</p>
			<div class="d-flex flex-wrap justify-content-around">
				<a href="#" class="btn btn-primary shadow">Aggiungi al carrello</a>
				<p>&nbsp;</p>
			    <p class="card-text fw-lighter fst-italic fs-6 mt-2">	
				 	 Ancora ${article.quantity} posti disponibili
				</p>
			</div>
		  </div>
		</div> --%>
		
	<%-- </c:forEach> --%>	
	
	<div class="card bg-dark text-center w-75">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
    <%-- <c:forEach items="${istruttori}" var="istruttore"> <- Per generare le linguette  --%>
    
      <li class="nav-item">
        <a class="nav-link" href="#">${istruttore.name}</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">${istruttore.nome} ${istruttore.cognome}</h5>
    <p class="card-text">${istruttore.descrizione}</p>
    <a href="#" class="btn btn-primary">Vedi i corsi</a>
  </div>
  <%-- </c:forEach> --%>
</div>
</div>