object gerente {

	method neto() = 15000

}

object cadete {

	method neto() = 20000

}

object vendedor {

	var ventas = 1

	method neto() = 16000 * ventas

	method activarAumentoPorMuchasVentas() {
		ventas = 1.25
	}

	method desactivarAumentoPorMuchasVentas() {
		ventas = 1
	}

}


object vendedor2 {

	const neto = 16000
	var aumento = false

	method neto() {
		if (aumento) {
			return neto * 1.25
		}
		return neto
	}

	method activarAumentoPorMuchasVentas() {
		aumento = true
	}

	method desactivarAumentoPorMuchasVentas() {
		aumento = false
	}

}
