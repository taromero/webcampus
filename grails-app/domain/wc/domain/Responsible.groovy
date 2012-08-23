package wc.domain

class Responsible extends User{

	static hasMany = [students: Student]
	
}
