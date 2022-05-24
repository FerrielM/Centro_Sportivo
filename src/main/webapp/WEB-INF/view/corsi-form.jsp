<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid my-5">
<script src="<c:url value="/static/javascript/book_form_script.js"/>"></script>
<div>
	<div id="errorAlert" class="alert alert-danger alert-dismissible mt-4" 
		role="alert" style="display:none;" >
		Operazione impossibile! Riprova più tardi
		<button type="button" class="btn-close" data-bs-dismiss="alert" 
			aria-label="Close"></button>
	</div>
</div>

<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Modifica ${corso.nome}</h5>
	</div>
</div>
<div class="row justify-content-center">
	<div class="col-8">
		<div class="row">
			<div class="col-6">
				<label for="titleCl">Titolo:</label>
				<input type="text" id="titleCl" class="form-control" 
					required="required">
				<div id="titleClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
			<div class="col-6">
				<label for="authorCl">Autore:</label>
				<input type="text" id="authorCl" class="form-control" 
					required="required">
				<div id="authorClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="yearCl">Anno di Pubblicazione:</label>
				<input type="number" id="yearCl"class="form-control" 
					required="required">
				<div id="yearClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
			<div class="col-6">
				<label for="priceCl">Prezzo:</label>
				<input type="number" step="any" id="priceCl" 
					class="form-control" required="required">
				<div id="priceClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<label for="descriptionCl">Descrizione:</label>
				<textarea id="descriptionCl" class="form-control" 
					rows="3" style="resize:none;" required="required"></textarea>
				<div id="descriptionClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<label for="quantityCl">Quantità disponibile:</label>
				<input type="number" id="quantityCl" class="form-control" 
					required="required">
				<div id="quantityClError" style="color:red;display:none">
					Campo non corretto
	    		</div>
			</div>
			<div class="col-6 text-center">
				<button id="btnSave" class="btn btn-primary mt-4">
					Modifica
				</button>
			</div>
		</div>
	</div>
</div>
</div>