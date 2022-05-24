<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="h-100">
	<head>
	<meta charset="UTF-8">
	<title>Centro Sportivo Big Jim | <tiles:insertAttribute name="title"/></title>
	<link rel="icon" type="image/svg" href="static/images/dribbble.svg">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/style.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	</head>
	
	<body class="d-flex flex-column h-100 text-light g-0 background">
		<div class="container-fluid g-0">
			<tiles:insertAttribute name="header"/>
			<tiles:insertAttribute name="content"/>
		</div>
		
		<tiles:insertAttribute name="footer"/>


<script type="text/javascript">

 document.getElementById("pagamento").style.display = "none";
 document.getElementById('btn-pagamento').onclick = function () {
	
	   if (document.getElementById("pagamento").style.display !== "none") {
		  document.getElementById("pagamento").style.display = "none";
		  } else { 
			   document.getElementById("pagamento").style.display = "block"; 
		   } 
		}; 
		
</script>
	</body>
</html>