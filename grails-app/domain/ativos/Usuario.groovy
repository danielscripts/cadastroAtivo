package ativos

class Usuario {

 	String nome
	String email
	String senha
	 
	static constraints = {
		
		nome nullable:false, blank:false
		email email:true, unique:true
		senha size: 6..10
   
    }
}
