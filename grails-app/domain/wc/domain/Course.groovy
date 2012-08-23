package wc.domain

class Course{
	
	static belongsTo = [Student, Teacher] //TODO averiguar bien este comportamiento
	static hasMany = [students: Student, teachers: Teacher, exams: Exam]
	
}