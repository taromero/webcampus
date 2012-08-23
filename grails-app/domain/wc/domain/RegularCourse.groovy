package wc.domain

class RegularCourse extends Course{

	String anio
	String division

	static constraints = {
		anio matches: '[0-9]'
	}
}
