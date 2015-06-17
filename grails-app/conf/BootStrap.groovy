import comum.Permissao
import comum.User
import comum.UserPermissao

class BootStrap {

   
    def init = { servletContext ->
		
		
		Permissao admin = Permissao.findByAuthority("ROLE_ADMIN")
		if (admin == null){
			admin = new Permissao(authority: "ROLE_ADMIN").save(flush:true)
		}
		
		User administrador = User.findByUsername("administrador")
    	if(administrador == null){
			administrador == new User(username: "administrador", password: "123456",
				 enabled: true, accountExpired: false, accountLocked: false,
				 passwordExpired: false).save(flush:true)
		}
		
		if(UserPermissao.findByUserAndPermissao(administrador,admin) == null)
 {
	 	new UserPermissao(user: administrador, permissao: admin).save(flush:true)
	 }
    }
	
    def destroy = {
    }
}