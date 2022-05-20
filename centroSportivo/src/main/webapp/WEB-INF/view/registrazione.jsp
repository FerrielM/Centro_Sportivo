<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
<div class="card bg-dark w-75 my-5 mx-auto shadow">
  <div class="card-body">
    <h5 class="card-title text-center mb-3">Sign-up</h5>
        <form method="get">
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Nome</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="Nome" required="required">
	        </div>
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Cognome</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="Cognome" required="required">
	        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Password</label>
	            <input type="password" class="form-control bg-dark text-white" placeholder="Password" required="required">
	        </div>
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Conferma la password</label>
	            <input type="password" class="form-control bg-dark text-white" placeholder="Conferma Password" required="required">
	        </div>
	        </div>
	        <div class="p-2">
	            <label>Genere</label>
	            <div>
	                <select class="form-select w-25 bg-dark text-white" required="required">
	                    <option value="">Seleziona</option>
	                    <option value="male">Maschio</option>
	                    <option value="female">Femmina</option>
	                    <option value="female">Altro</option>
	                </select>
	            </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">E-mail</label>
		            <input type="email" class="form-control bg-dark text-white" placeholder="Indirizzo e-mail" required="required"></input>
		        </div>
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">Telefono</label>
		            <input type="tel" class="form-control bg-dark text-white" placeholder="Numero di telefono" required="required"></input>
		        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	            <label class="d-none d-md-block">Indirizzo</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="Indirizzo" required="required"></input>
	        </div>
	        <div class="col-md-6 col-12 p-2">
	            <label class="d-none d-md-block">CAP</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="CAP" required="required">
	        </div>
	        </div>
	        <div class="d-flex flex-wrap justify-content-around align-items-center">
		        <div class="form-check mt-2">
				  <input class="form-check-input mx-2" type="checkbox" value="accepted" id="accept" required="required">
				  <label class="form-check-label" for="accept">
				    Accetta termini e condizioni
				  </label>
				</div>
		    	<a href="#" class="btn btn-lg btn-jim mt-2 w-25">Iscriviti</a>
	        </div>
	  </form>
	</div>
	</div>
  </div>