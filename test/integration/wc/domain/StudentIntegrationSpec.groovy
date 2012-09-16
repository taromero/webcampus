package wc.domain;

import grails.plugin.spock.IntegrationSpec;

public class StudentIntegrationSpec extends IntegrationSpec{

	def 'it should not allow to save students with wrong mails'(){
		when:
			Student student = Student.build(email: email);
		then:
			Exception ex = thrown()
			ex.message.contains("email.invalid")
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
	
}
