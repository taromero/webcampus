package wc.security

class SecUser {

	transient springSecurityService

	String email
	String password
	Date lowDate
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	static constraints = {
		email email:true, blank: false, unique: true
		password blank: false
		lowDate nullable: true
	}

	static mapping = {
		password column: '`password`'
	}

	static hibernateFilters = {
		deletedFilter(condition:'low_date is null', default:true)
	}

	def SecUser(){
		enabled = true
	}
	
	Set<Role> getAuthorities() {
		SecUserRole.findAllBySecUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}
	
	def beforeDelete() {
		//Si llamo a save() ocurre un stackOverflow, nose porque se vuelve a llamar al beforeDelete
		SecUser.executeUpdate("update SecUser su set lowDate = :lowDate where email = :email",
								[lowDate: new Date(), email: email])
		return false
	}
	
	protected void encodePassword() {
		if(springSecurityService){
			password = springSecurityService.encodePassword(password)
		}
	}
}
