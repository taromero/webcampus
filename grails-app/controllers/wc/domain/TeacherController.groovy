package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class TeacherController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [teacherList: Teacher.list(params), teacherTotal: Teacher.count()]
    }

    def create() {
        [teacher: new Teacher(params)]
    }

    def save() {
        def teacher = new Teacher(params)
        if (!teacher.save(flush: true)) {
            render(view: "create", model: [teacher: teacher])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'teacher.label', default: 'Teacher'), teacher.id])
        redirect(action: "show", id: teacher.id)
    }

    def show() {
        def teacher = Teacher.get(params.id)
        if (!teacher) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
            redirect(action: "list")
            return
        }

        [teacher: teacher]
    }

    def edit() {
        def teacher = Teacher.get(params.id)
        if (!teacher) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
            redirect(action: "list")
            return
        }

        [teacher: teacher]
    }

    def update() {
        def teacher = Teacher.get(params.id)
        if (!teacher) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (teacher.version > version) {
                teacher.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'teacher.label', default: 'Teacher')] as Object[],
                          "Another user has updated this Teacher while you were editing")
                render(view: "edit", model: [teacher: teacher])
                return
            }
        }

        teacher.properties = params

        if (!teacher.save(flush: true)) {
            render(view: "edit", model: [teacher: teacher])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'teacher.label', default: 'Teacher'), teacher.id])
        redirect(action: "show", id: teacher.id)
    }

    def delete() {
        def teacher = Teacher.get(params.id)
        if (!teacher) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
            redirect(action: "list")
            return
        }

        try {
            teacher.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
