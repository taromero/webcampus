package wc.domain

import wc.security.SecUser;

abstract class User extends SecUser{

	static hasMany = [notifications: Notification]
	
	String firstName
	String lastName
	Date birthDate
	String sex
	String address
	String homePhone
	String mobilePhone
	String docType
	Long docNumber

	static constraints = {
		firstName matches: '[a-zA-ZñÑ]+'
		lastName matches: '[a-zA-ZñÑ]+'
		homePhone matches: '[0-9-]+'
		sex inList:['M', 'F'], editable:false
		docNumber unique:true
	}
}
