Algoritmo busqueda_del_tesoro
	Definir intentos, x, d, tesoroX, tesoroY Como Entero
	intentos = 5
	tesoroX = Aleatorio(1,5)
	tesoroY = Aleatorio(1,5)
	Mientras intentos > 0 Hacer
		Escribir "introduce coordenadas X (del 1 al 5): "
		leer x
		Escribir "introduce coordenadas Y (del 1 al 5): "
		leer d
		si x = tesoroX y d = tesoroY Entonces
			escribir "FELICIDADES! encontraste el tesoro. "
			intentos <- 0
		sino 
			escribir "no hay nada aqui. intenta de nuevo"
				intentos <- intentos - 1
		FinSi
	FinMientras
	si intentos = 0 Entonces
		Escribir "juego terminado. el tesoro estaba en: (", tesoroX,",", tesoroY,")"
		
	FinSi
FinAlgoritmo
