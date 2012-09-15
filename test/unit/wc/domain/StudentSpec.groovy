package wc.domain

import grails.buildtestdata.mixin.Build
import spock.lang.Specification

@TestFor(Student)
@Build(Student)
class StudentSpec extends Specification{
	
	def 'it should not allow to save students with wrong mails'(){
		given:
			Student student = Student.build();
			student.email = email
		when:
			student.save(failOnError:true, flush:true)
		then:
			Exception ex = thrown()
			ex.message.contains("not a valid e-mail address")
		where:
			email << ['pirulo2gmail.com', 'pirulgmail.com']            
	}
	def 'it should not allow to save two students with the same doc number'(){
		given:
			Student student1 = Student.build()
			student1.docNumber = docNumber
			student1.save()
			Student student2 = Student.build()
			student1.docNumber = docNumber
		when:
			student2.save()
		then:
			Exception ex = thrown()
			System.out.println(ex.message);
			//ex.message.contains("")
		where:
			docNumber = 34845905
	}	
}
