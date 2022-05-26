<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%-- ${corso.img} --%>
<div class="container-fluid my-4 d-flex justify-content-center align-items-start flex-wrap">

	 <c:forEach items="${corsi}" var="corso"> 
		<div class="card rounded-4 cb1 m-5" style="width: 25rem; min-height:auto;">
		  <img src='<c:url value="/static/images/${corso.img}"/>' class="card-img-top" alt="">
		  <div class="card-body">
		    <h5 class="card-title text-center text-uppercase">${corso.nome}</h5>
		    <p class="card-text my-3">	
			 	 ${corso.descrizione}
			</p>
			<div class="d-flex flex-wrap justify-content-center align-self-end" >
				<div class="text-center mt-3 mx-2">
					<a href ='<spring:url value="corsi/viewcorso"/>?id=${corso.id_prodotto}' class="btn btn-jim shadow">Mostra Corso</a>
				</div>
			</div>
		  </div>
		</div>
	 </c:forEach> 	
	 
</div>