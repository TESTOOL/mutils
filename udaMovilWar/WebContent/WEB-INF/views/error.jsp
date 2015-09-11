<%@include file="/WEB-INF/includeTemplate.inc"%>

<h2>ERROR</h2> <br>
<a href="<%= request.getContextPath() %>/"><spring:message code="error.volver" /></a>

<h3>Name: </h3>${(empty param)? exception_name : param.exception_name}<br>
<h3>Message: </h3>${(empty param)? exception_message : param.exception_message}<br>
<h3>Trace: </h3>${(empty param)? exception_trace : param.exception_trace}<br>