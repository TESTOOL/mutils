	<%@include file="/WEB-INF/includeTemplate.inc"%>
	
	<div data-theme="b" data-role="header" data-position="fixed">
		<h1>
			<spring:message code="comun.cabecera.titulo" />
		</h1>
	</div>
	
	<div data-role="content">
		
		<p align="center"><img src="${staticsUrl}/aa17a/images/logoDpto_<spring:message code="app.idioma" />.png" /></p>
		
		<ul data-role="listview" data-ajax="false" data-inset="true" data-theme="d">
			<li data-role="list-divider"><spring:message code="menu.estaciones" /></li>
			<li><a href="<%= request.getContextPath()%>/estaciones/mapa?R01HNoPortal=true" rel="external" data-transition="slide"><img src="${staticsUrl}/aa17a/images/mapa_menu.png" alt="<spring:message code="menu.estacionesCercanas" />" class="ui-li-icon ui-corner-none"/><spring:message code="menu.estacionesCercanas" /></a></li>
			<li><a href="<%= request.getContextPath()%>/estaciones/busqueda?R01HNoPortal=true" rel="external" data-transition="slide"><img src="${staticsUrl}/aa17a/images/buscar_menu.png" alt="<spring:message code="menu.buscarEstacion" />" class="ui-li-icon ui-corner-none"/><spring:message code="menu.buscarEstacion" /></a></li>					
		</ul>
		
		<ul data-role="listview" data-ajax="false" data-inset="true" data-theme="d">
			<li data-role="list-divider"><spring:message code="menu.idioma" /></li>
			<li><a href="<%= request.getContextPath()%>/inicio?R01HNoPortal=true&locale=es" rel="external" data-transition="slide" data-rel="dialog"><spring:message code="menu.castellano" /></a></li>
			<li><a href="<%= request.getContextPath()%>/inicio?R01HNoPortal=true&locale=eu" rel="external" data-transition="slide"><spring:message code="menu.euskera" /></a></li>
		</ul>
		
	</div>
	
	<div data-role="footer" class="ui-bar" data-theme="d">
		<p>
			<img src="${staticsUrl}/aa17a/images/logoGV.png"/ class="float-left" alt="Eusko Jaurlaritza / Gobierno Vasco" />
			<a href="http://www.euskadi.net" class="float-right" >
				<img src="${staticsUrl}/aa17a/images/logoEuskadiNet.png" alt="Euskadi.net"/>
			</a>
		</p>
	</div>