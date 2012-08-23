package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class CourseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [courseList: Course.list(params), courseTotal: Course.count()]
    }

    def create() {
        [course: new Course(params)]
    }

    def save() {
        def course = new Course(params)
        if (!course.save(flush: true)) {
            render(view: "create", model: [course: course])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'course.label', default: 'Course'), course.id])
        redirect(action: "show", id: course.id)
    }

    def show() {
        def course = Course.get(params.id)
        if (!course) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'course.label', default: 'Course'), params.id])
            redirect(action: "list")
            return
        }

        [course: course]
    }

    def edit() {
        def course = Course.get(params.id)
        if (!course) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'course.label', default: 'Course'), params.id])
            redirect(action: "list")
            return
        }

        [course: course]
    }

    def update() {
        def course = Course.get(params.id)
        if (!course) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'course.label', default: 'Course'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (course.version > version) {
                course.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'course.label', default: 'Course')] as Object[],
                          "Another user has updated this Course while you were editing")
                render(view: "edit", model: [course: course])
                return
            }
        }

        course.properties = params

        if (!course.save(flush: true)) {
            render(view: "edit", model: [course: course])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'course.label', default: 'Course'), course.id])
        redirect(action: "show", id: course.id)
    }

    def delete() {
        def course = Course.get(params.id)
        if (!course) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'course.label', default: 'Course'), params.id])
            redirect(action: "list")
            return
        }

        try {
            course.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'course.label', default: 'Course'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'course.label', default: 'Course'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
