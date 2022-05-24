<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- REQUESTSCOPE.ISLOGGATO -->

<div class="container-fluid">

<div id="carouselDark" class="carousel slide mb-4" data-bs-ride="carousel">
  <div class="carousel-indicators bg-carousel d-none d-lg-inline-flex flex-wrap align-items-center">
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	  <c:forEach items="${numeri}" var="numero">
  	<button type="button" data-bs-target="#carouselDark" data-bs-slide-to="${numero +1}" aria-label="Slide ${numero +2}"></button>
  </c:forEach>
  </div>
  
  <div class="carousel-inner d-flex align-items-center">
    <div class="carousel-item active" data-bs-interval="10000">
       <img src='<c:url value="/static/images/${prodotto.img}"/>' class="d-block w-100" alt="...">
      <div class="carousel-caption pb-5">
        <h5 class="fw-bold d-none d-md-flex justify-content-center">${prodotto.nome}</h5>
      </div>
    </div>
 <c:forEach items="${corsi}" var="corso">
  <div class="carousel-item" data-bs-interval="5000">
       <img src='<c:url value="/static/images/${corso.img}"/>' class="d-block w-100" alt="...">
      <div class="carousel-caption pb-5">
        <h5 class="d-none d-md-flex justify-content-center">${corso.nome}</h5>
      </div>
    </div>
  </c:forEach>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon d-block d-lg-none" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselDark" data-bs-slide="next">
    <span class="carousel-control-next-icon d-block d-lg-none" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="mt-5 d-flex flex-row justify-content-evenly align-items-start section">
<table class="table table-striped table-hover table-dark my-4 w-25 shadow">
		<thead>
			<tr>
				<th colspan="3" class="text-center">I Nostri Orari:</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td>Lunedì: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Martedì: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Mercoledì: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Giovedì: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Venerdì: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Sabato: </td><td class="text-center">|</td><td class="text-center">10.00 - 20.00</td>
		</tr>
		<tr>
			<td>Domenica: </td><td class="text-center">|</td><td class="text-center">CHIUSO</td>
		</tr>
		</tbody>
	</table>
	
	<table class="table table-striped table-hover table-dark my-4 w-50 shadow">
		<thead>
			<tr>
				<th colspan="3" class="text-center">I Nostri Corsi:</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td colspan="2" class="text-center highlight">Lunedì: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Martedì: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Mercoledì: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Giovedì: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Venerdì: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Sabato: </td>
		</tr>
		<tr>
			<td>10.00 - 20.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Domenica: </td>
		</tr>
		<tr>
			<td colspan="2" class="text-center">CHIUSO</td>
		</tr>
		</tbody>
	</table>
</div>
<div class="section"></div>

<div></div>
</div>