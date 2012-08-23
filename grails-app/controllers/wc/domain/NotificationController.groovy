package wc.domain

import org.springframework.dao.DataIntegrityViolationException

class NotificationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [notificationList: Notification.list(params), notificationTotal: Notification.count()]
    }

    def create() {
        [notification: new Notification(params)]
    }

    def save() {
        def notification = new Notification(params)
        if (!notification.save(flush: true)) {
            render(view: "create", model: [notification: notification])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'notification.label', default: 'Notification'), notification.id])
        redirect(action: "show", id: notification.id)
    }

    def show() {
        def notification = Notification.get(params.id)
        if (!notification) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'notification.label', default: 'Notification'), params.id])
            redirect(action: "list")
            return
        }

        [notification: notification]
    }

    def edit() {
        def notification = Notification.get(params.id)
        if (!notification) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'notification.label', default: 'Notification'), params.id])
            redirect(action: "list")
            return
        }

        [notification: notification]
    }

    def update() {
        def notification = Notification.get(params.id)
        if (!notification) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'notification.label', default: 'Notification'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (notification.version > version) {
                notification.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'notification.label', default: 'Notification')] as Object[],
                          "Another user has updated this Notification while you were editing")
                render(view: "edit", model: [notification: notification])
                return
            }
        }

        notification.properties = params

        if (!notification.save(flush: true)) {
            render(view: "edit", model: [notification: notification])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'notification.label', default: 'Notification'), notification.id])
        redirect(action: "show", id: notification.id)
    }

    def delete() {
        def notification = Notification.get(params.id)
        if (!notification) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'notification.label', default: 'Notification'), params.id])
            redirect(action: "list")
            return
        }

        try {
            notification.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'notification.label', default: 'Notification'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'notification.label', default: 'Notification'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
