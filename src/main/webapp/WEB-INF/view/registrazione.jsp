<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<script src="<c:url value="/static/javascript/script.js" />"></script>

<div class="container">
<div class="card cb1 w-75 my-5 mx-auto shadow">
  <div class="card-body">
  
  <div id="nameError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, i caratteri inseriti nel nome non sono ammessi, si prega di riprovare.
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	  <div id="surnameError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, i caratteri inseriti nel cognome non sono ammessi, si prega di riprovare.
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="passwordError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, la conferma password non coincide con la password scelta, si prega di riprovare.
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="emailError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, l'indirizzo email inserito non è valido! Si prega di riprovare.
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="telError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, il numero di telefono inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="addressError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, l'indirizzo inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="capError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:none">
		<div>
			 &nbsp; Attenzione, il CAP inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
    <h5 class="card-title text-center mb-3">Registrazione</h5>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Nome</label>
	            <input type="text" id="nomeReg" class="form-control bg-dark text-white" placeholder="Nome" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Cognome</label>
	            <input type="text" id="cognomeReg" class="form-control bg-dark text-white" placeholder="Cognome" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Username</label>
	            <input type="text" id="usernameReg" class="form-control bg-dark text-white" placeholder="Username" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">E-mail</label>
		        <input type="text" id="emailReg" class="form-control bg-dark text-white" placeholder="Indirizzo e-mail"></input>
		        <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">Codice Fiscale</label>
		            <input type="text" id="codicefiscaleReg" class="form-control bg-dark text-white" placeholder="Codice Fiscale" required></input>
		            <div class="form-text">* Campo obbligatorio</div>
		        </div>
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">Data di Nascita</label>
	            	<input type="date" id="annoReg" class="form-control bg-dark text-white" placeholder="Data di Nascita" required>
	            	<div class="form-text">* Campo obbligatorio</div>
		        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
		        <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">Indirizzo</label>
		            <input type="text" id="indirizzoReg" class="form-control bg-dark text-white" placeholder="Indirizzo" required></input>
		            <div class="form-text">* Campo obbligatorio</div>
		        </div>
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">Città</label>
	            	<input type="text" id="cittaReg" class="form-control bg-dark text-white" placeholder="Città" required>
	            	<div class="form-text">* Campo obbligatorio</div>
		        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	            <label class="d-none d-md-block">CAP</label>
	            <input type="text" id="capReg" class="form-control bg-dark text-white" placeholder="CAP" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        <div class="col-md-6 col-12 p-2">
	            <label class="d-none d-md-block">Provincia</label>
	            <input type="text" id="provinciaReg" class="form-control bg-dark text-white" placeholder="Provincia" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Password</label>
	            <input type="password" id="passwordReg" class="form-control bg-dark text-white" placeholder="Password" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Conferma la password</label>
	            <input type="password" id="passwordValidReg" class="form-control bg-dark text-white" placeholder="Conferma Password" required>
	            <div class="form-text">* Campo obbligatorio</div>
	        </div>
	        </div>
	        <div class="d-flex flex-wrap justify-content-around align-items-center">
		        <div class="form-check mt-2">
				  <input class="form-check-input mx-2" type="checkbox" value="accepted" id="accept" required>
				  <label class="form-check-label" for="accept">
				    Accetta termini e condizioni
				  </label>
				  <div class="form-text">* Campo obbligatorio</div>
				</div>
		    	<button id="submitReg" class="btn btn-lg btn-jim shadow mt-2 mb-3 w-25">Iscriviti</button>
	        </div>
	</div>
	</div>
	<h5 class="text-center"><span class="badge cb1">Hai già un account? <a href="<spring:url value="/login"/>">Fai il login qui</a>!</span></h5>
  </div>