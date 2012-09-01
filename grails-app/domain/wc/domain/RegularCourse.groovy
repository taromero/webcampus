package wc.domain

class RegularCourse extends Course{

	String anio
	String division

	static constraints = {
		anio matches: "['1er Grado','2do Grado']"//Agregar posibles grados y anios, dependiendo el colegio.
	}
}
