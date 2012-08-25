import wc.domain.Student
import wc.security.Role
import wc.security.SecUserRole

class BootStrap {

	def grailsApplication
	
    def init = { servletContext ->
		environments {
			development {
				def dbCreateProperty = grailsApplication.config.dataSource.dbCreate
				if(dbCreateProperty == 'create' || dbCreateProperty == 'create-drop'){
					def adminRole = Role.findByAuthority('ADMIN') ?: new Role(authority: 'ADMIN').save(failOnError: true)
					
					def student = Student.build()
					student.password = 'p'
					student.save()
					SecUserRole.create student, adminRole
				}
			}
			production {
	
			}
		}
    }
    def destroy = {
    }
}
