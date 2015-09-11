	<%@include file="/WEB-INF/includeTemplate.inc"%>
	
	<div data-theme="b" data-role="header" data-position="fixed" data-position-fixed="true" >
		<a data-rel="back" data-icon="back" data-direction="reverse"><spring:message code="comun.volver" /></a>
		<h1>
			<spring:message code="comun.cabecera.titulo" />
		</h1>
	</div>
	
	<div data-role="content" class="contenido">
				
		<h2><spring:message code="ayuda.titulo" /></h2>
		
		<div data-role="collapsible" data-collapsed="false">
			<h4><spring:message code="ayuda.indiceCalidadAire" /></h4>
			<table class="tablaDatos" style="width: 100%;border-collapse: collapse;border-spacing: 2px;">
				<thead style="display: none">
					<tr>
						<th colspan="3"><spring:message code="ayuda.indiceCalidadAire" /></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="banda" items="${listBandas}" varStatus="indiceBanda">
						<tr>
							<td width="80%">${banda.descripcion}</td>
							<td width="20%"><img src="${staticsUrl}/aa17a/images/${banda.icono}" alt="" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>	
						
	
		<div data-role="collapsible" data-collapsed="false">
			<h4><spring:message code="ayuda.contaminantes" /></h4>
			<table class="tablaDatos" style="width: 100%;border-collapse: collapse;border-spacing: 2px;">
				<thead style="display: none">
					<tr>
						<th colspan="3"><spring:message code="ayuda.contaminantes" /></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="contaminante" items="${listContaminantes}" varStatus="indiceContaminante">
						<tr>
							<td width="30%">${contaminante.nombreContaminante}</td>
							<td width="70%">${contaminante.descripcion}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</div>