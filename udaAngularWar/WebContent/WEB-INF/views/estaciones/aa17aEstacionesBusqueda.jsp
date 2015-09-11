	<%@include file="/WEB-INF/includeTemplate.inc"%>
	
	<div data-theme="b" data-role="header" data-position="fixed" data-position-fixed="true" >
		<a href="#panelMenu" data-icon="bars"><spring:message code="menu" /></a>
		<h1>
			<spring:message code="comun.cabecera.titulo" />
		</h1>
	</div>
	
	<div data-role="content" class="contenidoLista">
		<ul data-role="listview" data-filter="true" data-filter-placeholder="<spring:message code="busqueda.escriba" />" data-inset="true">
			
			<c:forEach var="estacion" items="${listEstaciones}" varStatus="indiceEstacion">			
				<li>
					<a href="<%= request.getContextPath()%>/estaciones/detalle/${estacion.idEstacion}?R01HNoPortal=true" rel="external" >
						<h3>${estacion.nombreEstacion}</h3>
						<p>${estacion.direccionEstacion} - ${estacion.nombreMunicipio} (${estacion.nombreProvincia})</p>
					</a>
				</li>
			</c:forEach>
		</ul>
		
	</div>