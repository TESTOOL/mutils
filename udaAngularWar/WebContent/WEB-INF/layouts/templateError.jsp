 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="/WEB-INF/includeTemplate.inc" %>
<%@ taglib prefix="tiles" uri="/WEB-INF/tld/tiles-jsp.tld" %>

<html>
<head>
	<%@include file="/WEB-INF/includeTemplate.inc"%>
	<title><spring:message code="app.title" /></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=8" />
	
	<%@include file="/WEB-INF/layouts/includes/rup.styles.inc"%>
	<!--%@include file="/WEB-INF/layouts/includes/rup.styles.min.css"%-->
	<%@include file="/WEB-INF/layouts/includes/aa17a.styles.inc"%>
	
</head>	
<body>
	<div class="contenedor">	
		<!-- Cabecera -->
		<tiles:insertAttribute name="header" />
		
		<!-- Contenidos -->
		<tiles:insertAttribute name="content"/>
		
		<!-- Pie -->
		<tiles:insertAttribute name="footer" />
		
		<!-- Includes JS -->
		<tiles:insertAttribute name="base-includes" />
	</div>
</body>
</html>