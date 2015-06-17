
<div class="container">
	<div class="row">	
        <div class="col-md-12">
        <h4>Lista de Ativos</h4>
        <div class="table-responsive">
        

<table id="mytable" class="table table-bordred table-striped">
<tr>
       
	<th>Nome</th>
	<th>Tipo</th>
	<th>Fabricante</th>
	<th>Modelo</th>
	<th>Ip</th>
	<th>Máscara</th>
	<th>Local</th>
<th>Ações</th>
</tr>


<g:each var="ativo" in="${ativos}"> 
<tr>
	<td>${ativo.nome}</td>
	<td>${ativo.tipo?.tipo}</td>   
	<td>${ativo.fabricante?.fabricante}</td>
	<td>${ativo.modelo?.modelo}</td>
	<td>${ativo.network?.ip}</td>
	<td>${ativo.network?.mascara}</td>
	<td>${ativo.local?.local}</td>
	<td>	

	<g:remoteLink controller="ativo" action="alterar" update="divForm" id="${ativo.id}"><button class="btn btn-primary btn-xs">Editar</button></g:remoteLink>
	&nbsp;	
	<a href="#" onclick="excluir('${ativo.id}')"><button class="btn btn-danger btn-xs">Excluir</button></a>
	 
	</td>
</tr>

</g:each>

</table>

	</div>
	</div>
	</div>
	</div>
  
    
   