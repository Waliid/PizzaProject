import fr.iut.jsp.pizzaproject.Role
import fr.iut.jsp.pizzaproject.User
import fr.iut.jsp.pizzaproject.UserRole

class BootStrap 
{

   def init = { servletContext ->

      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

      def testUser = new User(username: 'admin', enabled: true, password: 'admin123')
      testUser.save(flush: true)

      UserRole.create testUser, adminRole, true
	  
   }
}