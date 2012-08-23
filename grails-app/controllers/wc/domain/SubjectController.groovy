package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class SubjectController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [subjectList: Subject.list(params), subjectTotal: Subject.count()]
    }

    def create() {
        [subject: new Subject(params)]
    }

    def save() {
        def subject = new Subject(params)
        if (!subject.save(flush: true)) {
            render(view: "create", model: [subject: subject])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'subject.label', default: 'Subject'), subject.id])
        redirect(action: "show", id: subject.id)
    }

    def show() {
        def subject = Subject.get(params.id)
        if (!subject) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        [subject: subject]
    }

    def edit() {
        def subject = Subject.get(params.id)
        if (!subject) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        [subject: subject]
    }

    def update() {
        def subject = Subject.get(params.id)
        if (!subject) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (subject.version > version) {
                subject.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'subject.label', default: 'Subject')] as Object[],
                          "Another user has updated this Subject while you were editing")
                render(view: "edit", model: [subject: subject])
                return
            }
        }

        subject.properties = params

        if (!subject.save(flush: true)) {
            render(view: "edit", model: [subject: subject])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'subject.label', default: 'Subject'), subject.id])
        redirect(action: "show", id: subject.id)
    }

    def delete() {
        def subject = Subject.get(params.id)
        if (!subject) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        try {
            subject.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
