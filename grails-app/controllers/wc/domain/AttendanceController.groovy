package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class AttendanceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [attendanceList: Attendance.list(params), attendanceTotal: Attendance.count()]
    }

    def create() {
        [attendance: new Attendance(params)]
    }

    def save() {
        def attendance = new Attendance(params)
        if (!attendance.save(flush: true)) {
            render(view: "create", model: [attendance: attendance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'attendance.label', default: 'Attendance'), attendance.id])
        redirect(action: "show", id: attendance.id)
    }

    def show() {
        def attendance = Attendance.get(params.id)
        if (!attendance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance.label', default: 'Attendance'), params.id])
            redirect(action: "list")
            return
        }

        [attendance: attendance]
    }

    def edit() {
        def attendance = Attendance.get(params.id)
        if (!attendance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance.label', default: 'Attendance'), params.id])
            redirect(action: "list")
            return
        }

        [attendance: attendance]
    }

    def update() {
        def attendance = Attendance.get(params.id)
        if (!attendance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance.label', default: 'Attendance'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (attendance.version > version) {
                attendance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'attendance.label', default: 'Attendance')] as Object[],
                          "Another user has updated this Attendance while you were editing")
                render(view: "edit", model: [attendance: attendance])
                return
            }
        }

        attendance.properties = params

        if (!attendance.save(flush: true)) {
            render(view: "edit", model: [attendance: attendance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'attendance.label', default: 'Attendance'), attendance.id])
        redirect(action: "show", id: attendance.id)
    }

    def delete() {
        def attendance = Attendance.get(params.id)
        if (!attendance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendance.label', default: 'Attendance'), params.id])
            redirect(action: "list")
            return
        }

        try {
            attendance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'attendance.label', default: 'Attendance'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'attendance.label', default: 'Attendance'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
