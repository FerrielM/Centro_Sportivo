<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
<div class="card bg-dark w-75 my-5 mx-auto shadow">
  <div class="card-body">
  
  <div id="nameError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, i caratteri inseriti in nome o cognome non sono ammessi, si prega di riprovare.
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="passwordError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, la conferma password non coincide con la password scelta, si prega di riprovare.
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="genderError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, selezionare un genere!
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="emailError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, l'indirizzo email inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="telError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, il numero di telefono inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="addressError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, l'indirizzo inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div id="capError" class ="alert alert-danger alert-dismissible fade show align-items-center justify-content-center" role="alert" style="display:flex">
		<div>
			 &nbsp; Attenzione, il CAP inserito non è valido! Si prega di riprovare
		</div>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
    <h5 class="card-title text-center mb-3">Sign-up</h5>
        <form method="POST" action="registrazione/convalida" accept-charset="ISO-8859-1">
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Nome</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="Nome" required>
	        </div>
	        <div class="input col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Cognome</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="Cognome" required>
	        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Password</label>
	            <input type="password" class="form-control bg-dark text-white" placeholder="Password" required>
	        </div>
	        <div class="col-md-6 col-12 p-2">
	        	<label class="d-none d-md-block">Conferma la password</label>
	            <input type="password" class="form-control bg-dark text-white" placeholder="Conferma Password" required>
	        </div>
	        </div>
	        <div class="p-2">
	            <label>Genere</label>
	            <div>
	                <select class="form-select w-25 bg-dark text-white" required>
	                    <option value="" hidden>Seleziona</option>
	                    <option value="male">Maschio</option>
	                    <option value="female">Femmina</option>
	                    <option value="female">Altro</option>
	                </select>
	            </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">E-mail</label>
		            <input type="email" class="form-control bg-dark text-white" placeholder="Indirizzo e-mail" required></input>
		        </div>
	            <div class="col-md-6 col-12 p-2">
		            <label class="d-none d-md-block">Telefono</label>
		            <input type="tel" class="form-control bg-dark text-white" placeholder="Numero di telefono" required></input>
		        </div>
	        </div>
	        <div class="row g-0 d-flex flex-wrap">
	        <div class="col-md-6 col-12 p-2">
	            <label class="d-none d-md-block">Indirizzo</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="Indirizzo" required></input>
	        </div>
	        <div class="col-md-6 col-12 p-2">
	            <label class="d-none d-md-block">CAP</label>
	            <input type="text" class="form-control bg-dark text-white" placeholder="CAP" required>
	        </div>
	        </div>
	        <div class="d-flex flex-wrap justify-content-around align-items-center">
		        <div class="form-check mt-2">
				  <input class="form-check-input mx-2" type="checkbox" value="accepted" id="accept" required>
				  <label class="form-check-label" for="accept">
				    Accetta termini e condizioni
				  </label>
				</div>
		    	<button id="submitReg" class="btn btn-lg btn-jim shadow mt-2 w-25">Iscriviti</button>
	        </div>
	  </form>
	</div>
	</div>
	<h5 class="text-center"><span class="badge bg-dark">Hai già un account? <a href="<spring:url value="/login"/>">Fai il login qui</a>!</span></h5>
  </div>