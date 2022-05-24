<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container mt-4 d-flex justify-content-evenly flex-wrap">

	<c:forEach items="${istruttori}" var="istruttore"> 
	
		<div class="card-dark bg-dark shadow mb-4 mx-3 rounded" style="width: 35rem;">
		  <img src='<c:url value="/static/image/${istruttore.nameImg}"/>' class="card-img-top" alt="">
		  <div class="card-body">
		    <h5 class="card-title">${istruttore.nome} ${istruttore.cognome}</h5>
		    <p class="card-text">	
			 	 ${istruttore.descrizione}
			</p>
			<div class="d-flex flex-wrap justify-content-around">
				<a href="#" class="btn btn-primary shadow">Vedi i Corsi</a>
			</div>
		  </div>
		</div>
		
	 </c:forEach> 
</div>