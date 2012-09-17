package wc.domain;

import grails.plugin.spock.IntegrationSpec;

public class StudentIntegrationSpec extends IntegrationSpec{

	def 'it should not allow to save students with wrong mails'(){
		when:
			Student student = Student.build(email: email);
		then:
			Exception ex = thrown()
			ex.message.contains("email.invalid")
			Student.list().size() == 0
		where:
			email << ['pirulo2gmail.com', 'pirulgmail.com']            
	}
	
	def 'it should not allow to save two students with the same doc number'(){
		given: 'a student with x as docNumber'
			def docNumber = 34845905
			Student.build(docNumber: docNumber)
		when: 'another student with the same docNumber is created'
			Student.build(docNumber: docNumber)
		then: 'it should raise an exception and not allow the second student to be persisted'
			Exception ex = thrown()
			ex.message.contains("unique.docNumber")
			Student.list().size() == 1
	}	
	
	def 'it should not find students marked as deleted'(){
		given: 'some students with lowDate and some withOut lowDate (=null)'
			Student.build(firstName:'tomas', lowDate: new Date())
			Student.build(firstName:'mauro')
			Student.build(firstName:'moral', lowDate: new Date())
			Student.build(firstName:'tito')
			def students = Student.list()
		expect: 'it should only find the ones with lowDate == null'
			students.size() == 2
			students.every { it.firstName == 'mauro' || it.firstName == 'tito' }
			students.findAll { it.enabled == false }.size() == 0
	}
	
	def 'it should only delete students logically' (){
		given:
			def student = Student.build(firstName: 'logiDelUser')
		when:
			student.delete(failOnError:true, flush:true)
			def deletedStudent
			def students 
			Student.withoutHibernateFilters(){
				students = Student.list()
				deletedStudent = Student.find { firstName == 'logiDelUser' }
			}
		then:
			students.size() != 0
			deletedStudent.lowDate != null
			deletedStudent.firstName == 'logiDelUser' 
	}

}
