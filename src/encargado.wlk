object gimenez {
	var dinero = 3000000
	
	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
	
}
