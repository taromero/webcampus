package wc.domain

class Attendance {

	Student student
	Course course
	Date attendanceDate
	Boolean wasPresent
	Boolean wasHalfPresent
	
	static constraints = {
		student unique: ['course', 'attendanceDate']
	}
}
