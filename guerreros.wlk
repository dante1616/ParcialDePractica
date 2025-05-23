import alianza.*
object luke{
    const property nombre = "luke"
    var sable = sableVerde
    var salud = 75
    var poder = 5
    method sable() = sable
    method salud() = salud
    method poder() = poder
    method entrenar(){
        salud += 25
        poder += sable.poder()
    }
    method cambiarSable(unSable){
        sable = unSable
    }
    method esCampeon(){
        return self.poder() >= 30
    }
}

object sableVerde {
  method poder() = 15
}

object sableAzul {
    method poder() = 25
}

object yoda {
    const property nombre = "Din Grogu"  
    var usandoLaFuerza = false
    var salud = 30
    var poder = 50
    method salud() = salud
    method poder() = poder
    method alternarFuerza(){
        usandoLaFuerza = !usandoLaFuerza
    }
    method entrenar(){
        if (usandoLaFuerza){
            poder *= 2
        }else{
            salud +=25
        }
    }
    method esCampeon() = true
}

object arturito {
    const property nombre = "R2-D2"
    var salud = 50
    var cantidadReparacion = 0
    method salud() = salud
    method poder() = 80 - (cantidadReparacion * 2)
    method entrenar(){
        salud += 10
        cantidadReparacion += 1
    }
    method esCampeon(){
        return cantidadReparacion.even()
    }
}

object c3po{
    const property nombre = "C-3PO"
    var capacidadReparacion = 3
    method salud() = 80
    method poder() = 30
    method entrenar(){
        capacidadReparacion += 1
    }
    method esCampeon(){
        return capacidadReparacion > (self.poder() * 0.1)
    }
    method repararAlcon(){
        if (self.esCampeon()){
            alconMilenario.mejorarVelocidad(capacidadReparacion * 100)
            alconMilenario.mejorarBlindaje(capacidadReparacion * 100)
        } else{
            alconMilenario.mejorarVelocidad(200)
            alconMilenario.mejorarBlindaje(200)
        }
    }
}

object alconMilenario {
    var velocidad = 500
    var blindaje = 1000
    method velocidad() = velocidad
    method blindaje() = blindaje
    method mejorarVelocidad(unValor){
        velocidad += unValor
    }
    method mejorarBlindaje(unValor){
        blindaje += unValor
    }
}