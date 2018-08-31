object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

object bigMac {
	method energiaPorGramo() { return 2 }
}

object alcaucil {
	method energiaPorGramo() { return 20 }
}

object sorgo {
	method energiaPorGramo() { return 9 }
}

object mijo {
	var estaSeco = true
	var energia = 20
	method energiaPorGramo() { 
		if (not estaSeco){
			energia = 15
		}
		return energia
	}
	method mojarse() { estaSeco = false }
	method secarse() { estaSeco = true }
}

object canelones{
	var energia = 20
	var tieneQueso = false
	var tieneSalsa = false
	
	method ponerSalsa() {tieneSalsa = true}
	method ponerQueso() {tieneQueso = true}
	method sacarSalsa() {tieneSalsa = false}
	method sacarQueso() {tieneQueso = false}
	
	method energiaPorGramo(){
		if (tieneQueso){
			energia += 7
		}
		if (tieneSalsa){
			energia += 5
		}
		return energia
	}
}