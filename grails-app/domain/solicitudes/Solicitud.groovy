package solicitudes

class Solicitud {

    Date fecha_realizada
    Date fecha_aprobada
    Date fecha_denegada
    String obserbaciones
    String descripcion
    String estado

    static belongsTo = [persona:Persona, medio: Medio]
    static hasMany = [medio:Medio]

    static constraints = {

        fecha_realizada(blank: false)
        fecha_aprobada(nullable: true)
        fecha_denegada(nullable: true)
        obserbaciones(nullable: true)
        descripcion(nullable: true)
        estado(nullable: false, inList: ["Aprobada","Denegada","Pendiente"])

    }
}
