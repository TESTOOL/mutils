<%@include file="/WEB-INF/includeTemplate.inc"%>

<div data-role="panel" id="panelMenu" data-display="overlay">
	<ul data-role="listview" data-ajax="false" data-inset="true" data-theme="d">
		<li data-role="list-divider"><spring:message code="menu.estaciones" /></li>
		<li><a href="<%= request.getContextPath()%>/estaciones/mapa?R01HNoPortal=true" rel="external" data-transition="slide"><spring:message code="menu.estacionesCercanas" /></a></li>
		<li><a href="<%= request.getContextPath()%>/estaciones/busqueda?R01HNoPortal=true" rel="external" data-transition="slide"><spring:message code="menu.buscarEstacion" /></a></li>					
	</ul>
	
	<ul data-role="listview" data-ajax="false" data-inset="true" data-theme="d">
		<li data-role="list-divider"><spring:message code="menu.idioma" /></li>
		<li><a href="<%= request.getContextPath()%>/inicio?R01HNoPortal=true&locale=es" rel="external" data-transition="slide"><spring:message code="menu.castellano" /></a></li>
		<li><a href="<%= request.getContextPath()%>/inicio?R01HNoPortal=true&locale=eu" rel="external" data-transition="slide"><spring:message code="menu.euskera" /></a></li>
	</ul>
	
	<a href="#panelMenu" data-rel="close" data-icon="delete" data-role="button" data-mini="true"><spring:message code="menu.ocultar" /></a>
</div><!-- /panel -->