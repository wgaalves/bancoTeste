import br.com.imaxgames.bancoTeste.Role
import br.com.imaxgames.bancoTeste.User
import br.com.imaxgames.bancoTeste.UserRole;

class BootStrap {

    def init = { servletContext ->

        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def admin = new User(username: 'admin@imaxgames.com.br',password:'1m4x' , enabled: true ,confirmCode: '').save(flush: true)
        def userAdminRole = new UserRole()
        userAdminRole.user = admin
        userAdminRole.role = adminRole
        userAdminRole.save(flush: true)

    }
    def destroy = {
    }
}
