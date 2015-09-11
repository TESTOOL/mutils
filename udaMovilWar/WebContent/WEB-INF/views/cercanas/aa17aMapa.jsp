	<%@include file="/WEB-INF/includeTemplate.inc"%>
	
	<div data-theme="b" data-role="header" data-position="fixed" data-position-fixed="true" >
		<a href="#panelMenu" data-icon="bars"><spring:message code="menu" /></a>
		<h1>
			<spring:message code="comun.cabecera.titulo" />
		</h1>
		<a href="<%= request.getContextPath()%>/estaciones/ayudaMapa?R01HNoPortal=true" data-icon="info" rel="external"><spring:message code="comun.cabecera.ayuda" /></a>
	</div>
	
	<div data-role="content" class="contenedorMapa">
		 <div id="map_canvas" style="width:100%; height:100%"></div>
	</div>
	
	<div class="ocultar">
		<span id="lblEstacionMasCercana"><spring:message code="cercanas.estacionMasCercana" /></span>
		<span id="lblICA"><spring:message code="cercanas.ica" /></span>
		<span id="lblMensajeUbicacion"><spring:message code="cercanas.mensajeHabilitarUbicacion" /></span>
	</div>
	
	
