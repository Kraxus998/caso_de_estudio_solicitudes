package solicitudes

class Persona {

    String primer_nombre
    String segundo_nombre
    String primer_apellido
    String segundo_apellido

    static hasMany = [solicitud:Solicitud]

    static constraints = {

        primer_nombre(blank: false)
        segundo_nombre(blank: false)
        primer_apellido(blank: false)
        segundo_apellido(blank: false)

    }
}
