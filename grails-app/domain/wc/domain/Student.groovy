package wc.domain

class Student extends User{

	static hasMany = [courses: Course, exams: Exam, responsibles: Responsible, 
						attendances: Attendance]

}