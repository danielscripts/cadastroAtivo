package ativos

class Network {

	String ip
	String mascara
	
	Ativo ativo
	
	static belongsTo=[Ativo]
	
	static constraints = {
		
		ip nullable:false, blank:false
		mascara nullable:false, blank:false

    }
}