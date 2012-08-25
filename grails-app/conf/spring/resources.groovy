// Place your Spring DSL code here
beans = {
	//Esto es para que no haga falta poner el prefijo 'ROLE_' a los nombres de los roles
	roleVoter(org.springframework.security.access.vote.RoleVoter) {
		rolePrefix = ''
	 }
}
