<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- REQUESTSCOPE.ISLOGGATO -->

<div class="container-fluid">

<div id="carouselDark" class="carousel slide shadow mb-4" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselDark" data-bs-slide-to="5" aria-label="Slide 6"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="static/images/basket.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="highlight">Basket</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="static/images/child.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="highlight">Judo per i più piccoli</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="static/images/climbing.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="highlight">Arrampicata</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="static/images/fisiotherapy.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="highlight">Crampi? Ci pensano i nostri fisioterapisti!</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="static/images/football.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="highlight">Calcetto con gli amici? Prova i nostri campi!</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="static/images/bilancere.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="highlight">Pesi liberi per una muscolatura da urlo quest'estate.</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon visually-hidden" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselDark" data-bs-slide="next">
    <span class="carousel-control-next-icon visually-hidden" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="mt-5 d-flex flex-row justify-content-evenly align-items-center section">
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