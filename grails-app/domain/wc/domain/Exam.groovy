package wc.domain

class Exam {

	static belongsTo = [student: Student]
	
	Course course
	Float result
	Date examDate
	
	static constraints = {
		result scale: 2
	}
}
