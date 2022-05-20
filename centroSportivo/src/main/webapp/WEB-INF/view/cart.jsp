<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid">

  <div class="container mt-4">
    <div class="mb-4">
	<h4 class="mb-3 text-white fw-bold text-center">Il tuo carrello</h4>
      <table class="table table-striped table-hover table-dark my-4 w-75 shadow mx-auto">
      	<tr><th colspan="2">Prodotto</th><th>Prezzo</th></tr>
      	<c:forEach items="${articles}" var="article">
      	<tr>
      		<th colspan="2">${article.name}</th>
      		<th><fmt:formatNumber value="${article.price}" maxFractionDigits="2" minFractionDigits="2" type="currency" currencyCode="EUR" currencySymbol="€"/></th>
      	</tr>
      	</c:forEach>	
      </table>
		        <div class="d-grid gap-2">
		       	 <button class="btn btn-jim w-75 mt-4 mx-auto" id="btn-pagamento" type="submit">Checkout</button>
		        </div>

		<div id="pagamento">
				<hr class="mt-4"><h4 class="mb-3 text-white fw-bold text-center">Pagamento</h4>
				<div class="d-flex justify-content-center w-75 mx-auto">
			        <div class="btn-group my-3" role="group" aria-label="Basic mixed styles example">
			          <input type="radio" class="btn-check" name="btnradio" id="credit" autocomplete="off">
					  <label class="btn btn-outline-info btn-outline-jim text-white fw-bold" for="credit">Carta di credito</label>
					
					  <input type="radio" class="btn-check" name="btnradio" id="debit" autocomplete="off">
					  <label class="btn btn-outline-info btn-outline-jim text-white fw-bold" for="debit">Carta di debito</label>
					
					  <input type="radio" class="btn-check" name="btnradio" id="paypal" autocomplete="off">
					  <label class="btn btn-outline-info btn-outline-jim text-white fw-bold" for="paypal">Paypal</label>
			        </div>
				</div>        
		        <div class="row w-75 mx-auto">
		          <div class="col-md-6 mb-3">
		            <label for="nome" class="fw-bold">Nome dell'intestatario</label>
		            <input type="text" class="form-control" id="nome" placeholder="Nome" required>
		            <div class="invalid-feedback">
		              Questo campo è obbligatorio
		            </div>
		          </div>
		          <div class="col-md-6 mb-3">
		            <label for="numero" class="fw-bold">Numero della carta</label>
		            <input type="text" class="form-control" id="numero" placeholder="Numero carta" required>
		            <div class="invalid-feedback">
		              Questo campo è obbligatorio
		            </div>
		          </div>
		        </div>
		        <div class="row w-75 mx-auto">
		          <div class="col-md-3 mb-3">
		            <label for="scadenza" class="fw-bold">Scadenza</label>
		            <input type="text" class="form-control" id="scadenza" placeholder="Scadenza" required>
		            <div class="invalid-feedback">
		              Questo campo è obbligatorio
		            </div>
		          </div>
		          <div class="col-md-3 mb-3">
		            <label for="scadenza" class="fw-bold">CVV</label>
		            <input type="text" class="form-control" id="cvv" placeholder="CVV" required>
		            <div class="invalid-feedback">
		              Questo campo è obbligatorio
		            </div>
		          </div>
		        </div>
		        <div class="d-grid gap-2">
				    <button class="btn btn-jim w-75 mt-4 mx-auto" id="btn-pagamento" type="submit">Procedi al pagamento</button>
				</div>
		</div>
    </div>
  </div>
</div>