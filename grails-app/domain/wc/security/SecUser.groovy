package wc.security

class SecUser {

	transient springSecurityService

	String email
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		email email:true, blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
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

	protected void encodePassword() {
		if(springSecurityService){
			password = springSecurityService.encodePassword(password)
		}
	}
}
