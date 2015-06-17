package ativos

class Fabricante {

	String fabricante
	
	Ativo ativo
	
	static belongsTo=[Ativo]
	
	static constraints = {
	
		fabricante nullable:false, blank:false
	
    }
}
