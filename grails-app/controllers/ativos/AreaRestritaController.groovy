package ativos

class AreaRestritaController {

    def index() { 
		render(view: "/areaRestrita/logar")
	
	}

	def logar(){
		render(view: "/areaRestrita/logar")
	
	}
	def admin(){
		render(view: "/areaRestrita/admin")
		
	} 
	
	def logout(){
		redirect(action: "logar")
		
	}
}

