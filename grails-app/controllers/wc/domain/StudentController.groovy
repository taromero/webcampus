package wc.domain

import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException

@Secured('ADMIN')
class StudentController {

    static allowedMethods = [save: "POST", update: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [studentList: Student.list(params), studentTotal: Student.count()]
    }

    def create() {
        [student: new Student(params)]
    }

    def save() {
        def student = new Student(params)
        if (!student.save(flush: true)) {
            render(view: "create", model: [student: student])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'student.label', default: 'Student'), student.id])
        redirect(action: "show", id: student.id)
    }

    def show() {
        def student = Student.get(params.id)
        if (!student) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        [student: student]
    }

    def edit() {
        def student = Student.get(params.id)
        if (!student) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        [student: student]
    }

    def update() {
        def student = Student.get(params.id)
        if (!student) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (student.version > version) {
                student.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'student.label', default: 'Student')] as Object[],
                          "Another user has updated this Student while you were editing")
                render(view: "edit", model: [student: student])
                return
            }
        }

        student.properties = params

        if (!student.save(flush: true)) {
            render(view: "edit", model: [student: student])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'student.label', default: 'Student'), student.id])
        redirect(action: "show", id: student.id)
    }

    def delete() {
        def student = Student.get(params.id)
        if (!student) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        try {
            student.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
