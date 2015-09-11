	<%@include file="/WEB-INF/includeTemplate.inc"%>
	
	<div data-theme="b" data-role="header" data-position="fixed" data-position-fixed="true" >
		<a data-rel="back" data-icon="back" data-direction="reverse"><spring:message code="comun.volver" /></a>
		<h1>
			<spring:message code="comun.cabecera.titulo" />
		</h1>
		<a href="<%= request.getContextPath()%>/estaciones/ayuda?R01HNoPortal=true" data-icon="info" rel="external" ><spring:message code="comun.cabecera.ayuda" /></a>
	</div>
	
	<div data-role="content" class="contenido">
		<h2><span id="lblNombre">${estacion.nombreEstacion}</span></h2>
		<h4><span id="lblDireccion">${estacion.direccionEstacion}&nbsp;-&nbsp;${estacion.nombreMunicipio}&nbsp;(${estacion.nombreProvincia})</span></h4>
		<p><span><spring:message code="detalle.ultimaMedidaHoraria" />:</span>&nbsp;<span id="lblUltimaMedida">${ultimaMedidaHoraria}</span> GMT</p>
		
		<!-- solo dibujo el bloque de avisos por estación si existen avisos activos  -->
		<c:if test="${not empty listAvisos}">
			<div data-role="collapsible" data-collapsed="false">
				<h4><spring:message code="detalle.avisos" /></h4>
				<table class="tablaDatos" style="width: 100%;border-collapse: collapse;border-spacing: 2px;">
					<thead style="display: none">
						<tr>
							<th><spring:message code="detalle.avisos" /></th>
						</tr>
					</thead>
					<tbody id="tbAvisos">
						<c:forEach var="aviso" items="${listAvisos}" varStatus="indiceAviso">
							<tr>
								<td>${aviso.textoAviso}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>

		<div data-role="collapsible" data-collapsed="false">
			<h4><spring:message code="ayuda.indiceCalidadAire" /></h4>
			<table class="tablaDatos" style="width: 100%;border-collapse: collapse;border-spacing: 2px;">
				<thead style="display: none">
					<tr>
						<th colspan="2"><spring:message code="ayuda.indiceCalidadAire" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td width="80%"><span style="color:${estacion.banda.colorBanda};font-weight:bold;">${estacion.banda.descripcion}</span></td>
						<td width="20%"><img src="${staticsUrl}/aa17a/images/${estacion.banda.icono}"></td>
					</tr>
				</tbody>
			</table>
		</div>
		
		
		<div data-role="collapsible" data-collapsed="false">
			<h4><spring:message code="ayuda.contaminantes" /></h4>
			<table class="tablaDatos" style="width: 100%;border-collapse: collapse;border-spacing: 2px;">
				<thead style="display: none">
					<tr>
						<th colspan="2"><spring:message code="ayuda.contaminantes" /></th>
					</tr>
				</thead>
				<tbody id="tbContaminantes">
					<c:forEach var="datoHorario" items="${listDatosHorarios}" varStatus="indiceContaminante">
						<tr>
							<td width="60%">${datoHorario.contaminante.nombreContaminante}</td>
							<td width="20%">${datoHorario.ultimoValorHorario}&nbsp;<small>(${datoHorario.contaminante.unidadMedida})</small></td>
							<td width="20%">
							<!-- solo dibujo el icono si la banda no es nula  -->
								<c:if test="${not empty datoHorario.banda}">
									<img src="${staticsUrl}/aa17a/images/${datoHorario.banda.icono}">
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
		
	</div>