package ativos

class Local {

	String local
	
	Ativo ativo
	
	static belongsTo=[Ativo]
	
    static constraints = {
		
		local nullable:false, blank:false
    }
}

