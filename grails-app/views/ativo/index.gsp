<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Ativos</title>
		<g:javascript library="jquery" />
	    
	    <script type="text/javascript">
	    function carregarLista(){
	    <g:remoteFunction controller="ativo" action="lista" update="divLista" />
	    }
		function excluir(id){
		if (confirm("Deseja excluir o item?")){
<g:remoteFunction controller="ativo" action="excluir" update="divLista" id="'+id+'" />
				   
			} 

			}
		function cancelar(){
				jQuery("#divForm").html("") 
			}

	</script>
	
	</head>
	<body>
	
		<sec:ifLoggedIn>
		Olá, admin!
		<a href="/Ativos/j_spring_security_logout">Sair</a>
		</sec:ifLoggedIn>&nbsp;	
		
		<g:remoteLink controller="ativo" action="adicionar" update="divForm" class="btn btn-primary btn-sm">Adicionar</g:remoteLink>
		
		<div id="divLista">	
	<g:render template="lista" model="[ativos: ativos]"></g:render>
		</div>
		
		<div id="divForm"></div>
	
	</body>
</html>