object oficina {
	var primeraOpcion
	var segundaOpcion
	
	method asignarRemiseras(remisera1, remisera2){
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	method cambiarPrimerRemiseraPor(nuevaRemisera){
		primeraOpcion = nuevaRemisera
	}
	method cambiarSegundaRemiserarPor(nuevaRemisera){
		segundaOpcion = nuevaRemisera
	}
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaOpcion, primeraOpcion)
	}
	method remiseraElegidaParaViaje(cliente, kms){
		if (segundaOpcion.precioViaje(cliente, kms) + 30 < primeraOpcion.precioViaje(cliente, kms))
			return segundaOpcion
		else
			return primeraOpcion
	}
}
