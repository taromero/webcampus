package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class SubjectAssignmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [subjectAssignmentList: SubjectAssignment.list(params), subjectAssignmentTotal: SubjectAssignment.count()]
    }

    def create() {
        [subjectAssignment: new SubjectAssignment(params)]
    }

    def save() {
        def subjectAssignment = new SubjectAssignment(params)
        if (!subjectAssignment.save(flush: true)) {
            render(view: "create", model: [subjectAssignment: subjectAssignment])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), subjectAssignment.id])
        redirect(action: "show", id: subjectAssignment.id)
    }

    def show() {
        def subjectAssignment = SubjectAssignment.get(params.id)
        if (!subjectAssignment) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), params.id])
            redirect(action: "list")
            return
        }

        [subjectAssignment: subjectAssignment]
    }

    def edit() {
        def subjectAssignment = SubjectAssignment.get(params.id)
        if (!subjectAssignment) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), params.id])
            redirect(action: "list")
            return
        }

        [subjectAssignment: subjectAssignment]
    }

    def update() {
        def subjectAssignment = SubjectAssignment.get(params.id)
        if (!subjectAssignment) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (subjectAssignment.version > version) {
                subjectAssignment.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'subjectAssignment.label', default: 'SubjectAssignment')] as Object[],
                          "Another user has updated this SubjectAssignment while you were editing")
                render(view: "edit", model: [subjectAssignment: subjectAssignment])
                return
            }
        }

        subjectAssignment.properties = params

        if (!subjectAssignment.save(flush: true)) {
            render(view: "edit", model: [subjectAssignment: subjectAssignment])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), subjectAssignment.id])
        redirect(action: "show", id: subjectAssignment.id)
    }

    def delete() {
        def subjectAssignment = SubjectAssignment.get(params.id)
        if (!subjectAssignment) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            subjectAssignment.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'subjectAssignment.label', default: 'SubjectAssignment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
