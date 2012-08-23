package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class ResponsibleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [responsibleList: Responsible.list(params), responsibleTotal: Responsible.count()]
    }

    def create() {
        [responsible: new Responsible(params)]
    }

    def save() {
        def responsible = new Responsible(params)
        if (!responsible.save(flush: true)) {
            render(view: "create", model: [responsible: responsible])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'responsible.label', default: 'Responsible'), responsible.id])
        redirect(action: "show", id: responsible.id)
    }

    def show() {
        def responsible = Responsible.get(params.id)
        if (!responsible) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'responsible.label', default: 'Responsible'), params.id])
            redirect(action: "list")
            return
        }

        [responsible: responsible]
    }

    def edit() {
        def responsible = Responsible.get(params.id)
        if (!responsible) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responsible.label', default: 'Responsible'), params.id])
            redirect(action: "list")
            return
        }

        [responsible: responsible]
    }

    def update() {
        def responsible = Responsible.get(params.id)
        if (!responsible) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'responsible.label', default: 'Responsible'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (responsible.version > version) {
                responsible.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'responsible.label', default: 'Responsible')] as Object[],
                          "Another user has updated this Responsible while you were editing")
                render(view: "edit", model: [responsible: responsible])
                return
            }
        }

        responsible.properties = params

        if (!responsible.save(flush: true)) {
            render(view: "edit", model: [responsible: responsible])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'responsible.label', default: 'Responsible'), responsible.id])
        redirect(action: "show", id: responsible.id)
    }

    def delete() {
        def responsible = Responsible.get(params.id)
        if (!responsible) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'responsible.label', default: 'Responsible'), params.id])
            redirect(action: "list")
            return
        }

        try {
            responsible.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'responsible.label', default: 'Responsible'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'responsible.label', default: 'Responsible'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
