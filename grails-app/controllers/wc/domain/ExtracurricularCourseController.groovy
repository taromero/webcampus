package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class ExtracurricularCourseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [extracurricularCourseList: ExtracurricularCourse.list(params), extracurricularCourseTotal: ExtracurricularCourse.count()]
    }

    def create() {
        [extracurricularCourse: new ExtracurricularCourse(params)]
    }

    def save() {
        def extracurricularCourse = new ExtracurricularCourse(params)
        if (!extracurricularCourse.save(flush: true)) {
            render(view: "create", model: [extracurricularCourse: extracurricularCourse])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), extracurricularCourse.id])
        redirect(action: "show", id: extracurricularCourse.id)
    }

    def show() {
        def extracurricularCourse = ExtracurricularCourse.get(params.id)
        if (!extracurricularCourse) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), params.id])
            redirect(action: "list")
            return
        }

        [extracurricularCourse: extracurricularCourse]
    }

    def edit() {
        def extracurricularCourse = ExtracurricularCourse.get(params.id)
        if (!extracurricularCourse) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), params.id])
            redirect(action: "list")
            return
        }

        [extracurricularCourse: extracurricularCourse]
    }

    def update() {
        def extracurricularCourse = ExtracurricularCourse.get(params.id)
        if (!extracurricularCourse) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (extracurricularCourse.version > version) {
                extracurricularCourse.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse')] as Object[],
                          "Another user has updated this ExtracurricularCourse while you were editing")
                render(view: "edit", model: [extracurricularCourse: extracurricularCourse])
                return
            }
        }

        extracurricularCourse.properties = params

        if (!extracurricularCourse.save(flush: true)) {
            render(view: "edit", model: [extracurricularCourse: extracurricularCourse])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), extracurricularCourse.id])
        redirect(action: "show", id: extracurricularCourse.id)
    }

    def delete() {
        def extracurricularCourse = ExtracurricularCourse.get(params.id)
        if (!extracurricularCourse) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), params.id])
            redirect(action: "list")
            return
        }

        try {
            extracurricularCourse.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'extracurricularCourse.label', default: 'ExtracurricularCourse'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
