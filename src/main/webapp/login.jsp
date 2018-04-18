<%@include file="/templates/head.jsp" %>
<%@include file="/templates/navbar.jsp" %>
<%@include file="/templates/alert.jsp" %>

<div id="login">

  <form class="form-signin" action="login" method="post">     
	  <label for="usuario">Nombre Usuario</label>
      <div class="form-label-group">
        <input type="text" class="form-control"
               name="usuario" 
               placeholder="Nombre Usuario" 
               required autofocus>
               
      
      </div>
	  <label for="password">Contrase�a</label>
      <div class="form-label-group">
        <input type="password" 
               name="password" 
               class="form-control" 
               placeholder="Contrase�a" required>
               
      
      </div>
     
      <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      
    </form>

</div>
<jsp:include page="templates/footer.jsp"></jsp:include>