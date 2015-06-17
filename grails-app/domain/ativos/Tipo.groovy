package ativos

class Tipo {
	String tipo
	
	Ativo ativo
	
	static belongsTo=[Ativo]
	
	static constraints = {
		
		tipo nullable:false, blank:false

    }
}
