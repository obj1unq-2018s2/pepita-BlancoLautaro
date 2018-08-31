import comidas.*

object pepon {
	var energia = 0
	
	method energia() { return energia }
	method comer(comida, gramos) { energia += (comida.energiaPorGramo()* gramos) / 2  }
	method volar(kms) { energia -= 1 + (kms/2)}
	method haceLoQueQuieras() { self.volar(1) }
}

object pipa {
	var kmsVolados = 0
	var gramosIngeridos = 0
	
	method comer(comida, gramos) { gramosIngeridos += gramos }
	method volar(kms) { kmsVolados += kms }
	method kmsRecorridos() { return kmsVolados }
	method gramosIngeridos() { return gramosIngeridos }
	method haceLoQueQuieras() { } 
	// pregunta: ¿por qué es necesario agregar este método, sin código
	// Para que el objeto sea polimorfico con las demas aves.
}
