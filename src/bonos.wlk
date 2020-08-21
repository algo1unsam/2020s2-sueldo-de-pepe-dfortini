// bono por resultados por porcentaje
object bonoPorcentaje {

	method monto(empleado) {
		return empleado.sueldoNeto() * 10 / 100
	}

}

object bonoMontoFijo {

	method monto(empleado) = 800
}

// agregar bonos por presentismo  
object bonoPresentismoNormal {

	method monto(empleado) {
		return if (empleado.cantidadDeFaltas() == 0) 2000 else if (empleado.cantidadDeFaltas() == 1) 1000 else bonoNulo.monto(empleado)
	}

}

// agregar bonos ajuste y demagogico
object bonoNulo {

	method monto(empleado) = return 0

}

