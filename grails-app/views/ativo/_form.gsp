
<div class="container">
	<div class="row">	
        <div class="col-md-12">

<div id="divMensagem"></div>



<g:formRemote name="formAtivo" url="[controller: 'ativo', action: 'salvar']" update="divMensagem"
onSuccess="carregarLista()">

<form>
    <div class="form-group">
     <label for="inputEmail">Nome<input type="text" name="nome"  class="form-control" placeholder="Nome" value="${ativo.nome}" /></label>
     <label for="inputEmail">Tipo<input type="text" name="tipo"  class="form-control" placeholder="Tipo" value="${ativo.tipo?.tipo}" /></label> 
   	  </div>
 <div class="form-group">
  <label for="inputEmail">Fabricante<input type="text" name="fabricante"  class="form-control" placeholder="Fabricante"  value="${ativo.fabricante?.fabricante}" /></label> 
     <label for="inputEmail">Modelo<input type="text" name="modelo"  class="form-control" placeholder="Modelo" value="${ativo.modelo?.modelo}" /></label> 
    </div>
     <div class="form-group">
    <label for="inputEmail">Ip<input type="text" name="ip"  class="form-control" placeholder="Fabricante"  value="${ativo.network?.ip}" /></label> 
    <label for="inputEmail">Máscara<input type="text" name="mascara"  class="form-control" placeholder="Fabricante"  value="${ativo.network?.mascara}" /></label> 
</div>  
<div class="form-group">
    <label for="inputEmail">Local<input type="text" name="local"  class="form-control" placeholder="Fabricante"   value="${ativo.local?.local}" /></label> 
</div>
	<input type="submit" class="btn btn-primary" name="btnSalvar" value="Salvar" />
	<input type="button" class="btn btn-danger" name="btnCancelar" value="Sair" onClick="cancelar()" />
    <input type="hidden" name="id" value="${ativo.id}" />

</form>
</g:formRemote>

</div>
</div>
</div>
