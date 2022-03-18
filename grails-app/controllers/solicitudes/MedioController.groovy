package solicitudes

class MedioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [medioInstanceList: Medio.list(params), medioInstanceTotal: Medio.count()]
    }

    def create = {
        def medioInstance = new Medio()
        medioInstance.properties = params
        return [medioInstance: medioInstance]
    }

    def save = {
        def medioInstance = new Medio(params)
        if (medioInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'medio.label', default: 'Medio'), medioInstance.id])}"
            redirect(action: "show", id: medioInstance.id)
        }
        else {
            render(view: "create", model: [medioInstance: medioInstance])
        }
    }

    def show = {
        def medioInstance = Medio.get(params.id)
        if (!medioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'medio.label', default: 'Medio'), params.id])}"
            redirect(action: "list")
        }
        else {
            [medioInstance: medioInstance]
        }
    }

    def edit = {
        def medioInstance = Medio.get(params.id)
        if (!medioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'medio.label', default: 'Medio'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [medioInstance: medioInstance]
        }
    }

    def update = {
        def medioInstance = Medio.get(params.id)
        if (medioInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (medioInstance.version > version) {
                    
                    medioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'medio.label', default: 'Medio')] as Object[], "Another user has updated this Medio while you were editing")
                    render(view: "edit", model: [medioInstance: medioInstance])
                    return
                }
            }
            medioInstance.properties = params
            if (!medioInstance.hasErrors() && medioInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'medio.label', default: 'Medio'), medioInstance.id])}"
                redirect(action: "show", id: medioInstance.id)
            }
            else {
                render(view: "edit", model: [medioInstance: medioInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'medio.label', default: 'Medio'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def medioInstance = Medio.get(params.id)
        if (medioInstance) {
            try {
                medioInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'medio.label', default: 'Medio'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'medio.label', default: 'Medio'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'medio.label', default: 'Medio'), params.id])}"
            redirect(action: "list")
        }
    }
}
