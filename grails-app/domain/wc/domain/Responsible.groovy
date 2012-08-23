package wc.domain

class Responsible extends User{

	static belongsTo = Student //TODO averiguar bien este comportamiento
	static hasMany = [students: Student]
	
}
