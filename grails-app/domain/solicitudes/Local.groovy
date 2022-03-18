package solicitudes

class Local {

    String nombre
    String descripcion

    static belongsTo = [departamento:Departamento]
    static hasMany = [medio:Medio]
    static constraints = {

        nombre(blank: false)
        descripcion(nullable: true)

    }
}
