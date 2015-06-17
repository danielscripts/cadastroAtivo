package ativos

class Modelo {
	String modelo
	
	Ativo ativo
	
	static belongsTo=[Ativo]
	
	static constraints = {
		
		modelo nullable:false, blank:false

    }
}
