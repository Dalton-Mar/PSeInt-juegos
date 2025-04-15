Algoritmo BatallaNaval
    Dimension tablero1[10,10], tablero2[10,10]
    Definir x, d, barcos1, barcos2 como entero
    barcos1 = 3
    barcos2 = 3
	
    // Inicializar tableros vacíos
    Para x <- 1 hasta 5 Hacer
        Para d <- 1 hasta 5 Hacer
            tablero1[x,d] <- "~"
            tablero2[x,d] <- "~"
        FinPara
    FinPara
	
    // Jugador 1 coloca barcos
    Escribir "Jugador 1, ingrese las coordenadas de sus 3 barcos (0-10, 0-10)"
    Para i = 1 hasta 3 Hacer
        Escribir "Barco ", i, ":"
        Leer x, d
        Mientras tablero1[x,d] = "b" Hacer
            Escribir "Ya hay un barco en esa posición. Intente de nuevo."
            Leer x, d
        FinMientras
        tablero1[x,d] = "b"
    FinPara
	
    // Jugador 2 coloca barcos
    Escribir "Jugador 2, ingrese las coordenadas de sus 3 barcos (0-10, 0-10)"
    Para i = 1 hasta 3 Hacer
        Escribir "Barco ", i, ":"
        Leer x, d
        Mientras tablero2[x,d] = "b" Hacer
            Escribir "Ya hay un barco en esa posición. Intente de nuevo."
            Leer x, d
        FinMientras
        tablero2[x,d] = "b"
    FinPara
	
    // Inicio del juego
    Repetir
        // Turno del jugador 1
        Escribir "Jugador 1, ingrese coordenadas de ataque (0-10, 0-10)"
        Leer x, d
        Si tablero2[x,d] = "b" Entonces
            Escribir "¡Impacto!"
            tablero2[x,d] = "x"
            barcos2 = barcos2 - 1
        SiNo
            Escribir "Disparo al agua."
        FinSi
		
        // Verificar si el jugador 1 ganó
        Si barcos2 = 0 Entonces
            Escribir "¡Jugador 1 gana!"
            
        FinSi
		
        // Turno del jugador 2
        Escribir "Jugador 2, ingrese coordenadas de ataque (0-10, 0-10)"
        Leer x, d
        Si tablero1[x,d] = "b" Entonces
            Escribir "¡Impacto!"
            tablero1[x,d] = "x"
            barcos1 = barcos1 - 1
        SiNo
            Escribir "Disparo al agua."
        FinSi
		
        // Verificar si el jugador 2 ganó
        Si barcos1 = 0 Entonces
            Escribir "¡Jugador 2 gana!"
            
        FinSi
    Hasta Que barcos1 = 0 o barcos2 = 0 
FinAlgoritmo
