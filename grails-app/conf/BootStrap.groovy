import wc.domain.Student
import wc.security.Role
import wc.security.SecUser
import wc.security.SecUserRole

class BootStrap {

	def grailsApplication
	
    def init = { servletContext ->
		Student.enableHibernateFilter('deletedFilter')
		environments {
			test{
				
			}
			development {
				def dbCreateProperty = grailsApplication.config.dataSource.dbCreate
				if(dbCreateProperty == 'create' || dbCreateProperty == 'create-drop'){
					def adminRole = Role.findByAuthority('ADMIN') ?: new Role(authority: 'ADMIN').save(failOnError: true)
					
					Student student = Student.build()
					student.email = 'a@tomy.com'
					student.password = 'p'
					student.save()
					SecUserRole.create student, adminRole
					Student.build(lowDate: new Date())
					
					Student student2 = Student.build()
					student2.email = 'a@b.com'
					student2.password = 'p'
					student2.save()
					SecUserRole.create student2, adminRole
					Student.build(lowDate: new Date())
				}
			}
			production {
				
			}
		}
    }
    def destroy = {
    }
}
