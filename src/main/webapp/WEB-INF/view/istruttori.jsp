<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container-fluid my-4 d-flex justify-content-center align-items-start flex-wrap">

	 <c:forEach items="${istruttori}" var="istruttore"> 
	<div class="card rounded-4 cb1 m-5" style="width: 25rem;">
		  <img src='<c:url value="/static/images/${istruttore.nameImg}"/>' class="card-img-top" alt="">
		  <div class="card-body">
		    <h5 class="card-title text-center text-uppercase my-2">${istruttore.nome} ${istruttore.cognome}</h5>
		    <p class="card-text text-justify my-2">	
			 	 ${istruttore.descrizione}
			</p>
		  </div>
		</div>
	 </c:forEach>
</div>