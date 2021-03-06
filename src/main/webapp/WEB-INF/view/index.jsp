<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

<div class="container mt-5 d-flex flex-column flex-md-row justify-content center justify-content-md-evenly align-items-center align-items-md-start bottom-border-jim">
<table class="table table-striped table-hover table-dark m-4 w-25 shadow">
		<thead>
			<tr>
				<th colspan="3" class="text-center">I Nostri Orari:</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td>Luned??: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Marted??: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Mercoled??: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Gioved??: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Venerd??: </td><td class="text-center">|</td><td class="text-center">7.00 - 23.00</td>
		</tr>
		<tr>
			<td>Sabato: </td><td class="text-center">|</td><td class="text-center">10.00 - 20.00</td>
		</tr>
		<tr>
			<td>Domenica: </td><td class="text-center">|</td><td class="text-center">CHIUSO</td>
		</tr>
		</tbody>
	</table>
	
	<table class="table table-striped table-dark m-4 w-50 shadow">
		<thead>
			<tr>
				<th colspan="3" class="text-center">I Nostri Corsi:</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td colspan="2" class="text-center highlight">Luned??: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Marted??: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Mercoled??: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Gioved??: </td>
		</tr>
		<tr>
			<td>7.00 - 23.00</td><td class="text-center">|</td>
		</tr>
		<tr>
			<td colspan="2" class="text-center highlight">Venerd??: </td>
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
<%-- 
<h5 class="text-center text-uppercase title-home d-none d-lg-block m-3">I nostri corsi</h5><h5 class="text-center text-uppercase title-home-sm d-block d-lg-none m-3">I nostri corsi</h5>
<div class="container my-2 d-flex flex-row justify-content-evenly align-items-start bottom-border-jim">
	<table  class="table table-fluid table-borderless mb-4 w-75">
			<c:forEach items="${corsi}" var="corso">
			<tr>
				<td>
					<div class="card bg-dark text-white card-home">
					  <img src='<c:url value="/static/images/${corso.img}"/>' class="card-img-top img-fluid" alt="${corso.nome}">
					  <div class="card-img-overlay d-none d-lg-flex justify-content-center align-items-center text-uppercase">
					    <h5 class="card-title title-home">${corso.nome}</h5>
					  </div>
					  <div class="card-img-overlay d-none d-sm-flex d-lg-none justify-content-center align-items-center text-uppercase" id="card">
					    <h5 class="card-title title-home-sm">${corso.nome}</h5>
					  </div>
					  <div class="card-body d-block d-sm-none" id="corsi-desc">
					  	<h5 class="card-title title-home-xs text-uppercase">${corso.nome}</h5>
					  	<p class="card-text">${corso.descrizione}</p>
  					</div>
					</div>	
				</td>
			</tr>
			</c:forEach>
	</table>
</div> --%>

<h5 class="text-center text-uppercase title-home d-none d-lg-block m-3">Il nostro staff</h5><h5 class="text-center text-uppercase title-home-sm d-block d-lg-none m-3">Il nostro staff</h5>
<div class="container my-2 d-flex flex-row justify-content-evenly align-items-start">
<table class="table table-fluid table-borderless mb-4 w-75">
	<c:forEach items="${istruttori}" var="istruttore">
			<tr>
				<td>
					<div class="card bg-dark text-white">
					  <img src='<c:url value="/static/images/${istruttore.nameImg}"/>' class="card-img-top img-fluid card-home" alt="${istruttore.nome}">
					  <div class="card-img-overlay d-none d-lg-flex justify-content-center align-items-center text-uppercase">
					    <h5 class="card-title title-home">${istruttore.nome} ${istruttore.cognome}</h5>
					  </div>
					  <div class="card-img-overlay d-none d-sm-flex d-lg-none justify-content-center align-items-center text-uppercase">
					    <h5 class="card-title title-home-sm">${istruttore.nome} ${istruttore.cognome}</h5>
					  </div>
					  <div class="card-img-overlay d-flex d-sm-none justify-content-center align-items-center text-uppercase">
					    <h5 class="card-title title-home-xs">${istruttore.nome} ${istruttore.cognome}</h5>
					  </div>
					</div>	
				</td>
			</tr>
			</c:forEach>
	</table>
</div>
</div>