<%@page import="com.ipartek.formacion.nidea.controller.backoffice.MaterialesController"%>
<%@include file="/templates/head.jsp" %>
<%@include file="/templates/navbar.jsp" %>
<%@include file="/templates/alert.jsp" %>

<h1>BACKOFFICE Materiales</h1>

Buscador
<form action="backoffice/materiales" method="get">
	<input type="hidden" name="op" value="<%=MaterialesController.OP_BUSQUEDA%>">
	<input type="text" name="search" required placeholder="Nombre del Material">
	<input type="submit" value="Buscar">	
</form>


<ol>
	<c:forEach items="${materiales}" var="material">
		<c:set var="clase" value="" />	
		<c:choose>
			<c:when test="${material.precio > 25}">
				<c:set var="clase" value="text-danger" />
			</c:when>
			<c:when test="${material.precio > 6}">
				<c:set var="clase" value="text-primary" />
			</c:when>
		</c:choose>	
		<li>
			<a href="backoffice/materiales?id=${material.id}&op=<%=MaterialesController.OP_MOSTRAR_FORMULARIO%>">
				${material.nombre} - <span class="${clase}">${material.precio} &euro;</span>
			</a>
		</li>	
	</c:forEach>
</ol>

<jsp:include page="/templates/footer.jsp"></jsp:include>