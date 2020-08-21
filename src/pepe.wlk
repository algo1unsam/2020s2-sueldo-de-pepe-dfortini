import categorias.*
import bonos.*

object pepe {

	var property categoria = gerente
	var property bonoPresentismo = bonoNulo
	var property bonoResultado = bonoNulo
	var property cantidadDeFaltas = 0

	method cantidadDeFaltas() {
		return cantidadDeFaltas
	}

	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	method sueldoNeto() = categoria.neto()
	
	/* + el bono por presentismo */
	/* + el bono por resultado */
	/* notar que todos los bonos entienden el mensaje monto(empleado)
	 * en este caso ¿quién es el empleado?
	 */
	method sueldo() = self.sueldoNeto() + self.calcularBonoPresentismo() + self.calcularBonoResultado()
	
	
	method calcularBonoPresentismo() = bonoPresentismo.monto(self)
	
	
	method calcularBonoResultado() = bonoResultado.monto(self) 

}

