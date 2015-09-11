 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="/WEB-INF/includeTemplate.inc" %>
<%@ taglib prefix="tiles" uri="/WEB-INF/tld/tiles-jsp.tld" %>

<html>
<head>
	<%@include file="/WEB-INF/includeTemplate.inc"%>
	<title><spring:message code="app.title" /></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
<%-- 	<%@include file="/WEB-INF/layouts/includes/rup.styles.inc"%> --%>
	<!--%@include file="/WEB-INF/layouts/includes/rup.styles.min.css"%-->
	<%@include file="/WEB-INF/layouts/includes/aa17a.styles.inc"%>
	
	<!-- Includes JS -->
	<tiles:insertAttribute name="base-includes" />
	<tiles:insertAttribute name="includes" />
	
</head>	
<body>
	<div data-role="page" id="page1">	
		
		<!-- Menu -->
		<tiles:insertAttribute name="menu"/>
		
		<!-- Contenidos -->
		<tiles:insertAttribute name="content"/>
		
		
	</div>
</body>
</html>