<%@include file="/templates/head.jsp" %>
<%@include file="/templates/navbar.jsp" %>
<%@include file="/templates/alert.jsp" %>

<h1>Backofice</h1>

<%
 
	//ArrayList<Material> lista	=(ArrayList<Material>)request.getAttribute("materiales");
  	// Mejor usamos EL => Expresion Lenguage => ${}
  	// Podemos usar cualquier expresion, si no hay expresion pinta la variable

  	out.print("<h2>Materiales</h2>");
  	
%>

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
		<li>${material.nombre} - <span class="${clase}">${material.precio} &euro;</span></li>	
	</c:forEach>
</ol>

<jsp:include page="/templates/footer.jsp"></jsp:include>