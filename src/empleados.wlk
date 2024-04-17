import encargado.*

object galvan {
	var sueldo = 150000
	var deuda = 0
	var dinero = 0
	
	method sueldo(){
		return sueldo
	}
	
	method cobrarSueldo(){
		var deudaADescontar = deuda
		dinero += sueldo
		deuda = (deuda - dinero).max(0)
		dinero = (dinero - deudaADescontar).max(0)
		
		
	}
	
	method aumentarSueldo(cantidad){
		sueldo += cantidad
	}
	
	method gastar(cuanto){
		if (dinero > cuanto) {
			dinero -= cuanto
		}
		else {
			deuda += cuanto - dinero
			dinero = 0
		}
	}
	
	method totalDeuda(){
		return deuda
	}
	
	method totalDinero(){
		return dinero
	}
	
}

object baigorria {
	var sueldo = 150
	var totalSueldo = 0
	
	method cobrarSueldo() {
		totalSueldo += 150
	}
	
	method totalCobrado(){
		return totalSueldo
	}
	
	method sueldo(){
		return sueldo
	}
}


