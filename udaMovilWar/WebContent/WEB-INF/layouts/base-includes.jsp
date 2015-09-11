 
<%@include file="/WEB-INF/includeTemplate.inc"%>

<!-- Include de los elementos comunes -->
<script type="text/javascript">
	APP_RESOURCES = 'aa17a',
	CTX_PATH = '<%= request.getContextPath()%>/',
	STATICS = '${staticsUrl}',
	RUP = '${staticsUrl}/rup',
	WAR_NAME = 'aa17aMovilidad',
	//model
	LAYOUT = '${empty defaultLayout ?  mvcInterceptor.defaultLayout : defaultLayout}',
	//mvc-config.xml
	LOCALE_COOKIE_NAME = '${localeResolver.cookieName}',
	LOCALE_PARAM_NAME = '${mvcInterceptor.paramName}',
	AVAILABLE_LANGS = '${mvcInterceptor.availableLangs}',
	//breadCrumbs
	LOGGED_USER = '${!empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal ? sessionScope.SPRING_SECURITY_CONTEXT.authentication.credentials.fullName : sessionScope.userData.fullName}',
	DESTROY_XLNETS_SESSION = '${!empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal ? sessionScope.SPRING_SECURITY_CONTEXT.authentication.credentials.destroyXLNetsSession : sessionScope.destroyXLNetsSession}';
	
	//constantes nuevas
	APP_STATICS = STATICS + "/" + APP_RESOURCES
</script>

<%-- <%@include file="/WEB-INF/layouts/includes/rup.scripts.inc"%> --%>
<!--%@include file="/WEB-INF/layouts/includes/rup.scripts.min.js"%-->
<%@include file="/WEB-INF/layouts/includes/aa17a.scripts.inc"%>