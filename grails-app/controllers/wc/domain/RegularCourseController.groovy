package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class RegularCourseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [regularCourseList: RegularCourse.list(params), regularCourseTotal: RegularCourse.count()]
    }

    def create() {
        [regularCourse: new RegularCourse(params)]
    }

    def save() {
        def regularCourse = new RegularCourse(params)
        if (!regularCourse.save(flush: true)) {
            render(view: "create", model: [regularCourse: regularCourse])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), regularCourse.id])
        redirect(action: "show", id: regularCourse.id)
    }

    def show() {
        def regularCourse = RegularCourse.get(params.id)
        if (!regularCourse) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), params.id])
            redirect(action: "list")
            return
        }

        [regularCourse: regularCourse]
    }

    def edit() {
        def regularCourse = RegularCourse.get(params.id)
        if (!regularCourse) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), params.id])
            redirect(action: "list")
            return
        }

        [regularCourse: regularCourse]
    }

    def update() {
        def regularCourse = RegularCourse.get(params.id)
        if (!regularCourse) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (regularCourse.version > version) {
                regularCourse.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'regularCourse.label', default: 'RegularCourse')] as Object[],
                          "Another user has updated this RegularCourse while you were editing")
                render(view: "edit", model: [regularCourse: regularCourse])
                return
            }
        }

        regularCourse.properties = params

        if (!regularCourse.save(flush: true)) {
            render(view: "edit", model: [regularCourse: regularCourse])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), regularCourse.id])
        redirect(action: "show", id: regularCourse.id)
    }

    def delete() {
        def regularCourse = RegularCourse.get(params.id)
        if (!regularCourse) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), params.id])
            redirect(action: "list")
            return
        }

        try {
            regularCourse.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'regularCourse.label', default: 'RegularCourse'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
