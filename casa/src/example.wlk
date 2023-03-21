/** First Wollok example */
object casa{
	var montoReparaciones = 0
	var viveres = 50
	
	method viveresSuficientes(){
		return viveres > 40
	}
	
	method necesitaReparaciones(){
		return montoReparaciones > 0
	}
	
	method todoEnOrden(){
		return self.viveresSuficientes() and not self.necesitaReparaciones()
	}
	
	method romper(monto){
		montoReparaciones += monto
	}
}

object cuenta{
	var saldo = 0
	method depositar(monto){
		saldo += monto
		
		return 'el dinero se ingresó correctamente'
	}
	method extraer(monto){
		var texto = 'hola'
		if (saldo >= monto){
			saldo -= monto
			texto = 'dinero depositado correctamente'
		}
		else{
			texto = 'no tiene suficiente saldo'
		}
		return texto
	}
	method saldo(){
		return saldo
	}
}

object cuentaConGatos{
		var saldo = 0
	method depositar(monto){
		saldo += monto
		saldo -= 20
		
		return 'el dinero se ingresó correctamente'
	}
	method extraer(monto){
		var texto = 'hola'
		if (saldo >= monto+20){
			saldo -= monto
			saldo -= 20
			texto = 'dinero extraido correctamente'
		}
		else{
			texto = 'no tiene suficiente saldo'
		}
		return texto
	}
	method saldo(){
		return saldo
	}
}

object cuentaDoble{
	var principal = 3000
	var secundaria = 200000
	
	method depositar(monto){
		principal += monto
		
		return 'el dinero se ingresó correctamente'
	}
	method extraer(monto){
		var texto = 'hola'
		if (principal >= monto){
			principal -= monto
			texto = 'dinero extraido de la cuenta principal'
		}
		else if (secundaria >= monto){
			secundaria -= monto
			texto = 'dinero extraido de la cuenta secundaria'
		}
		else{
			texto = 'no tiene dinero suficiente'
		}
		return texto
	}
	method saldo(){
		return principal + secundaria
	}
}
