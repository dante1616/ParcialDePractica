import guerreros.*

object alianza {
  const guerreros = []
  method guerreros() = guerreros
  method reclutar(guerrero){
    if (guerrero.salud() > 50 and guerrero.poder() >= 25) {
      guerreros.add(guerrero)
    }
  }
  method entrenarIndividual(guerrero){
    guerrero.entrenar()
  }
  method entregarEjercito(){
    guerreros.forEach({g => g.entrenar()})
  }
  method cantidadGuerrero(){
    return guerreros.size()
  }
  method poderTotalDelEjercito(){
    return guerreros.sum({g => g.poder() + 25})
  }

  method sonPoderosos(){
    return guerreros.all({g => g.poder()>50})
  }
  method tieneGuerreroCampeon(){
    return guerreros.any({g => g.esCampeon()})
  }
  method ejercitoInvencible(){
    return self.sonPoderosos() || self.tieneGuerreroCampeon()
  }
  method guerrrosDebiles(unValor){ 
    return guerreros.filter({g => g.salud() < unValor})
  }
  method ganarBatalla(unValor){
    return self.poderTotalDelEjercito() > unValor
  }
  method guerreroConMenorSalud(){
    return guerreros.min({g => g.salud()})
  }
  method guerreroConMayorSalud() {
    return guerreros.max({g => g.salud()})
  }

  method pocaSaludYMuchoPoder(){
    return self.guerreroConMenorSalud().poder() > self.guerreroConMayorSalud().poder()
  }
  method listaDeCampeones(){
    return guerreros.filter({g => g.esCampeon()}).map({g => g.nombre()})
  }

}


