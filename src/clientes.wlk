object ludmila {
	method valorKilometro()= 18
}

object anaMaria{
	var estaEconomicamenteEstable = true
	
	method cambiarSituacionEconomica(){
		estaEconomicamenteEstable = !estaEconomicamenteEstable
	}
	method estaEconomicamenteEstable() = estaEconomicamenteEstable
	method valorKilometro(){
		if (estaEconomicamenteEstable){
			return 30
		}
		else{
		    return 25
		    }
	}
}

object teresa{
	var property valorKilometro = 22
}

object melina{
	var paraQuienTrabaja
	
	method paraQuienTrabaja()= paraQuienTrabaja
	method paraQuienTrabaja(nuevaPersona){
		if (nuevaPersona == self)
			self.error("No puede trabajar para si misma")
		paraQuienTrabaja = nuevaPersona
	}
	method valorKilometro(){
		return ((paraQuienTrabaja.valorKilometro()) - 3)
	}
}