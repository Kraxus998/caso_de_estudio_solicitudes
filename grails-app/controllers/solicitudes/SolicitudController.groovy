package solicitudes

class SolicitudController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [solicitudInstanceList: Solicitud.list(params), solicitudInstanceTotal: Solicitud.count()]
    }

    def create = {
        def solicitudInstance = new Solicitud()
        solicitudInstance.properties = params
        return [solicitudInstance: solicitudInstance]
    }

    def save = {
        def solicitudInstance = new Solicitud(params)
        if (solicitudInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), solicitudInstance.id])}"
            redirect(action: "show", id: solicitudInstance.id)
        } else {
            render(view: "create", model: [solicitudInstance: solicitudInstance])
        }
    }

    def show = {
        def solicitudInstance = Solicitud.get(params.id)
        if (!solicitudInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), params.id])}"
            redirect(action: "list")
        } else {
            [solicitudInstance: solicitudInstance]
        }
    }

    def edit = {
        def solicitudInstance = Solicitud.get(params.id)
        if (!solicitudInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), params.id])}"
            redirect(action: "list")
        } else {
            return [solicitudInstance: solicitudInstance]
        }
    }

    def update = {
        def solicitudInstance = Solicitud.get(params.id)
        if (solicitudInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (solicitudInstance.version > version) {

                    solicitudInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'solicitud.label', default: 'Solicitud')] as Object[], "Another user has updated this Solicitud while you were editing")
                    render(view: "edit", model: [solicitudInstance: solicitudInstance])
                    return
                }
            }
            solicitudInstance.properties = params
            if (!solicitudInstance.hasErrors() && solicitudInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), solicitudInstance.id])}"
                redirect(action: "show", id: solicitudInstance.id)
            } else {
                render(view: "edit", model: [solicitudInstance: solicitudInstance])
            }
        } else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def solicitudInstance = Solicitud.get(params.id)
        if (solicitudInstance) {
            try {
                solicitudInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        } else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitud.label', default: 'Solicitud'), params.id])}"
            redirect(action: "list")
        }
    }
}
