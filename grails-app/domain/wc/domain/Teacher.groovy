package wc.domain

class Teacher extends User{
	
	static hasMany = [courses: Course]

}
