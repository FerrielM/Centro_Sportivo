<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-dark bg-gradient navbar-expand-lg cb1 sticky-top shadow bottom-border-jim">
  <div class="container-fluid px-5">
  
    <a class="navbar-brand d-inline-flex" href="<spring:url value="/index"/>">
    	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#0dcaf0" class="bi bi-dribbble" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M8 0C3.584 0 0 3.584 0 8s3.584 8 8 8c4.408 0 8-3.584 8-8s-3.592-8-8-8zm5.284 3.688a6.802 6.802 0 0 1 1.545 4.251c-.226-.043-2.482-.503-4.755-.217-.052-.112-.096-.234-.148-.355-.139-.33-.295-.668-.451-.99 2.516-1.023 3.662-2.498 3.81-2.69zM8 1.18c1.735 0 3.323.65 4.53 1.718-.122.174-1.155 1.553-3.584 2.464-1.12-2.056-2.36-3.74-2.551-4A6.95 6.95 0 0 1 8 1.18zm-2.907.642A43.123 43.123 0 0 1 7.627 5.77c-3.193.85-6.013.833-6.317.833a6.865 6.865 0 0 1 3.783-4.78zM1.163 8.01V7.8c.295.01 3.61.053 7.02-.971.199.381.381.772.555 1.162l-.27.078c-3.522 1.137-5.396 4.243-5.553 4.504a6.817 6.817 0 0 1-1.752-4.564zM8 14.837a6.785 6.785 0 0 1-4.19-1.44c.12-.252 1.509-2.924 5.361-4.269.018-.009.026-.009.044-.017a28.246 28.246 0 0 1 1.457 5.18A6.722 6.722 0 0 1 8 14.837zm3.81-1.171c-.07-.417-.435-2.412-1.328-4.868 2.143-.338 4.017.217 4.251.295a6.774 6.774 0 0 1-2.924 4.573z"/>
		</svg>

<span class="ms-3 d-none d-md-inline-flex" style="font-family: 'Lean Foreword', sans-serif; font-size: 2rem;">Centro Sportivo Big Jim</span>
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto me-2 mb-2 mb-lg-0">
        <li class="nav-item">
        </li>
        
        <li class="nav-item">
          <a class="nav-link fw-bold text-uppercase" href="<spring:url value="/index"/>"><span class="text-jim">Home</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link fw-bold text-uppercase" href="<spring:url value="/corsi"/>"><span class="text-jim">Corsi</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link fw-bold text-uppercase" href="<spring:url value="/istruttori"/>"><span class="text-jim">Istruttori</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link fw-bold text-uppercase" href="<spring:url value="/login"/>"><span class="text-jim">Login</span></a>
        </li>
        
        <li class="navbar-brand nav-item">
        	<a class="btn btn-jim btn-outline-jim align-self-end d-inline-flex" href="<spring:url value="/cart"/>">
	    	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#ffffff" class="bi bi-cart" viewBox="0 0 16 16">
			  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		  </svg> 
	    </a> 
        </li>
        
      </ul>
	   
    </div>
    
  </div>
</nav>