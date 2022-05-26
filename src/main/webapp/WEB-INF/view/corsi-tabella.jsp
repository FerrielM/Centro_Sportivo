<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid">
	<table class="table table-dark w-75 mx-auto my-4">
		<thead>
		<tr>
			<th>Corso:</th>
			<th>Sala:</th>
			<th>Istruttore:</th>
			<th>Date:</th>
			<th>Orario:</th>
			<th>&nbsp;</th>
		</tr>
		</thead>
		<tbody>
			<%-- <c:forEach items="${corsi}" var="corso"> --%>
				<tr>
					<td class="fw-bold">${corso.nome}</td>
					<td>${corso.area}</td>
					<td>${corso.istruttore}</td>
					<td>${corso.date}</td>
					<td>${corso.ora_inizio} - ${corso.ora_fine}</td>
					<td class="text-end">
						<a href='<spring:url value="/corsiform?=id=${corso.id}"/>' class="btn btn-jim btn-small">
							Modifica
						</a>
					</td>
				</tr>
			<%-- </c:forEach> --%>
		</tbody>
	</table>
</div>