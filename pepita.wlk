import wollok.vm.*
object pepita {
  var energia = 100
  method volar(kilometros) {
    energia = energia - (10 + kilometros)
  }
  method descansar() {
    energia = energia + 10
  }

  method comer (alimento) {
    energia = energia + alimento.valorEnergetico()
    
  }
}

object alpiste {
  method valorEnergetico() {
    return 20 
  }
}

object manzana {
  const energiaBase = 5 
  var madurez = 1
  method valorEnergetico() {
    return energiaBase * madurez
  } 
  method madurar() {
    madurez = madurez + self.valorEnergetico() * 0.1
  }
}
