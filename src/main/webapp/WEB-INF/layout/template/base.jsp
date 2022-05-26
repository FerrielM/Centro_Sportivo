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
	<link href="http://fonts.cdnfonts.com/css/lean-foreword" rel="stylesheet">
	<link href='<c:url value="/static/css/style.css"/>'  rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="static/javascript/script.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	</head>
	
	<body class="d-flex flex-column h-100 text-light background">
		<div class="container-fluid g-0">
			<tiles:insertAttribute name="header"/>
			<tiles:insertAttribute name="content"/>
		</div>
		
		<tiles:insertAttribute name="footer"/>

	</body>
</html>