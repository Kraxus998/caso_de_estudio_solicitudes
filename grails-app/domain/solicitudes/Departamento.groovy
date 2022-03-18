package solicitudes

class Departamento {

    String nombre

    static hasMany = [local:Local]

    static constraints = {

        nombre(blank: false)

    }
}
