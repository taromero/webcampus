package wc.domain

class Course{

	static hasMany = [students: Student, teachers: Teacher, exams: Exam]
	
}