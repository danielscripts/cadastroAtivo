package ativos

class Ativo {
	String nome
	
	Network network
	Local local
	Fabricante fabricante
	Modelo modelo
	Tipo tipo
	
	static constraints = {
		nome nullable:false, blank:false
    }
}
