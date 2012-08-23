package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class ExamController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [examList: Exam.list(params), examTotal: Exam.count()]
    }

    def create() {
        [exam: new Exam(params)]
    }

    def save() {
        def exam = new Exam(params)
        if (!exam.save(flush: true)) {
            render(view: "create", model: [exam: exam])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'exam.label', default: 'Exam'), exam.id])
        redirect(action: "show", id: exam.id)
    }

    def show() {
        def exam = Exam.get(params.id)
        if (!exam) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'exam.label', default: 'Exam'), params.id])
            redirect(action: "list")
            return
        }

        [exam: exam]
    }

    def edit() {
        def exam = Exam.get(params.id)
        if (!exam) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'exam.label', default: 'Exam'), params.id])
            redirect(action: "list")
            return
        }

        [exam: exam]
    }

    def update() {
        def exam = Exam.get(params.id)
        if (!exam) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'exam.label', default: 'Exam'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (exam.version > version) {
                exam.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'exam.label', default: 'Exam')] as Object[],
                          "Another user has updated this Exam while you were editing")
                render(view: "edit", model: [exam: exam])
                return
            }
        }

        exam.properties = params

        if (!exam.save(flush: true)) {
            render(view: "edit", model: [exam: exam])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'exam.label', default: 'Exam'), exam.id])
        redirect(action: "show", id: exam.id)
    }

    def delete() {
        def exam = Exam.get(params.id)
        if (!exam) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'exam.label', default: 'Exam'), params.id])
            redirect(action: "list")
            return
        }

        try {
            exam.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'exam.label', default: 'Exam'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'exam.label', default: 'Exam'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
