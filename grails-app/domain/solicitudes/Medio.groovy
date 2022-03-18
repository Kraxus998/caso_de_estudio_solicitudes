package solicitudes

class Medio {

    String nombre
    String numero_inventario
    String numero_serie
    String marca
    String color
    String modelo
    String descripcion

    static belongsTo = [local: Local]
    static hasMany = [solicitud: Solicitud]

    static constraints = {

        nombre(blank: false)
        numero_inventario (blank: false, size: 1..11)
        numero_serie(blank: false, size: 10..10)
        marca(blank: false)
        color(blank: false)
        modelo(blank: false)
        descripcion(nullable: true)

    }
}
