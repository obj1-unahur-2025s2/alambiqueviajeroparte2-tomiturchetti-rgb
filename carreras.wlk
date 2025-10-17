import elAlambiqueViajero.*

object carreras {
    const vehiculosInscriptos = []
    const vehiculosRechazados = []
    var ciudadCarrera = paris

    method inscribirVehiculo(vehiculo) {
        if (ciudadCarrera.puedeLlegar(vehiculo)) {
            vehiculosInscriptos.add(vehiculo)
        }
        if (not ciudadCarrera.puedeLlegar(vehiculo)) {
            vehiculosRechazados.add(vehiculo)
        }
    }

    method cambiarCiudad(nuevaCiudad) {
        ciudadCarrera = nuevaCiudad
    }

    method cualesPuedenParticipar() {
        vehiculosInscriptos.filter({v => ciudadCarrera.puedeLlegar(v)})
    }

    method llamarVehiculos() {
        vehiculosInscriptos.forEach({v => v.desgaste()})
    }
}