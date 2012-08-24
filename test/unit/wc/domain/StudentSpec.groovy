package wc.domain

import grails.buildtestdata.mixin.Build;
import grails.test.mixin.*
import spock.lang.Specification;

@TestFor(Student)
@Build(Student)
class StudentSpec extends Specification{
	
	def 'it should not allow students with wrong mails'(){
		given:
			Student student = Student.build();
			student.email = email
		when:
			student.save(failOnError:true, flush:true)
		then:
			thrown(Exception)
		where:
			email << ['pirulo', 'pirulogmail.com']             
	}
	
}
