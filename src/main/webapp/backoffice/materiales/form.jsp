<%@page import="com.ipartek.formacion.nidea.controller.backoffice.MaterialesController"%>
<%@include file="/templates/head.jsp" %>
<%@include file="/templates/navbar.jsp" %>
<%@include file="/templates/alert.jsp" %>

<div class="container">
	<div class="form-group row">
		<a class="btn btn-outline-dark btn-lg" href="backoffice/materiales">Volver</a>
	</div>
	<form action="" method="post">
	  <div class="form-group row">
	    <label for="id" class="col-sm-2 col-form-label">ID:</label>
	    <div class="col-sm-2">
	      <input type="text" class="form-control" name="id" readonly value="${material.id}">
	    </div>
	  </div>
	  <div class="form-group row">
	    <label for="nombre" class="col-sm-2 col-form-label">Material</label>
	    <div class="col-sm-5">
	      <input type="text" value="${material.nombre}" class="form-control" name="nombre" placeholder="Introduce el nombre del material" >
	    </div>
	  </div>
	  <div class="input-group ">
	    <label for="precio" class="col-sm-2 col-form-label">Precio</label>
	    <div class="input-group-append">
	      <input type="text" class="form-control" value="${material.precio}" name="precio" placeholder="Introduce el precio">
	      <span class="input-group-text">&euro;</span>
	    </div>
	   
	  </div>
	</div>
	<br>  
	<div class="form-group row">
	    <div class="col-sm-12">
	      <button type="submit" class="btn btn-primary btn-lg btn-block">Crear</button>
	   </div>
	  </div>
	  <div class="form-group row">
	    <div class="col-sm-6">
	      <button type="submit" class="btn btn-success btn-lg btn-block">Modificar</button>
	    </div>
	    <div class="col-sm-6">
	      <button type="submit" class="btn btn-danger btn-lg btn-block">Eliminar</button>
	    </div>
	  </div>
	</form>
</div>


<jsp:include page="/templates/footer.jsp"></jsp:include>