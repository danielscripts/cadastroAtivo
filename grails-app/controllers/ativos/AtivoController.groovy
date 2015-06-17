package ativos

class AtivoController {
	
	def index() {

		def lista=Ativo.list()
	
	render(view:"/ativo/index", model: [ativos: lista])
	
	}

	def adicionar(){
		
	Ativo novoAtivo = new Ativo()
	
	render(template:"/ativo/form", model: [ativo: novoAtivo])
			
	}
	
	def alterar(){
		Ativo ativo = Ativo.get(params.id)
		render(template:"/ativo/form", model: [ativo: ativo])
	}
	
	def lista(){
		def lista = Ativo.list()
		render(template:"/ativo/lista", model: [ativos: lista])
				
	}
	
	

	
	def salvar(){
	Ativo ativo = null
	if(params.id)
	{
		ativo = Ativo.get(params.id)
	}else{
		ativo = new Ativo()
		ativo.tipo = new Tipo()
		ativo.fabricante = new Fabricante()
		ativo.modelo = new Modelo()
		ativo.network = new Network()
		ativo.local = new Local()
		}
		
	ativo.nome = params.nome
	
	ativo.tipo = new Tipo()
	ativo.tipo.tipo = params.tipo

	ativo.fabricante = new Fabricante()
	ativo.fabricante.fabricante = params.fabricante

	ativo.modelo = new Modelo()
	ativo.modelo.modelo = params.modelo
	
	ativo.network = new Network()
	ativo.network.ip = params.ip
	ativo.network.mascara = params.mascara
	
	ativo.local = new Local()
	ativo.local.local = params.local
	
	ativo.validate()
	if(!ativo.hasErrors()){
		
		ativo.save(flush:true)
		render("Salvo com sucesso")
	}else{
		render("Falhou")
	}
	}
	def excluir(){
		Ativo ativo = Ativo.get(params.id)
		ativo.delete(flush:true)
		
		def lista = Ativo.list()
		render(template:"/ativo/lista", model: [ativos: lista])
	}
	
	
}

