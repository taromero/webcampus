package wc.domain

class SubjectAssignment {

	Course course
	Subject subject
	String weekDay
	String startSchedule
	String endSchedule
	
	static constraints = {
		course unique: ['subject', 'weekDay', 'startSchedule', 'endSchedule']
		weekDay inList: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves',
							'Viernes', 'Sabado']
		startSchedule matches: '[0-9][0-9]:[0-9][0-9]'
		endSchedule matches: '[0-9][0-9]:[0-9][0-9]'
	}
	
}
