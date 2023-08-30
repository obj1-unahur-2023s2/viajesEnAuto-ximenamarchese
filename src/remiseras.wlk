import clientes.*

object roxana{
	method precioViaje(cliente, km){
		return km * cliente.valorKilometro()
	}
}
	
object gabriela{
	method precioViaje(cliente, km){
		return km * cliente.valorKilometro() * 1.2
	}
}

object mariela{
	method precioViaje(cliente, km){
		return 50.max(km * cliente.valorKilometro())
	}
}

object juana{
	method precioViaje(_, km){
		if (km <= 8){
			return 100
		}
		else{
			return 200
		}
	}
}

object lucia{ 
	var reemplazo
	
	method reemplazo()= reemplazo
	method reemplazo(nuevoReemplazo){
		if (nuevoReemplazo == self)
			self.error("No se puede reemplazar a si misma")
		reemplazo = nuevoReemplazo
	}
	method precioViaje(cliente, km){
		return reemplazo.precioViaje(cliente, km)
	}
}