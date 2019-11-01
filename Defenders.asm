.data
	 
	backgroundColor:	.word 0x00000000	#negro
	turquesa: 		.word 0x0000bfff
	colorWhite:		.word 0x00ffffff
	gris:			.word 0x009c9c9c
	#amarillo:		.word 0x00CFCF0B	
	cafe:			.word 0x00804000
	azul:			.word 0x000000ff
	Purpura:   		.word 0x005F04B4	
	amarillo: 		.word 0x00FFFF33
	amarillo1: 		.word 0x00FFFF66
	rosado:			.word 0x00CC0099
	rosado1:		.word 0x00FF0099
	verde:			.word 0x0000CC00
	verde1:			.word 0x0000FF00
	colorRojo:		.word 0x00FF0000
	ColorX:			.word 0x00c96f6f
	ColorY:			.word 0x00871e18
	Marco2:			.word 0x00FF8101
	Marco3:			.word 0x0001FFEF
	py:			.word 0		
	px:			.word 0
	hy:			.word 0		
	hx:			.word 0
	vh:			.word 1	
	pv1x:			.word 0
	pv1y:			.word 0
	pr1x:			.word 0
	pr1y:			.word 0
	pa1x:			.word 0
	pa1y:			.word 0
	pv2x:			.word 0
	pv2y:			.word 0
	pr2x:			.word 0
	pr2y:			.word 0
	pa2x:			.word 0
	pa2y:			.word 0
	dir1:			.word 0
	dir2:			.word 0
	dir3:			.word 0
	dir4:			.word 0
	dir5:			.word 0
	dir6:			.word 0
	posdy:			.word 0		
	posdx:			.word 0
	direcd: 		.word 0
	change:			.word 1
	vidajugador: 		.word 0
	score:         		.word 0
	posdv1x:		.word 0
	posdv1y:		.word 0
	posda2x:		.word 0
	posda2y:		.word 0
	posmr1x:		.word 0
	posmr1y:		.word 0
	posmr2x:		.word 0
	posmr2y:		.word 0
	contador:		.word 0
	bomba:			.word 0
	bandera:		.word 0
	bandera1:		.word 1
###### VARIABLES VIDA DE CADA ENEMIGO	
	vv1:			.word 1
	vr1:			.word 1
	va1: 			.word 1
	vv2:			.word 1
	vr2:			.word 1
	va2: 			.word 1
####### CORDENADAS DE ENEMIGOS Y JUGADOR
	nivel: 			.word 1
	x1:			.word 0
	y1:			.word 0
	rx1:			.word 0
	ry1:			.word 0
	rx2:			.word 0
	ry2:			.word 0
	rx3:			.word 0
	ry3:			.word 0
	rx4:			.word 0
	ry4:			.word 0
	rx5:			.word 0
	ry5:			.word 0
	rx6:			.word 0
	ry6:			.word 0
	x2:			.word 0
	y2:			.word 0
	x3:			.word 0
	y3:			.word 0
	x4:			.word 0
	y4:			.word 0
	x5:			.word 0
	y5:			.word 0
	x6:			.word 0
	y6:			.word 0
	cambia:			.word 1
####### BALAS			#x1,y1,u1,x2,y2,u2
	balazos:		.word 0,0,0,0,0,0
.text
NewGame:
	jal ClearBoard
	li $t0,3
	sw $t0, bomba
	sw $t0,vidajugador
	li $a0,3
	li $t0,1
	sw $t0,vv1
	sw $t0,vr1
	sw $t0,va1
	sw $t0,vv2
	sw $t0,vr2
	sw $t0,va2
	sw $t0,nivel
	sw $t0,change
	sw $t0,cambia
	li $t1,0
	sw $t1,py				
	sw $t1,px
	sw $t1,hy				
	sw $t1,hx			
	sw $t1,pv1x			
	sw $t1,pv1y			
	sw $t1,pr1x			
	sw $t1,pr1y			
	sw $t1,pa1x			
	sw $t1,pa1y			
	sw $t1,pv2x			
	sw $t1,pv2y			
	sw $t1,pr2x			
	sw $t1,pr2y			
	sw $t1,pa2x			
	sw $t1,pa2y	
	sw $t1,dir1			
	sw $t1,dir2			
	sw $t1,dir3			
	sw $t1,dir4			
	sw $t1,dir5			
	sw $t1,dir6
	sw $t1,posdx			
	sw $t1,posdy			
	sw $t1,direcd  
	sw $t1,posdv1x			
	sw $t1,posdv1y
	sw $t1,posda2x			
	sw $t1,posda2y			
	sw $t1,contador
############LETRAS PANTALLA INICIO
Digitales:
#E
		li $a0, 2
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 6
		jal DrawVerticalLine
		li $a0, 2
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 4
		jal DrawHorizontalLine
		li $a1, 4	
		jal DrawHorizontalLine
		li $a1, 6	
		jal DrawHorizontalLine
							
#L
		li $a0, 6
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 6
		jal DrawVerticalLine
		li $a0, 6
		li $a1, 6
		lw $a2, colorWhite
		li $a3, 8
		jal DrawHorizontalLine
#3
		li $a0, 13
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 6
		jal DrawVerticalLine
		li $a0, 11
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 12
		jal DrawHorizontalLine
		li $a1, 4	
		jal DrawHorizontalLine
		li $a1, 6	
		jal DrawHorizontalLine
					
#3
		li $a0, 17
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 6
		jal DrawVerticalLine
		li $a0, 15
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 16
		jal DrawHorizontalLine
		li $a1, 4	
		jal DrawHorizontalLine
		li $a1, 6	
		jal DrawHorizontalLine
					
#1
		li $a0, 19
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 6
		jal DrawVerticalLine
#0
		li $a0, 21
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 6
		jal DrawVerticalLine
		li $a0,24
		jal DrawVerticalLine
		li $a0, 22
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 24
		jal DrawHorizontalLine
		li $a1, 6
		jal DrawHorizontalLine	
TEC:
	#LETRA T
		li $a0, 46
		li $a1, 2
		lw $a2, colorWhite
		li $a3, 50
		jal DrawHorizontalLine
		li $a0, 48
		li $a1, 3
		lw $a2, colorWhite
		li $a3, 8
		jal DrawVerticalLine
	#LETRA E
		li $a0, 52
		li $a1, 2
		li $a3, 55
		jal DrawHorizontalLine
		li $a0, 52
		li $a1, 5
		li $a3, 54
		jal DrawHorizontalLine
		li $a0, 52
		li $a1, 8
		li $a3, 55
		jal DrawHorizontalLine
		li $a0, 52
		li $a1, 3
		lw $a2, colorWhite
		li $a3, 8
		jal DrawVerticalLine
	#LETRA C
		li $a0, 57
		li $a1, 2
		li $a3, 60
		jal DrawHorizontalLine
		li $a0, 57
		li $a1, 8
		li $a3, 60
		jal DrawHorizontalLine				
		li $a0, 57
		li $a1, 3
		lw $a2, colorWhite
		li $a3, 7
		jal DrawVerticalLine		
	#LINEA ROJA
		li $a0, 46
		li $a1, 10
		lw $a2, colorRojo
		li $a3, 61
		jal DrawHorizontalLine		
DEFENDER:					
	#letra D	
		lw $a2, amarillo
		li $a1, 15
		li $a3, 28						
		li $a0, 9
		jal DrawVerticalLine
		li $a1, 17
		li $a3, 26						
		li $a0, 13
		jal DrawVerticalLine
		li $a0, 10
		li $a1, 15
		jal DrawPoint
		li $a0, 11
		li $a1, 16
		jal DrawPoint
		li $a0, 12
		li $a1, 16
		jal DrawPoint
		li $a0, 10
		li $a1, 28
		jal DrawPoint
		li $a0, 11
		li $a1, 27
		jal DrawPoint
		li $a0, 12
		li $a1, 27
		jal DrawPoint
	#E
		li $a1, 15
		li $a3, 28						
		li $a0, 15
		jal DrawVerticalLine
		li $a0, 15
		li $a1, 15
		li $a3, 19
		jal DrawHorizontalLine
		li $a1, 20
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
		li $a1, 28
		jal DrawHorizontalLine
	#F
		li $a1, 15
		li $a3, 28						
		li $a0, 21
		jal DrawVerticalLine
		li $a0, 21
		li $a1, 15
		li $a3, 25
		jal DrawHorizontalLine
		li $a1, 20
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
	#E
		li $a1, 15
		li $a3, 28						
		li $a0, 27
		jal DrawVerticalLine
		li $a0, 28
		li $a1, 15
		li $a3, 31
		jal DrawHorizontalLine
		li $a1, 20
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
		li $a1, 28
		jal DrawHorizontalLine
	#N
		li $a1, 15
		li $a3, 28						
		li $a0, 37	
		jal DrawVerticalLine							
		li $a0, 33
		jal DrawVerticalLine
		li $a1, 16
		li $a3, 18									
		li $a0, 34
		jal DrawVerticalLine	
		li $a1, 18
		li $a3, 24			
		li $a0, 35
		jal DrawVerticalLine	
		li $a1, 24
		li $a3, 27			
		li $a0, 36
		jal DrawVerticalLine
	#D
		li $a1, 15
		li $a3, 28						
		li $a0, 39
		jal DrawVerticalLine
		li $a1, 17
		li $a3, 26						
		li $a0, 43
		jal DrawVerticalLine
		li $a0, 40
		li $a1, 15
		jal DrawPoint
		li $a0, 41
		li $a1, 16
		jal DrawPoint
		li $a0, 42
		li $a1, 16
		jal DrawPoint
		li $a0, 40
		li $a1, 28
		jal DrawPoint
		li $a0, 41
		li $a1, 27
		jal DrawPoint
		li $a0, 42
		li $a1, 27
		jal DrawPoint
	#E	
		li $a1, 15
		li $a3, 28						
		li $a0, 45
		jal DrawVerticalLine
		li $a0, 45
		li $a1, 15
		li $a3, 49
		jal DrawHorizontalLine
		li $a1, 20
		jal DrawHorizontalLine
		li $a1, 21
		jal DrawHorizontalLine
		li $a1, 28
		jal DrawHorizontalLine
	#R
		li $a1, 15
		li $a3, 28						
		li $a0, 51
		jal DrawVerticalLine
		li $a1, 16
		li $a3, 19						
		li $a0, 55
		jal DrawVerticalLine
		li $a0, 54
		jal DrawVerticalLine
		li $a0, 51
		li $a1, 15
		li $a3, 54
		jal DrawHorizontalLine
		li $a1,	20 
		jal DrawHorizontalLine
		li $a0, 51
		li $a1, 20
		li $a3, 54
		jal DrawHorizontalLine
		li $a1, 21 
		jal DrawHorizontalLine
		li $a1, 22
		jal DrawHorizontalLine
		li $a1, 23
		li $a3, 24						
		li $a0, 52
		jal DrawVerticalLine
		li $a1, 25
		li $a3, 28
		li $a0, 54
		jal DrawVerticalLine		
		li $a1, 27
		li $a3, 28
		li $a0, 55
		jal DrawVerticalLine			
		li $a1, 23
		li $a3, 26
		li $a0, 53
		jal DrawVerticalLine		
Figuras:
		lw $a2, gris
		li $a1, 32
		li $a3, 35
		li $a0, 17
		jal DrawVerticalLine
		li $a1, 31
		li $a3, 33
		li $a0, 18
		jal DrawVerticalLine
		li $a0, 19
		jal DrawVerticalLine
		li $a1, 32
		li $a3, 34
		li $a0, 20
		jal DrawVerticalLine
		li $a1, 33
		li $a3, 34
		li $a0, 21
		jal DrawVerticalLine
		li $a1, 34
		li $a3, 35
		li $a0, 22
		jal DrawVerticalLine
		li $a0, 23
		jal DrawVerticalLine
		li $a0, 24
		jal DrawVerticalLine
		li $a0, 24
		li $a1, 35
		li $a3, 28
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 36
		jal DrawPoint
		li $a0, 16
		li $a1, 33
		jal DrawPoint
		lw $a2, rosado
		li $a1, 34
		li $a3, 36
		li $a0, 18
		jal DrawVerticalLine
		li $a0, 19
		jal DrawVerticalLine
		li $a1, 35
		li $a3, 36
		li $a0, 20
		jal DrawVerticalLine
		li $a0, 21
		li $a1, 35
		jal DrawPoint
		lw $a2, colorWhite
		li $a0, 22
		li $a1, 36
		jal DrawPoint
		li $a0, 29
		li $a1, 35
		jal DrawPoint
		lw $a2, verde1
		li $a0, 30
		li $a1, 35
		jal DrawPoint
		li $a0, 23
		li $a1, 36
		jal DrawPoint
		lw $a2, azul
		li $a0, 24
		li $a1, 34
		jal DrawPoint
		lw $a2, amarillo
		li $a0, 25
		li $a1, 34
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 26
		li $a1, 34
		jal DrawPoint
		li $a0, 16
		li $a1, 33
		jal DrawPoint
		li $a0, 16
		li $a1, 35
		jal DrawPoint
	#Alien
		lw $a2, verde1
		li $a1, 32
		li $a3, 37
		li $a0, 36
		jal DrawVerticalLine
		li $a1, 34
		li $a3, 35
		li $a0, 38
		jal DrawVerticalLine
		li $a1, 31
		li $a3, 35
		li $a0, 34
		jal DrawVerticalLine
		li $a1, 32
		li $a3, 33
		li $a0, 33
		jal DrawVerticalLine
		li $a0, 37
		jal DrawVerticalLine
		li $a0, 39
		jal DrawVerticalLine
		li $a0, 38
		li $a1, 31
		jal DrawPoint
		li $a0, 39
		li $a1, 36
		jal DrawPoint
		li $a0, 33
		jal DrawPoint
		li $a0, 32
		li $a1, 37
		jal DrawPoint
		li $a0, 40
		jal DrawPoint
		lw $a2, amarillo
		li $a1, 30
		li $a3, 37
		li $a0, 35
		jal DrawHorizontalLine
		li $a1, 31
		jal DrawHorizontalLine
		li $a0, 35
		li $a1, 34
		jal DrawPoint
		li $a0, 37
		li $a1, 34
		jal DrawPoint
	#Humano
		li $a1, 39
		li $a3, 41
		li $a0, 36
		lw $a2, verde1
		jal DrawVerticalLine
		li $a0, 35
		li $a1, 39
		jal DrawPoint
		lw $a2, cafe
		li $a1, 42
		li $a3, 46
		li $a0, 36
		jal DrawVerticalLine
		lw $a2, rosado
		li $a1, 42
		li $a3, 43
		li $a0, 35
		jal DrawVerticalLine
		li $a1, 41
		li $a3, 43
		li $a0, 37
		jal DrawVerticalLine
		lw $a2, amarillo
		li $a1, 40
		li $a3, 41
		li $a0, 35
		jal DrawVerticalLine
	#Platillo
		lw $a2, verde1
		li $a1, 35
		li $a3, 52
		li $a0, 44
		jal DrawHorizontalLine
		li $a0, 45
		li $a3, 51
		li $a1, 32
		jal DrawHorizontalLine
		li $a0, 43
		li $a1, 34
		jal DrawPoint
		li $a0, 53
		jal DrawPoint
		li $a0, 44
		li $a1, 33
		jal DrawPoint
		li $a0, 52
		jal DrawPoint
		lw $a2, amarillo
		li $a0, 44
		li $a3, 45
		li $a1, 34
		jal DrawHorizontalLine
		li $a0, 47
		li $a3, 48
		jal DrawHorizontalLine
		li $a0, 50
		li $a3, 51
		jal DrawHorizontalLine
		lw $a2, cafe
		li $a0, 45
		li $a1, 33
		jal DrawPoint
		li $a0, 48
		jal DrawPoint
		li $a0, 51
		jal DrawPoint		
		
	PressOne:
		li $a0, 8
		li $a1, 39
		lw $a2, turquesa
		li $a3, 50
		jal DrawVerticalLine#P
		li $a0, 14
		jal DrawVerticalLine#R
		li $a0, 20
		jal DrawVerticalLine#E
		li $a0, 40
		jal DrawVerticalLine#O IZQ VERTICAL
		li $a0, 45
		jal DrawVerticalLine#O 
		li $a0, 47
		jal DrawVerticalLine#N 
		li $a0, 52
		jal DrawVerticalLine#N
		li $a0, 54
		jal DrawVerticalLine#E ULTIMA
		li $a0, 9
		li $a1, 39
		li $a3, 11
		jal DrawHorizontalLine#P
		li $a1, 44
		jal DrawHorizontalLine#P
		li $a0, 15
		li $a1, 39
		li $a3, 17
		jal DrawHorizontalLine#R
		li $a1, 44
		jal DrawHorizontalLine#R

		li $a0, 20
		li $a1, 39
		li $a3, 23
		jal DrawHorizontalLine#E PRIMERA
		li $a1, 44		
		jal DrawHorizontalLine#E PRIMERA
		li $a1, 45
		jal DrawHorizontalLine#E PRIMERA
		li $a1, 50
		jal DrawHorizontalLine#E PRIMERA
		li $a0, 26
		li $a1, 39
		li $a3, 28
		jal DrawHorizontalLine#S
		li $a1, 44
		jal DrawHorizontalLine#S	
		li $a1, 45
		jal DrawHorizontalLine#S
		li $a1, 50
		jal DrawHorizontalLine#S
		li $a0, 31
		li $a1, 39
		li $a3, 33
		jal DrawHorizontalLine#S
		li $a1, 44
		jal DrawHorizontalLine#S
		li $a1, 45
		jal DrawHorizontalLine#S
		li $a1, 50
		jal DrawHorizontalLine#S
		li $a0, 55
		li $a1, 44
		li $a3, 57
		jal DrawHorizontalLine#E ULTIMA
		li $a1, 45
		jal DrawHorizontalLine#E
		li $a1, 39
		jal DrawHorizontalLine#E
		li $a1, 50
		jal DrawHorizontalLine#E
		li $a0, 11
		li $a1, 40
		li $a3, 43
		jal DrawVerticalLine#P
		li $a0, 12
		jal DrawVerticalLine#P
		li $a0, 17
		jal DrawVerticalLine#R
		li $a0, 18
		jal DrawVerticalLine #R
		li $a0, 25
		li $a1, 39
		li $a3, 45
		jal DrawVerticalLine #S1
		li $a0, 30
		jal DrawVerticalLine #S
		li $a0, 28
		li $a1, 46
		li $a3, 50
		jal DrawVerticalLine #S1
		li $a0, 33
		jal DrawVerticalLine #S
		li $a0, 15
		li $a1, 45
		jal DrawPoint#R
		li $a1, 46
		jal DrawPoint#R
		li $a0, 16
		li $a1, 45
		li $a3, 48
		jal DrawVerticalLine#R
		li $a0, 17
		li $a1, 47
		li $a3, 50
		jal DrawVerticalLine#R
		li $a0, 18
		li $a1, 49
		li $a3, 50
		jal DrawVerticalLine#R
		li $a0, 25
		li $a1, 50
		jal DrawPoint#S
		li $a0, 30
		jal DrawPoint#S
		li $a0, 40
		li $a1, 39
		li $a3, 45
		jal DrawHorizontalLine#O
		li $a1, 50
		jal DrawHorizontalLine#O
		li $a0, 48
		li $a1, 40
		li $a3, 42
		jal DrawVerticalLine#N
		li $a0, 49
		li $a1, 42
		li $a3, 46
		jal DrawVerticalLine#N
		li $a0, 50
		li $a1, 46
		li $a3, 49
		jal DrawVerticalLine#N	
		li $a0, 51
		li $a1, 48
		li $a3, 50
		jal DrawVerticalLine#N							
Names:
#DIBUJA S
		li $a0, 8
		li $a1, 54
		lw $a2, verde1
		li $a3, 57
		jal DrawVerticalLine#S												
		li $a0, 12
		li $a1, 59
		li $a3, 61
		jal DrawVerticalLine#S												
		li $a0, 8
		li $a1, 58
		li $a3, 12
		jal DrawHorizontalLine#S																								
		li $a1, 54
		jal DrawHorizontalLine#S																								
		li $a1, 57
		jal DrawHorizontalLine#S
		li $a1, 62
		jal DrawHorizontalLine#S
#DIBUJA A	
		li $a0, 14
		li $a1, 56
		li $a3, 62
		jal DrawVerticalLine#A												
		li $a0, 18
		li $a1, 56
		li $a3, 62
		jal DrawVerticalLine#A	
		li $a0, 15
		li $a1, 57
		li $a3, 17
		jal DrawHorizontalLine#A																								
		li $a1, 58
		jal DrawHorizontalLine#A
		li $a0, 16
		li $a1, 54
		jal DrawPoint#A	
		li $a0, 15
		li $a1, 55
		li $a3, 17
		jal DrawHorizontalLine#A
#DIBUJA S
		li $a0, 20
		li $a1, 54
		li $a3, 57
		jal DrawVerticalLine#S												
		li $a0, 24
		li $a1, 59
		li $a3, 61
		jal DrawVerticalLine#S												
		li $a0, 20
		li $a1, 58
		li $a3, 24
		jal DrawHorizontalLine#S																								
		li $a1, 54
		jal DrawHorizontalLine#S																								
		li $a1, 57
		jal DrawHorizontalLine#S
		li $a1, 62
		jal DrawHorizontalLine#S		
#DIBUJA B
		li $a0, 45
		li $a1, 54
		li $a3, 62
		jal DrawVerticalLine#B		
		li $a0, 49
		jal DrawVerticalLine#B																																					
		li $a0, 50
		li $a1, 55
		li $a3, 57
		jal DrawVerticalLine#B
		li $a0, 50
		li $a1, 59
		li $a3, 61
		jal DrawVerticalLine#B																																																						
		li $a0, 45
		li $a1, 54
		li $a3, 49
		jal DrawHorizontalLine#B
		li $a1, 58
		jal DrawHorizontalLine#B
		li $a1, 62
		jal DrawHorizontalLine#B																																																																																																								
#DIBUJA B
		li $a0, 52
		li $a1, 54
		li $a3, 62
		jal DrawVerticalLine#B		
		li $a0, 56
		jal DrawVerticalLine#B																																					
		li $a0, 57
		li $a1, 55
		li $a3, 57
		jal DrawVerticalLine#B
		li $a0, 57
		li $a1, 59
		li $a3, 61
		jal DrawVerticalLine#B																																																							
		li $a0, 53
		li $a1, 54
		li $a3, 55
		jal DrawHorizontalLine#B
		li $a1, 58
		jal DrawHorizontalLine#B
		li $a1, 62
		jal DrawHorizontalLine#B																																																																																																								
#DIBUJAC																																																																																																																																																																																																												
		li $a0, 39
		li $a1, 56
		li $a3, 60
		jal DrawVerticalLine#C																																																																																																																																																																																																																																																																																																																																																																																																																										
		li $a0, 42
		li $a1, 54
		li $a3, 43
		jal DrawHorizontalLine#C	
		li $a1, 62
		jal DrawHorizontalLine#C
		li $a0, 40
		li $a1, 55
		li $a3, 41
		jal DrawHorizontalLine#C	
		LI $a1, 61
		jal DrawHorizontalLine#C	
SelectMode:
		lw $t1, 0xFFFF0004		# check to see which key has been pressed
		beq $t1, 0x00000031, Limpia 	# One pressed
		li $a0, 250	#
		li $v0, 32	# pause for 250 milisec
		syscall		#
		j SelectMode    # Jump back to the top of the wait loop
Limpia: 
	jal ClearBoard	
	li $t0,3
	sw $t0, bomba
	sw $t0,vidajugador
	li $a0,3
	li $t0,1
	sw $t0,vv1
	sw $t0,vr1
	sw $t0,va1
	sw $t0,vv2
	sw $t0,vr2
	sw $t0,va2
	sw $t0,change
	sw $t0,cambia
	li $t1,0
	sw $t1,py				
	sw $t1,px
	sw $t1,hy				
	sw $t1,hx		
	sw $t1,pv1x			
	sw $t1,pv1y			
	sw $t1,pr1x			
	sw $t1,pr1y			
	sw $t1,pa1x			
	sw $t1,pa1y			
	sw $t1,dir1			
	sw $t1,dir2			
	sw $t1,dir3			
	sw $t1,pv2x			
	sw $t1,pv2y			
	sw $t1,pr2x			
	sw $t1,pr2y			
	sw $t1,pa2x			
	sw $t1,pa2y			
	sw $t1,dir4			
	sw $t1,dir5			
	sw $t1,dir6
	sw $t1,posdx			
	sw $t1,posdy			
	sw $t1,direcd			              
	sw $t1,posdv1x			
	sw $t1,posdv1y
	sw $t1,posda2x			
	sw $t1,posda2y			
	sw $t1,contador
	lw $t2, nivel
	beq $t2,2, N2
	beq $t2,3, N3
N1: 
#Marco pantalla 
		li $a0, 21
		li $a1, 0
		lw $a2, azul
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 0
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 0
		li $a3, 42
		jal DrawHorizontalLine
#Dibuja mapa 1
		lw $a2, cafe
		li $a0, 1
		li $a1, 62
		jal DrawPoint
		li $a0, 2
		li $a1, 62
		jal DrawPoint
		li $a0, 3
		li $a1, 62
		jal DrawPoint
		li $a0, 4
		li $a1, 61
		jal DrawPoint
		li $a0, 5
		li $a1, 61
		jal DrawPoint
		li $a0, 6
		li $a1, 61
		jal DrawPoint
		li $a0, 7
		li $a1, 60
		jal DrawPoint
		li $a0, 8
		li $a1, 60
		jal DrawPoint
		li $a0, 9
		li $a1, 60
		jal DrawPoint
		li $a0, 10
		li $a1, 59
		jal DrawPoint
		li $a0, 11
		li $a1, 59
		jal DrawPoint
		li $a0, 12
		li $a1, 59
		jal DrawPoint
		li $a0, 13
		li $a1, 58
		jal DrawPoint
		li $a0, 14
		li $a1, 58
		jal DrawPoint
		li $a0, 15
		li $a1, 58
		jal DrawPoint
		li $a0, 16
		li $a1, 57
		jal DrawPoint
		li $a0, 17
		li $a1, 57
		jal DrawPoint
		li $a0, 18
		li $a1, 57
		jal DrawPoint
		li $a0, 19
		li $a1, 56
		jal DrawPoint
		li $a0, 20
		li $a1, 56
		jal DrawPoint
		li $a0, 21
		li $a1, 56
		jal DrawPoint
		li $a0, 22
		li $a1, 57
		jal DrawPoint
		li $a0, 23
		li $a1, 57
		jal DrawPoint
		li $a0, 24
		li $a1, 57
		jal DrawPoint
		li $a0, 25
		li $a1, 58
		jal DrawPoint
		li $a0, 26
		li $a1, 58
		jal DrawPoint
		li $a0, 27
		li $a1, 58
		jal DrawPoint
		li $a0, 28
		li $a1, 59
		jal DrawPoint
		li $a0, 29
		li $a1, 59
		jal DrawPoint
		li $a0, 30
		li $a1, 59
		jal DrawPoint
		li $a0, 31
		li $a1, 60
		jal DrawPoint
		li $a0, 32
		li $a1, 60
		jal DrawPoint
		li $a0, 33
		li $a1, 60
		jal DrawPoint
		li $a0, 34
		li $a1, 59
		jal DrawPoint
		li $a0, 35
		li $a1, 59
		jal DrawPoint
		li $a0, 36
		li $a1, 59
		jal DrawPoint
		li $a0, 37
		li $a1, 58
		jal DrawPoint
		li $a0, 38
		li $a1, 58
		jal DrawPoint
		li $a0, 39
		li $a1, 58
		jal DrawPoint
		li $a0, 40
		li $a1, 57
		jal DrawPoint
		li $a0, 41
		li $a1, 57
		jal DrawPoint
		li $a0, 42
		li $a1, 57
		jal DrawPoint
		li $a0, 43
		li $a1, 56
		jal DrawPoint
		li $a0, 44
		li $a1, 56
		jal DrawPoint
		li $a0, 45
		li $a1, 56
		jal DrawPoint
		li $a0, 46
		li $a1, 55
		jal DrawPoint
		li $a0, 47
		li $a1, 55
		jal DrawPoint
		li $a0, 48
		li $a1, 55
		jal DrawPoint
		li $a0, 49
		li $a1, 54
		jal DrawPoint
		li $a0, 50
		li $a1, 54
		jal DrawPoint
		li $a0, 51
		li $a1, 54
		jal DrawPoint
		li $a0, 52
		li $a1, 55
		jal DrawPoint
		li $a0, 53
		li $a1, 55
		jal DrawPoint
		li $a0, 54
		li $a1, 55
		jal DrawPoint
		li $a0, 55
		li $a1, 56
		jal DrawPoint
		li $a0, 56
		li $a1, 56
		jal DrawPoint
		li $a0, 57
		li $a1, 56
		jal DrawPoint
		li $a0, 58
		li $a1, 57
		jal DrawPoint
		li $a0, 59
		li $a1, 57
		jal DrawPoint
		li $a0, 60
		li $a1, 57
		jal DrawPoint
		li $a0, 61
		li $a1, 57
		jal DrawPoint
		li $a0, 62
		li $a1, 58
		jal DrawPoint
#Dibuja minimapa 1
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		li $a0, 24
		li $a1, 14
		jal DrawPoint
		li $a0, 25
		li $a1, 14
		jal DrawPoint
		li $a0, 26
		li $a1, 13
		jal DrawPoint
		li $a0, 27
		li $a1, 13
		jal DrawPoint
		li $a0, 28
		li $a1, 12
		jal DrawPoint
		li $a0, 29
		li $a1, 12
		jal DrawPoint
		li $a0, 30
		li $a1, 13
		jal DrawPoint
		li $a0, 31
		li $a1, 13
		jal DrawPoint
		li $a0, 32
		li $a1, 14
		jal DrawPoint
		li $a0, 33
		li $a1, 14
		jal DrawPoint
		li $a0, 34
		li $a1, 13
		jal DrawPoint
		li $a0, 35
		li $a1, 13
		jal DrawPoint
		li $a0, 36
		li $a1, 12
		jal DrawPoint
		li $a0, 37
		li $a1, 12
		jal DrawPoint
		li $a0, 38
		li $a1, 11
		jal DrawPoint
		li $a0, 39
		li $a1, 11
		jal DrawPoint
		li $a0, 40
		li $a1, 12
		jal DrawPoint
		li $a0, 41
		li $a1, 12
		jal DrawPoint
		j InitJugador
N2:
#Marco pantalla 
		li $a0, 21
		li $a1, 0
		lw $a2, Marco2
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 0
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 0
		li $a3, 42
		jal DrawHorizontalLine
#Dibuja mapa 2 (hay que cambiarlo)
		lw $a2, ColorX
		li $a0, 1
		li $a1, 62
		jal DrawPoint
		li $a0, 2
		li $a1, 62
		jal DrawPoint
		li $a0, 3
		li $a1, 62
		jal DrawPoint
		li $a0, 4
		li $a1, 61
		jal DrawPoint
		li $a0, 5
		li $a1, 61
		jal DrawPoint
		li $a0, 6
		li $a1, 61
		jal DrawPoint
		li $a0, 7
		li $a1, 60
		jal DrawPoint
		li $a0, 8
		li $a1, 60
		jal DrawPoint
		li $a0, 9
		li $a1, 60
		jal DrawPoint
		li $a0, 10
		li $a1, 59
		jal DrawPoint
		li $a0, 11
		li $a1, 59
		jal DrawPoint
		li $a0, 12
		li $a1, 59
		jal DrawPoint
		li $a0, 13
		li $a1, 58
		jal DrawPoint
		li $a0, 14
		li $a1, 58
		jal DrawPoint
		li $a0, 15
		li $a1, 58
		jal DrawPoint
		li $a0, 16
		li $a1, 57
		jal DrawPoint
		li $a0, 17
		li $a1, 57
		jal DrawPoint
		li $a0, 18
		li $a1, 57
		jal DrawPoint
		li $a0, 19
		li $a1, 56
		jal DrawPoint
		li $a0, 20
		li $a1, 56
		jal DrawPoint
		li $a0, 21
		li $a1, 56
		jal DrawPoint
		li $a0, 22
		li $a1, 57
		jal DrawPoint
		li $a0, 23
		li $a1, 57
		jal DrawPoint
		li $a0, 24
		li $a1, 57
		jal DrawPoint
		li $a0, 25
		li $a1, 58
		jal DrawPoint
		li $a0, 26
		li $a1, 58
		jal DrawPoint
		li $a0, 27
		li $a1, 58
		jal DrawPoint
		li $a0, 28
		li $a1, 59
		jal DrawPoint
		li $a0, 29
		li $a1, 59
		jal DrawPoint
		li $a0, 30
		li $a1, 59
		jal DrawPoint
		li $a0, 31
		li $a1, 60
		jal DrawPoint
		li $a0, 32
		li $a1, 60
		jal DrawPoint
		li $a0, 33
		li $a1, 60
		jal DrawPoint
		li $a0, 34
		li $a1, 59
		jal DrawPoint
		li $a0, 35
		li $a1, 59
		jal DrawPoint
		li $a0, 36
		li $a1, 59
		jal DrawPoint
		li $a0, 37
		li $a1, 58
		jal DrawPoint
		li $a0, 38
		li $a1, 58
		jal DrawPoint
		li $a0, 39
		li $a1, 58
		jal DrawPoint
		li $a0, 40
		li $a1, 57
		jal DrawPoint
		li $a0, 41
		li $a1, 57
		jal DrawPoint
		li $a0, 42
		li $a1, 57
		jal DrawPoint
		li $a0, 43
		li $a1, 56
		jal DrawPoint
		li $a0, 44
		li $a1, 56
		jal DrawPoint
		li $a0, 45
		li $a1, 56
		jal DrawPoint
		li $a0, 46
		li $a1, 55
		jal DrawPoint
		li $a0, 47
		li $a1, 55
		jal DrawPoint
		li $a0, 48
		li $a1, 55
		jal DrawPoint
		li $a0, 49
		li $a1, 54
		jal DrawPoint
		li $a0, 50
		li $a1, 54
		jal DrawPoint
		li $a0, 51
		li $a1, 54
		jal DrawPoint
		li $a0, 52
		li $a1, 55
		jal DrawPoint
		li $a0, 53
		li $a1, 55
		jal DrawPoint
		li $a0, 54
		li $a1, 55
		jal DrawPoint
		li $a0, 55
		li $a1, 56
		jal DrawPoint
		li $a0, 56
		li $a1, 56
		jal DrawPoint
		li $a0, 57
		li $a1, 56
		jal DrawPoint
		li $a0, 58
		li $a1, 57
		jal DrawPoint
		li $a0, 59
		li $a1, 57
		jal DrawPoint
		li $a0, 60
		li $a1, 57
		jal DrawPoint
		li $a0, 61
		li $a1, 57
		jal DrawPoint
		li $a0, 62
		li $a1, 58
		jal DrawPoint
#Dibuja minimapa 2 (hay que cambiarlo)
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		li $a0, 24
		li $a1, 14
		jal DrawPoint
		li $a0, 25
		li $a1, 14
		jal DrawPoint
		li $a0, 26
		li $a1, 13
		jal DrawPoint
		li $a0, 27
		li $a1, 13
		jal DrawPoint
		li $a0, 28
		li $a1, 12
		jal DrawPoint
		li $a0, 29
		li $a1, 12
		jal DrawPoint
		li $a0, 30
		li $a1, 13
		jal DrawPoint
		li $a0, 31
		li $a1, 13
		jal DrawPoint
		li $a0, 32
		li $a1, 14
		jal DrawPoint
		li $a0, 33
		li $a1, 14
		jal DrawPoint
		li $a0, 34
		li $a1, 13
		jal DrawPoint
		li $a0, 35
		li $a1, 13
		jal DrawPoint
		li $a0, 36
		li $a1, 12
		jal DrawPoint
		li $a0, 37
		li $a1, 12
		jal DrawPoint
		li $a0, 38
		li $a1, 11
		jal DrawPoint
		li $a0, 39
		li $a1, 11
		jal DrawPoint
		li $a0, 40
		li $a1, 12
		jal DrawPoint
		li $a0, 41
		li $a1, 12
		jal DrawPoint
		lw $t0,score
		addi $t0,$t0,1
		sw $t0, score
		j InitJugador
N3:
#Marco pantalla 
		li $a0, 21
		li $a1, 0
		lw $a2, Marco3
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 0
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 0
		li $a3, 42
		jal DrawHorizontalLine
#Dibuja mapa 3 (hay que cambiarlo)
		lw $a2, ColorY
		li $a0, 1
		li $a1, 62
		jal DrawPoint
		li $a0, 2
		li $a1, 62
		jal DrawPoint
		li $a0, 3
		li $a1, 62
		jal DrawPoint
		li $a0, 4
		li $a1, 61
		jal DrawPoint
		li $a0, 5
		li $a1, 61
		jal DrawPoint
		li $a0, 6
		li $a1, 61
		jal DrawPoint
		li $a0, 7
		li $a1, 60
		jal DrawPoint
		li $a0, 8
		li $a1, 60
		jal DrawPoint
		li $a0, 9
		li $a1, 60
		jal DrawPoint
		li $a0, 10
		li $a1, 59
		jal DrawPoint
		li $a0, 11
		li $a1, 59
		jal DrawPoint
		li $a0, 12
		li $a1, 59
		jal DrawPoint
		li $a0, 13
		li $a1, 58
		jal DrawPoint
		li $a0, 14
		li $a1, 58
		jal DrawPoint
		li $a0, 15
		li $a1, 58
		jal DrawPoint
		li $a0, 16
		li $a1, 57
		jal DrawPoint
		li $a0, 17
		li $a1, 57
		jal DrawPoint
		li $a0, 18
		li $a1, 57
		jal DrawPoint
		li $a0, 19
		li $a1, 56
		jal DrawPoint
		li $a0, 20
		li $a1, 56
		jal DrawPoint
		li $a0, 21
		li $a1, 56
		jal DrawPoint
		li $a0, 22
		li $a1, 57
		jal DrawPoint
		li $a0, 23
		li $a1, 57
		jal DrawPoint
		li $a0, 24
		li $a1, 57
		jal DrawPoint
		li $a0, 25
		li $a1, 58
		jal DrawPoint
		li $a0, 26
		li $a1, 58
		jal DrawPoint
		li $a0, 27
		li $a1, 58
		jal DrawPoint
		li $a0, 28
		li $a1, 59
		jal DrawPoint
		li $a0, 29
		li $a1, 59
		jal DrawPoint
		li $a0, 30
		li $a1, 59
		jal DrawPoint
		li $a0, 31
		li $a1, 60
		jal DrawPoint
		li $a0, 32
		li $a1, 60
		jal DrawPoint
		li $a0, 33
		li $a1, 60
		jal DrawPoint
		li $a0, 34
		li $a1, 59
		jal DrawPoint
		li $a0, 35
		li $a1, 59
		jal DrawPoint
		li $a0, 36
		li $a1, 59
		jal DrawPoint
		li $a0, 37
		li $a1, 58
		jal DrawPoint
		li $a0, 38
		li $a1, 58
		jal DrawPoint
		li $a0, 39
		li $a1, 58
		jal DrawPoint
		li $a0, 40
		li $a1, 57
		jal DrawPoint
		li $a0, 41
		li $a1, 57
		jal DrawPoint
		li $a0, 42
		li $a1, 57
		jal DrawPoint
		li $a0, 43
		li $a1, 56
		jal DrawPoint
		li $a0, 44
		li $a1, 56
		jal DrawPoint
		li $a0, 45
		li $a1, 56
		jal DrawPoint
		li $a0, 46
		li $a1, 55
		jal DrawPoint
		li $a0, 47
		li $a1, 55
		jal DrawPoint
		li $a0, 48
		li $a1, 55
		jal DrawPoint
		li $a0, 49
		li $a1, 54
		jal DrawPoint
		li $a0, 50
		li $a1, 54
		jal DrawPoint
		li $a0, 51
		li $a1, 54
		jal DrawPoint
		li $a0, 52
		li $a1, 55
		jal DrawPoint
		li $a0, 53
		li $a1, 55
		jal DrawPoint
		li $a0, 54
		li $a1, 55
		jal DrawPoint
		li $a0, 55
		li $a1, 56
		jal DrawPoint
		li $a0, 56
		li $a1, 56
		jal DrawPoint
		li $a0, 57
		li $a1, 56
		jal DrawPoint
		li $a0, 58
		li $a1, 57
		jal DrawPoint
		li $a0, 59
		li $a1, 57
		jal DrawPoint
		li $a0, 60
		li $a1, 57
		jal DrawPoint
		li $a0, 61
		li $a1, 57
		jal DrawPoint
		li $a0, 62
		li $a1, 58
		jal DrawPoint
#Dibuja minimapa 3 (hay que cambiarlo)
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		li $a0, 24
		li $a1, 14
		jal DrawPoint
		li $a0, 25
		li $a1, 14
		jal DrawPoint
		li $a0, 26
		li $a1, 13
		jal DrawPoint
		li $a0, 27
		li $a1, 13
		jal DrawPoint
		li $a0, 28
		li $a1, 12
		jal DrawPoint
		li $a0, 29
		li $a1, 12
		jal DrawPoint
		li $a0, 30
		li $a1, 13
		jal DrawPoint
		li $a0, 31
		li $a1, 13
		jal DrawPoint
		li $a0, 32
		li $a1, 14
		jal DrawPoint
		li $a0, 33
		li $a1, 14
		jal DrawPoint
		li $a0, 34
		li $a1, 13
		jal DrawPoint
		li $a0, 35
		li $a1, 13
		jal DrawPoint
		li $a0, 36
		li $a1, 12
		jal DrawPoint
		li $a0, 37
		li $a1, 12
		jal DrawPoint
		li $a0, 38
		li $a1, 11
		jal DrawPoint
		li $a0, 39
		li $a1, 11
		jal DrawPoint
		li $a0, 40
		li $a1, 12
		jal DrawPoint
		li $a0, 41
		li $a1, 12
		jal DrawPoint
		lw $t0,score
		addi $t0,$t0,1
		sw $t0, score
		j InitJugador
InitJugador: 		
		lw $a2, backgroundColor
		lw $t4, px
		lw $t1, py
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		lw $t0, hx
		lw $t1, hy
		addi $t1,$t1, 2
		move $a0, $t0
		move $a1, $t1
		jal DrawPoint
		addi $t1, $t1, 1
		move $a1, $t1
		jal DrawPoint
		li $s1, 50
		li $s2,46
		sw $s1,px
		sw $s2,py
		lw $a0, px
		lw $a1, py
		lw $a2, Purpura
		jal DrawPoint
		lw $t1, px
		addi $t1,$t1, 1
		move $a0, $t1
		lw $a1, py
		lw $a2, Purpura
		jal DrawPoint
		lw $t1, px
		addi $t1,$t1, -1
		move $a0, $t1
		lw $a1, py
		jal DrawPoint
		lw $t1, py
		addi $t1,$t1, 1
		move $a1, $t1
		lw $a0, px
		jal DrawPoint
		lw $t1, py
		addi $t1,$t1, -1
		move $a1, $t1
		lw $a0, px
		jal DrawPoint
InitVerde1:
		lw $t0,vv1
		beq $zero,$t0,InitRosado1
		#borra rastros del enemigo 
		lw $a2, backgroundColor
		lw $t4,pv1x
		lw $t1,pv1y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		li $s1, 30
		li $s2,	50	
		sw $s1,pv1x
		sw $s2,pv1y
		lw $a0, pv1x
		lw $a1, pv1y
		lw $a2, verde
		jal DrawPoint
		lw $t1, pv1x
		addi $t1,$t1, 1
		move $a0, $t1
		lw $t3, pv1y
		addi $t3,$t3,1
		move $a1,$t3
		lw $a2, verde
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
		lw $t1, pv1x
		addi $t1,$t1, -1
		move $a0, $t1
		lw $t3, pv1y
		addi $t3,$t3,1
		move $a1,$t3
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
InitRosado1:
		lw $t0,vr1
		beq $zero,$t0,InitAmarillo1
		lw $a2, backgroundColor
		lw $t4,pr1x
		lw $t1,pr1y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#inicializa al enemigo 
		li $s1, 37
		li $s2, 20
		sw $s1,pr1x
		sw $s2,pr1y
		lw $a0, pr1x
		lw $a1, pr1y
		lw $a2, rosado
		jal DrawPoint
		lw $t1, pr1x
		addi $t1,$t1, 1
		move $a0, $t1
		lw $t3, pr1y
		addi $t3,$t3,1
		move $a1,$t3
		lw $a2, rosado
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
		lw $t1, pr1x
		addi $t1,$t1, -1
		move $a0, $t1
		lw $t3, pr1y
		addi $t3,$t3,1
		move $a1,$t3
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
InitAmarillo1:
		lw $t0,va1
		beq $zero,$t0,InitVerde2
# erase bottom point
		lw $a2, backgroundColor
		lw $t4,pa1x
		lw $t1,pa1y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		li $s1,10
		li $s2,20
		sw $s1,pa1x
		sw $s2,pa1y
		lw $a0, pa1x
		lw $a1, pa1y
		lw $a2, amarillo
		jal DrawPoint
		lw $t1, pa1x
		addi $t1,$t1, 1
		move $a0, $t1
		lw $t3, pa1y
		addi $t3,$t3,1
		move $a1,$t3
		lw $a2, amarillo
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
		lw $t1, pa1x
		addi $t1,$t1, -1
		move $a0, $t1
		lw $t3, pa1y
		addi $t3,$t3,1
		move $a1,$t3
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
InitVerde2:
		lw $t0,vv2
		beq $zero,$t0,InitRosado2 
		lw $a2, backgroundColor
		lw $t4,pv2x
		lw $t1,pv2y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		li $s1, 20
		li $s2, 40	
		sw $s1,pv2x
		sw $s2,pv2y
		lw $a0, pv2x
		lw $a1, pv2y
		lw $a2, verde
		#jal DrawPoint
		lw $t1, pv2x
		addi $t1,$t1, 1
		move $a0, $t1
		lw $t3, pv2y
		addi $t3,$t3,1
		move $a1,$t3
		lw $a2, verde1
		#jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		#jal DrawPoint
		lw $t1, pv2x
		addi $t1,$t1, -1
		move $a0, $t1
		lw $t3, pv1y
		addi $t3,$t3,1
		move $a1,$t3
		#jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		#jal DrawPoint
InitRosado2:
		lw $t0,vr2
		beq $zero,$t0,InitAmarillo2
		lw $a2, backgroundColor
		lw $t4,pr2x
		lw $t1,pr2y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#inicializa al enemigo 
		li $s1, 8
		li $s2, 37
		sw $s1,pr2x
		sw $s2,pr2y
		lw $a0, pr2x
		lw $a1, pr2y
		lw $a2, rosado
		jal DrawPoint
		lw $t1, pr2x
		addi $t1,$t1, 1
		move $a0, $t1
		lw $t3, pr2y
		addi $t3,$t3,1
		move $a1,$t3
		lw $a2, rosado1
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
		lw $t1, pr2x
		addi $t1,$t1, -1
		move $a0, $t1
		lw $t3, pr2y
		addi $t3,$t3,1
		move $a1,$t3
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
InitAmarillo2:
		lw $t0,va2
		beq $zero,$t0,InitR1
		lw $a2, backgroundColor
		lw $t4,pa2x
		lw $t1,pa2y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#inicializa al enemigo 
		li $s1,20
		li $s2,20
		sw $s1,pa2x
		sw $s2,pa2y
		lw $a0, pa2x
		lw $a1, pa2y
		lw $a2, amarillo
		jal DrawPoint
		lw $t1, pa2x
		addi $t1,$t1, 1
		move $a0, $t1
		lw $t3, pa2y
		addi $t3,$t3,1
		move $a1,$t3
		lw $a2, amarillo1
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
		lw $t1, pa2x
		addi $t1,$t1, -1
		move $a0, $t1
		lw $t3, pa2y
		addi $t3,$t3,1
		move $a1,$t3
		jal DrawPoint
		addi $t3,$t3,-2
		move $a1,$t3
		jal DrawPoint
InitR1: 
#RadarEnemigo1
		lw $a2, backgroundColor
		lw $t4,rx1
		lw $t1,ry1
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,vv1
		beq $zero,$t0,InitR2
		li $t0,30
		li $t1,10
		sw $t0,rx1
		sw $t1,ry1
		move $a1,$t1
		move $a0,$t0
		lw $a2,verde
		jal DrawPoint
InitR2: 
#RadarEnemigo 2
		lw $a2, backgroundColor
		lw $t4,rx2
		lw $t1,ry2
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,vr1
		beq $zero,$t0,InitR3	
		li $t0,34
		li $t1,2
		sw $t0,rx2
		sw $t1,ry2
		move $a1,$t1
		move $a0,$t0
		lw $a2,rosado
		jal DrawPoint
InitR3: 
#radarEnemigo3
		lw $a2, backgroundColor
		lw $t4,rx3
		lw $t1,ry3
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,va1
		beq $zero,$t0,InitR4
		li $t0,25
		li $t1,7
		sw $t0,rx3
		sw $t1,ry3
		move $a1,$t1
		move $a0,$t0
		lw $a2,amarillo
		jal DrawPoint
InitR4: 
#RadarEnemigo1
		lw $a2, backgroundColor
		lw $t4,rx4
		lw $t1,ry4
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,vv2
		beq $zero,$t0,InitR5
		li $t0,28
		li $t1,8
		sw $t0,rx4
		sw $t1,ry4
		move $a1,$t1
		move $a0,$t0
		lw $a2,verde1
		jal DrawPoint
InitR5: 
#RadarEnemigo 2
		lw $a2, backgroundColor
		lw $t4,rx5
		lw $t1,ry5
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,vr2
		beq $zero,$t0,InitR6
		li $t0,22
		li $t1,6
		sw $t0,rx5
		sw $t1,ry5
		move $a1,$t1
		move $a0,$t0
		lw $a2,rosado1
		jal DrawPoint
InitR6: 
#RadarEnemigo3
		lw $a2, backgroundColor
		lw $t4,rx6
		lw $t1,ry6
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,va2
		beq $zero,$t0,InitDisparoA2
		li $t0,28
		li $t1,4
		sw $t0,rx6
		sw $t1,ry6
		move $a1,$t1
		move $a0,$t0
		lw $a2,amarillo1
		jal DrawPoint
InitDisparoA2: 
		lw $t0,va2
		beq $zero,$t0,InitDisparoV1
		lw $a2, backgroundColor
		lw $t4, posda2x
		lw $t1, posda2y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,pa2x
		sw $t0,posda2x
		lw $t1,pa2y
		sw $t1,posda2y
InitDisparoV1: 
		lw $t0,vv1
		beq $zero,$t0,BeginGame
		lw $a2, backgroundColor
		lw $t4, posdv1x
		lw $t1, posdv1y
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		lw $t0,pv1x
		sw $t0,posdv1x
		lw $t1,pv1y
		sw $t1,posdv1y

BeginGame:
		sw $zero, 0xFFFF0000		# clear the button pushed bit
# Wait and read buttons
Begin_standby:	
		li $t0, 0x00000002			# load 25 into the counter for a ~50 milisec standby
Standby:
		blez $t0, EndStandby
		li $a0, 30	#10
		li $v0, 32	# pause for 10 milisec
		syscall		#
		addi $t0, $t0, -1 		# decrement counter
		lw $t1, 0xFFFF0000		# check to see if a key has been pressed
		blez $t1, Standby
		jal AdjustDir			# see what was pushed
		sw $zero, 0xFFFF0000		# clear the button pushed bit
		j Standby
EndStandby:	
MoveJugador:
	# objective: look at the direction, draw a point on the correct side, erase a point on the correct side
	lw $t0 bandera
	beq $t0, 1, MoveJugadorHumano
	beq $s0, 0x02000000, down
	beq $s0, 0x03000000, left
	beq $s0, 0x04000000, right
	bne $s0, 0x01000000, NoMove
up: 
		lw $t4,px	 
		lw $t1,py	
		addi $t9,$t4,1
		addi $t8,$t1,-1		
		move $a0,$t9
		move $a1,$t8
		jal Choque
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque
		move $t9,$t4
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal Choque
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t5,$t1,-1		 
		move $a0,$t4
		move $a1,$t5		
		lw $a2, Purpura
		jal DrawPoint
		sw $a1,py	
		sw $a0,px
		lw $t0,change
		beq $t0,0,sigue
		sw $a1,posdy		
		sw $a0,posdx
sigue:
		li $s0, 0		
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, Purpura
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MoveVerde1
down:
		lw $t4,px	 
		lw $t1,py	
#revisa choque
		addi $t9,$t4,1
		addi $t8,$t1,1		
		move $a0,$t9
		move $a1,$t8
		jal Choque
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque
		move $t9,$t4
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,1		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, Purpura
		jal DrawPoint
		sw $a1,py		#actualiza 
		sw $a0,px
		lw $t0,change
		beq $t0,0,sigue1
		sw $a1,posdy		#actualiza Y
		sw $a0,posdx
sigue1:
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		lw $a2, Purpura
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MoveVerde1
left:
		lw $t4,px	 
		lw $t1,py	
#check collision
		addi $t9,$t4,-2
		move $a0,$t9
		move $a1,$t1
		jal Choque 
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t4,-1 	#actualiza X
		move $a1,$t1
		move $a0,$t5		#guarda X actualizado
		lw $a2, Purpura
		jal DrawPoint	
		sw $a0,px		#actualiza X
		sw $a1,py
		lw $t0,change
		beq $t0,0,sigue3
		sw $a1,posdy		#actualiza Y
		sw $a0,posdx
sigue3:
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		move $a0,$t9
		move $a1,$t1
		lw $a2, Purpura
		jal DrawPoint
		addi $t9,$t4,-2
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MoveVerde1
right:
		lw $t4,px	 
		lw $t1,py	
#revisa colision
		addi $t9,$t4,2
		move $a0,$t9
		move $a1,$t1
		jal Choque
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t4,1		#actualiza X
		move $a0,$t5		#guarda X actualizado
		move $a1,$t1
		lw $a2, Purpura
		jal DrawPoint
		sw $a0,px		#actualiza X
		sw $a1,py
		lw $t0,change
		beq $t0,0,sigue2
		sw $a1,posdy		#actualiza Y
		sw $a0,posdx
sigue2:
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,2
		move $a0,$t9
		move $a1,$t1
		lw $a2, Purpura
		jal DrawPoint
		add $t9,$t4,$zero
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MoveVerde1
NoMove:
		# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MoveVerde1

MoveJugadorHumano:
	# objective: look at the direction, draw a point on the correct side, erase a point on the correct side
	li $t0, 1
	sw $t0, bandera
	beq $s0, 0x02000000, downh
	beq $s0, 0x03000000, lefth
	beq $s0, 0x04000000, righth
	bne $s0, 0x01000000, NoMoveh
uph: 
		lw $t4,px	 
		lw $t1,py	
		addi $t9,$t4,1
		addi $t8,$t1,-1		
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		move $t9,$t4
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t5,$t1,3		 
		move $a0,$t4
		move $a1,$t5		
		jal DrawPoint
		addi $t5,$t1,4		 
		move $a0,$t4
		move $a1,$t5		
		jal DrawPoint
		addi $t5,$t1,-1		 
		move $a0,$t4
		move $a1,$t5		
		lw $a2, Purpura
		jal DrawPoint
		addi $t5,$t1,1		 
		move $a0,$t4
		move $a1,$t5		
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,2		 
		move $a0,$t4
		move $a1,$t5		
		lw $a2, turquesa
		jal DrawPoint
		sw $a1,py	
		sw $a0,px
		lw $t0,change
		beq $t0,0,sigueh
		sw $a1,posdy		
		sw $a0,posdx
sigueh:
		li $s0, 0		
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, Purpura
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t1,1		 
		move $a0,$t4
		move $a1,$t5		
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,2		 
		move $a0,$t4
		move $a1,$t5		
		lw $a2, turquesa
		jal DrawPoint
   		j MoveVerde1
downh:
		lw $t4,px	 
		lw $t1,py	
#revisa choque
		addi $t9,$t4,1
		addi $t8,$t1,1		
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		move $t9,$t4
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t5,$t1,2		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		jal DrawPoint
		addi $t5,$t1,3		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,1		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, Purpura
		jal DrawPoint
		addi $t5,$t1,3		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,4		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, turquesa
		jal DrawPoint
		sw $a1,py		#actualiza 
		sw $a0,px
		lw $t0,change
		beq $t0,0,sigue1
		sw $a1,posdy		#actualiza Y
		sw $a0,posdx
sigue1h:
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		lw $a2, Purpura
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		move $t9,$t4
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t1,3		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,4		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, turquesa
		jal DrawPoint
   		j MoveVerde1
lefth:
		lw $t4,px	 
		lw $t1,py	
#check collision
		addi $t9,$t4,-2
		move $a0,$t9
		move $a1,$t1
		jal ChoqueJH
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t5,$t1,2
		addi $t9, $t4, -1	
		move $a1,$t5
		move $a0,$t9		
		jal DrawPoint
		addi $t5,$t1,3 
		move $a1,$t5
		move $a0,$t9		
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t4,-1 	#actualiza X
		move $a1,$t1
		move $a0,$t5		#guarda X actualizado
		lw $a2, Purpura
		jal DrawPoint
		addi $t5,$t1,2
		addi $t9,$t4,-1  	
		move $a1,$t5
		move $a0,$t9		
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,3 
		move $a1,$t5
		move $a0,$t9		
		lw $a2, turquesa
		jal DrawPoint			
		sw $a0,px		#actualiza X
		sw $a1,py
		lw $t0,change
		beq $t0,0,sigue3h
		sw $a1,posdy		#actualiza Y
		sw $a0,posdx
sigue3h:
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		move $a0,$t9
		move $a1,$t1
		lw $a2, Purpura
		jal DrawPoint
		addi $t9,$t4,-2
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t4,2 	
		move $a1,$t1
		move $a0,$t5		
		lw $a2, turquesa
		#jal DrawPoint
		addi $t5,$t4,3 	
		move $a1,$t1
		move $a0,$t5		
		lw $a2, turquesa
		#jal DrawPoint
   		j MoveVerde1
righth:
		lw $t4,px	 
		lw $t1,py	
#revisa colision
		addi $t9,$t4,2
		move $a0,$t9
		move $a1,$t1
		jal ChoqueJH
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal ChoqueJH
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t1,1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t9,$t1,-1
		move $a0,$t4
		move $a1,$t9
		jal DrawPoint
		addi $t5,$t1,2
		addi $t9, $t4,1	
		move $a0,$t9		
		move $a1,$t5
		jal DrawPoint
		addi $t5,$t1,3		
		move $a0,$t9		
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t4,1		#actualiza X
		move $a0,$t5		#guarda X actualizado
		move $a1,$t1
		lw $a2, Purpura
		jal DrawPoint
		addi $t5,$t1,2
		addi $t9,$t4,1		
		move $a0,$t9		
		move $a1,$t5
		lw $a2, turquesa
		#jal DrawPoint
		addi $t5,$t1,3		
		move $a0,$t9		
		move $a1,$t5
		lw $a2, turquesa
		#jal DrawPoint
		sw $a0,px		#actualiza X
		sw $a1,py
		lw $t0,change
		beq $t0,0,sigue2h
		sw $a1,posdy		#actualiza Y
		sw $a0,posdx
sigue2h:
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,2
		move $a0,$t9
		move $a1,$t1
		lw $a2, Purpura
		jal DrawPoint
		add $t9,$t4,$zero
		move $a0,$t9
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t1,2
		addi $t9, $t4, 1	
		move $a0,$t9		
		move $a1,$t5
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,3		
		move $a0,$t9		
		move $a1,$t5
		lw $a2, turquesa
		jal DrawPoint
   		j MoveVerde1
NoMoveh:
		# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MoveVerde1
MoveHumano:
		lw $t0, bandera1
		beq $t0, 1, MoveVerde1
		lw $t1, vh
		beq $t1, 0, MoveVerde1
		lw $t4,hx	 
		lw $t1,hy
		addi $t5,$t1,1		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		jal ChoqueH	
# erase bottom point
		lw $a2, backgroundColor
		addi $t5,$t1,-2		#actualiza 
		move $a1,$t5	#guarda Y actualizado
		move $a0,$t4
		jal DrawPoint
		addi $t5,$t1,-1		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,1		#actualiza 
		move $a1,$t1		#guarda Y actualizado
		move $a0,$t4
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,1		#actualiza 
		move $a1,$t5		#guarda Y actualizado
		move $a0,$t4
		lw $a2, turquesa
		jal DrawPoint
		sw $a1,hy		#actualiza 
		sw $a0,hx
		li $t0, 5000
Delay:		addi $t0, $t0,-1
		beqz $t0, H1
		j Delay
H1:		j MoveHumano
Choque:
	sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		# color the location
	beq $t2,0x00FFFF33,QuitaVida
	beq $t2,0x00FFFF66,QuitaVida
	beq $t2,0x00CC0099,QuitaVida
	beq $t2,0x00FF0099,QuitaVida
	beq $t2,0x0000CC00,QuitaVida
	beq $t2,0x0000FF00,QuitaVida	 
	bne $t2,0x00000000,MoveVerde1
	jr $ra

ChoqueJH:
	sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		# color the location
	beq $t2,0x00FFFF33,QuitaVida
	beq $t2,0x00FFFF66,QuitaVida
	beq $t2,0x00CC0099,QuitaVida
	beq $t2,0x00FF0099,QuitaVida
	beq $t2,0x0000CC00,QuitaVida
	beq $t2,0x0000FF00,QuitaVida
	beq $t2,0x00804000,BorrarH
	beq $t2,0x00C96F6F,BorrarH
	beq $t2,0x00871E18,BorrarH	 
	#bne $t2,0x00000000,MoveVerde1
	jr $ra
ChoqueH:
	sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)
	beq $t2,0x00804000,EliminarH
	beq $t2,0x00C96F6F,EliminarH
	beq $t2,0x00871E18,EliminarH
	beq $t2,0x005F04B4, MoveJugadorHumano 
	#bne $t2,0x00000000,MoveHumano
	jr $ra
BorrarH:
	lw $t0, score
	addi $t1,$t0,1
	sw $t1,score 
	lw $t4,hx	 
	lw $t1,hy
	lw $a2, backgroundColor
	move $a1,$t1		#guarda Y actualizado
	move $a0,$t4
	jal DrawPoint
	addi $t5,$t1,-1		#actualiza 
	move $a1,$t5		#guarda Y actualizado
	move $a0,$t4
	jal DrawPoint
	sw $0, bandera
	j MoveVerde1
EliminarH:
	lw $t4,hx	 
	lw $t1,hy
	lw $a2, backgroundColor
	move $a1,$t1		#guarda Y actualizado
	move $a0,$t4
	jal DrawPoint
	addi $t5,$t1,-1		#actualiza 
	move $a1,$t5		#guarda Y actualizado
	move $a0,$t4
	jal DrawPoint
	sw $0, bandera
	sw $0, vh
	j MoveVerde1
QuitaVida:
	lw $t0,vidajugador
	addi $t1,$t0,-1
	sw $t1,vidajugador 
	j InitJugador

MoveVerde1:
	lw $t0, bandera1
	beq $t0, 1, MoveVerde1h
	lw $t1,vv1
	beq $t1,$zero,MoveRosado1
	lw $s1,dir1
	beq $s1,2, left1
	beq $s1,3, right1
	beq $s1,4, down1
	beq $s1,5, NoMove1
up1:
		lw $s0,y1
		addi $s0,$s0,-1
		sw $s0,y1
		lw $t4,pv1x	 
		lw $t1,pv1y	
		addi $t8,$t1,-1
		move $a0,$t4
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR1
  		#j MoveRosado1
down1: 
   		lw $t0,y1
		addi $t0,$t0,1
		sw $t0,y1
   		lw $t4,pv1x	 
		lw $t1,pv1y	
		addi $t8,$t1,1
		move $a0,$t4
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,-1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR1
   		#j MoveRosado1
left1:
   		lw $t0,x1
		addi $t0,$t0,-1
		sw $t0,x1
   		lw $t4,pv1x	
		lw $t1,pv1y	
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque1
		addi $t9,$t4,-5
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint		
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR1
   		#j MoveRosado1
right1:
   		lw $t0,x1
		addi $t0,$t0,1
		sw $t0,x1
   		lw $t4,pv1x	 
		lw $t1,pv1y	
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque1
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		add $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR1
   		#j MoveRosado1
NoMove1:
# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MueveR1
MoveVerde1h:
	lw $t1,vv1
	beq $t1,$zero,MoveRosado1
	lw $s1,dir1
	beq $s1,2, left1h
	beq $s1,3, right1h
	beq $s1,4, down1h
	beq $s1,5, NoMove1h
up1h:
		lw $s0,y1
		addi $s0,$s0,-1
		sw $s0,y1
		lw $t4,pv1x	 
		lw $t1,pv1y	
		addi $t8,$t1,-1
		move $a0,$t4
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t5,$t1, 3		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		jal DrawPoint
		addi $t5,$t1, 4		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		sw $a1, hy
		sw $a0, hx
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, turquesa
		jal DrawPoint
		j MueveR1
down1h: 
   		lw $t0,y1
		addi $t0,$t0,1
		sw $t0,y1
   		lw $t4,pv1x	 
		lw $t1,pv1y	
		addi $t8,$t1,1
		move $a0,$t4
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t9,$t4,-1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t5,$t1,2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		jal DrawPoint
		addi $t5,$t1,3		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		sw $a1, hy
		sw $a0, hx
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t1,3		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, turquesa
		jal DrawPoint
		addi $t5,$t1,4		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, turquesa
		jal DrawPoint
		j MueveR1
   		#j MoveRosado1
left1h:
   		lw $t0,x1
		addi $t0,$t0,-1
		sw $t0,x1
   		lw $t4,pv1x	
		lw $t1,pv1y	
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque1
		addi $t9,$t4,-5
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t5,$t1,2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		jal DrawPoint
		addi $t5,$t1,3		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint		
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		sw $a1, hy
		sw $a0, hx
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t5,$t4,-1		#actualiza Y
		addi $t6, $t1, 2
		move $a0,$t5
		move $a1,$t6		#guarda Y actualizado
		lw $a2, turquesa
		jal DrawPoint
		addi $t6,$t1, 3		#actualiza Y
		move $a0,$t5
		move $a1,$t6		#guarda Y actualizado
		lw $a2, turquesa
		jal DrawPoint		
		j MueveR1
   		#j MoveRosado1
right1h:
   		lw $t0,x1
		addi $t0,$t0,1
		sw $t0,x1
   		lw $t4,pv1x	 
		lw $t1,pv1y	
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque1
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque1
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		add $t8,$t1, 2
		move $a0,$t4
		move $a1,$t8
		jal DrawPoint
		add $t8,$t1, 3
		move $a0,$t4
		move $a1,$t8
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,pv1y		#actualiza Y
		sw $a0,pv1x
		sw $a1, hy
		sw $a0, hx
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		add $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1, 2
		addi $t9, $t4, 1
		move $a0,$t9
		move $a1,$t8
		lw $a2, turquesa
		jal DrawPoint
		addi $t8,$t1, 3
		move $a0,$t9
		move $a1,$t8
		lw $a2, turquesa
		jal DrawPoint
		j MueveR1
   		#j MoveRosado1
NoMove1h:
# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MueveR1
Choque1:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x00AC58FA,SumaScoreV1
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambio	#was collision 
	jr $ra
Cambio:
	lw $t6,dir1
	addi $s1,$t6,1
	sw $s1,dir1
	slti $t7,$s1,5
	beq $t7,1, MoveRosado1
	li $s1,0
	sw $s1,dir1
	j MoveRosado1
MoveRosado1:
	lw $t1,vr1
	beq $t1,$zero,MoveAmarillo1
	lw $s1,dir2 
	beq $s1,2, left2
	beq $s1,3, down2
	beq $s1,4, right2
	beq $s1,5, NoMove2
up2:
		lw $s0,y2
		addi $s0,$s0,-1
		sw $s0,y2
		lw $t4,pr1x	 
		lw $t1,pr1y	
 		addi $t8,$t1,-1
		move $a0,$t4
		move $a1,$t8
		jal Choque2
		addi $t9,$t4, 1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal Choque2
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque2
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, rosado
		jal DrawPoint
		sw $a1,pr1y		#actualiza Y
		sw $a0,pr1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		lw $a2, rosado
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR2
down2: 
   		lw $s0,y2
		addi $s0,$s0,1
		sw $s0,y2
   		lw $t4,pr1x	 
		lw $t1,pr1y	
 		addi $t8,$t1,1
		move $a0,$t4
		move $a1,$t8
		jal Choque2
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque2
		addi $t9,$t4,-1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque2
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza 
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, rosado
		jal DrawPoint
		sw $a1,pr1y		#actualiza Y
		sw $a0,pr1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		lw $a2,rosado
		jal DrawPoint
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR2
left2:
   		lw $t0,x2
		addi $t0,$t0,-1
		sw $t0,x2
   		lw $t4,pr1x	
		lw $t1,pr1y	
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque2
		addi $t9,$t4,-5
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque2
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque2
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, rosado
		jal DrawPoint		
		sw $a1,pr1y		#actualiza Y
		sw $a0,pr1x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, rosado
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR2

right2:
   		lw $t0,x2
		addi $t0,$t0,1
		sw $t0,x2
   		lw $t4,pr1x	 
		lw $t1,pr1y	
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque2
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque2
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, rosado
		jal DrawPoint
		sw $a1,pr1y		#actualiza Y
		sw $a0,pr1x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		add $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, rosado
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR2
 NoMove2:
		# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MueveR2
Choque2:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x00AC58FA,SumaScoreR1
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambio2	#was collision 
	jr $ra
Cambio2:
	lw $t6,dir2
	addi $s1,$t6,1
	sw $s1,dir2
	slti $t7,$s1,5
	beq $t7,1, MoveAmarillo1
	li $s1,0
	sw $s1,dir2
	j MoveAmarillo1
#####################
MoveAmarillo1:
	lw $t1,va1
	beq $t1,$zero,MoveVerde2
	lw $s1,dir3 
	beq $s1,2, left3
	beq $s1,3, down3
	beq $s1,4, right3
	beq $s1,5, NoMove3

up3:
		lw $s0,y3
		addi $s0,$s0,-1
		sw $s0,y3
		lw $t4,pa1x	 
		lw $t1,pa1y		 
		addi $t8,$t1,-2
		move $a0,$t4
		move $a1,$t8
		jal Choque3
		addi $t9,$t4,1
		addi $t8,$t1,-3
		move $a0,$t9
		move $a1,$t8
		jal Choque3
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque3
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, amarillo
		jal DrawPoint
		sw $a1,pa1y		#actualiza Y
		sw $a0,pa1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-3
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR3
down3: 
   		lw $s0,y3
		addi $s0,$s0,1
		sw $s0,y3
   		lw $t4,pa1x	 
		lw $t1,pa1y	
		addi $t8,$t1,2
		move $a0,$t4
		move $a1,$t8
		jal Choque3
		addi $t9,$t4,1
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		jal Choque3
		addi $t9,$t4,-1
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		jal Choque3
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, amarillo
		jal DrawPoint
		sw $a1,pa1y		#actualiza Y
		sw $a0,pa1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo
		jal DrawPoint
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR3
left3:
   		lw $s0,x3
		addi $s0,$s0,-1
		sw $s0,x3
   		lw $t4,pa1x	 
		lw $t1,pa1y	 
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque3
		addi $t9,$t4,-3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque3
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque3
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-2		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, amarillo
		jal DrawPoint
		sw $a1,pa1y		#actualiza Y
		sw $a0,pa1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-3
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR3
right3:
   		lw $s0,x3
		addi $s0,$s0,1
		sw $s0,x3
   		lw $t4,pa1x     
		lw $t1,pa1y	
 
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque3
		addi $t9,$t4,3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque3
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque3
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,2		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, amarillo
		jal DrawPoint
		sw $a1,pa1y		#actualiza Y
		sw $a0,pa1x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,3
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		j MueveR3
NoMove3:
# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MueveR3
		#j MoveVerde2
Choque3:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x00AC58FA,SumaScoreA1
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambio3	#was collision 
	jr $ra
Cambio3:
	lw $t6,dir3
	addi $s1,$t6,1
	sw $s1,dir3
	slti $t7,$s1,5
	beq $t7,1, MoveVerde2
	li $s1,0
	sw $s1,dir3
	j MoveVerde2
MoveVerde2:
	lw $t1,vv2
	beq $t1,$zero,MoveRosado2
	lw $s1,dir4
	beq $s1,2, right4
	beq $s1,3, left4
	beq $s1,4, down4
	beq $s1,5, NoMove4
up4:
		lw $s0,y4
		addi $s0,$s0,-1
		sw $s0,y4
		lw $t4,pv2x	 
		lw $t1,pv2y	
		addi $t8,$t1,-1
		move $a0,$t4
		move $a1,$t8
		jal Choque4
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal Choque4
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque4
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde1
		jal DrawPoint
		sw $a1,pv2y		#actualiza Y
		sw $a0,pv2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR4
down4: 
   		lw $t0,y4
		addi $t0,$t0,1
		sw $t0,y4
   		lw $t4,pv2x	 
		lw $t1,pv2y
		addi $t8,$t1,1
		move $a0,$t4
		move $a1,$t8
		jal Choque4
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque4
		addi $t9,$t4,-1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque4
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde1
		jal DrawPoint
		sw $a1,pv2y		#actualiza Y
		sw $a0,pv2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde1
		jal DrawPoint
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR4
left4:
   		lw $t0,x4
		addi $t0,$t0,-1
		sw $t0,x4
   		lw $t4,pv2x	 
		lw $t1,pv2y	
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque4
		addi $t9,$t4,-5
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque4
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque4
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde1
		jal DrawPoint
		sw $a1,pv2y		#actualiza Y
		sw $a0,pv2x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde1
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR4
right4:
   		lw $t0,x4
		addi $t0,$t0,1
		sw $t0,x4
   		lw $t4,pv2x	 
		lw $t1,pv2y	
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque4
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque4
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque4
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde1
		jal DrawPoint
		sw $a1,pv2y		#actualiza Y
		sw $a0,pv2x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		add $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, verde1
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR4
NoMove4:
# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MueveR4
Choque4:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x00AC58FA,SumaScoreV2
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambio4	#was collision 
	jr $ra
Cambio4:
	lw $t6,dir4
	addi $s1,$t6,1
	sw $s1,dir4
	slti $t7,$s1,5
	beq $t7,1, MoveRosado2
	li $s1,0
	sw $s1,dir4
	j MoveRosado2
#####################
MoveRosado2:
	lw $t1,vr2
	beq $t1,$zero,MoveAmarillo2
	lw $s1,dir5
	beq $s1,2, right5
	beq $s1,3, down5
	beq $s1,4, left5
	beq $s1,5, NoMove5
up5:
		lw $s0,y5
		addi $s0,$s0,-1
		sw $s0,y5
		lw $t4,pr2x	 
		lw $t1,pr2y		 
		addi $t8,$t1,-1
		move $a0,$t4
		move $a1,$t8
		jal Choque5
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		jal Choque5
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque5
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, rosado1
		jal DrawPoint
		sw $a1,pr2y		#actualiza Y
		sw $a0,pr2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-2
		move $a0,$t9
		move $a1,$t8
		lw $a2, rosado1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR5
down5: 
   		lw $s0,y5
		addi $s0,$s0,1
		sw $s0,y5
   		lw $t4,pr2x	 
		lw $t1,pr2y	
		addi $t8,$t1,1
		move $a0,$t4
		move $a1,$t8
		jal Choque5
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque5
		addi $t9,$t4,-1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal Choque5
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, rosado1
		jal DrawPoint
		sw $a1,pr2y		#actualiza Y
		sw $a0,pr2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		lw $a2,rosado1
		jal DrawPoint
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		add $t8,$t1,$zero
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,2
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
  		j MueveR5
left5:
   		lw $s0,x5
		addi $s0,$s0,-1
		sw $s0,x5
   		lw $t4,pr2x	 
		lw $t1,pr2y	 
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque5
		addi $t9,$t4,-2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque5
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque5
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, rosado1
		jal DrawPoint
		sw $a1,pr2y		#actualiza Y
		sw $a0,pr2x
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, rosado1
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR5
right5:
   		lw $s0,x5
		addi $s0,$s0,1
		sw $s0,x5
   		lw $t4,pr2x	 
		lw $t1,pr2y	
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque5
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque5
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque5
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, rosado1
		jal DrawPoint
		sw $a1,pr2y		#actualiza Y
		sw $a0,pr2x	
		li $s0, 0		#limpia teclazo
		add $t9,$t4,$zero
		add $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, rosado1
		jal DrawPoint
		add $t9,$t4,$zero
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,2
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR5
NoMove5:
# else do nothing, make sure the direction is nothing
		li $s0, 0
		j MueveR5
Choque5:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x00AC58FA,SumaScoreR2
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambio5	#was collision 
	jr $ra
Cambio5:
	lw $t6,dir5
	addi $s1,$t6,1
	sw $s1,dir5
	slti $t7,$s1,5
	beq $t7,1, MoveAmarillo2
	li $s1,0
	sw $s1,dir5
	j MoveAmarillo2
#####################
MoveAmarillo2:
	lw $t1,va2
	beq $t1,$zero,Balazos
	lw $s1,dir6 
	beq $s1,2, left6
	beq $s1,3, down6
	beq $s1,4, right6
	beq $s1,5, NoMove6
up6:
		lw $s0,y6
		addi $s0,$s0,-1
		sw $s0,y6
		lw $t4,pa2x	 
		lw $t1,pa2y	
		addi $t8,$t1,-2
		move $a0,$t4
		move $a1,$t8
		jal Choque6
		addi $t9,$t4,1
		addi $t8,$t1,-3
		move $a0,$t9
		move $a1,$t8
		jal Choque6
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque6
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#dibuja siguiente moviento
		addi $t5,$t1,-2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, amarillo1
		jal DrawPoint
		sw $a1,pa2y		#actualiza Y
		sw $a0,pa2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-3
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo1
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR6
 down6: 
   		lw $s0,y6
		addi $s0,$s0,1
		sw $s0,y6
   		lw $t4,pa2x	 
		lw $t1,pa2y	
		addi $t8,$t1,2
		move $a0,$t4
		move $a1,$t8
		jal Choque6
		addi $t9,$t4,1
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		jal Choque6
		addi $t9,$t4,-1
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		jal Choque6
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t1,2		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, amarillo1
		jal DrawPoint
		sw $a1,pa2y		#actualiza Y
		sw $a0,pa2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo1
		jal DrawPoint
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t8,$t1,3
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		#j MueveR6
left6:
   		lw $s0,x6
		addi $s0,$s0,-1
		sw $s0,x6
   		lw $t4,pa2x	
		lw $t1,pa2y	
		addi $t8,$t4,-5
		move $a0,$t8
		move $a1,$t1
		jal Choque6
		addi $t9,$t4,-3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque6
		addi $t9,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque6
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,-2		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, amarillo1
		jal DrawPoint
		sw $a1,pa2y		#actualiza Y
		sw $a0,pa2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,-1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo1
		jal DrawPoint
		addi $t9,$t4,-1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-3
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,-3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR6
right6:
   		lw $s0,x6
		addi $s0,$s0,1
		sw $s0,x6
   		lw $t4,pa2x     
		lw $t1,pa2y	
		addi $t8,$t4,5
		move $a0,$t8
		move $a1,$t1
		jal Choque6
		addi $t9,$t4,3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal Choque6
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal Choque6
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$t4,2		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, amarillo1
		jal DrawPoint
		sw $a1,pa2y		#actualiza Y
		sw $a0,pa2x
		li $s0, 0		#limpia teclazo
		addi $t9,$t4,1
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		lw $a2, amarillo1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,3
		addi $t8,$t1,1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
		addi $t9,$t4,3
		addi $t8,$t1,-1
		move $a0,$t9
		move $a1,$t8
		jal DrawPoint
   		j MueveR6
NoMove6:
# else do nothing, make sure the direction is nothing
		li $s0, 0
		j Balazos
Choque6:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x00AC58FA,SumaScoreA2
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambio6	#was collision 
	jr $ra
Cambio6:
	lw $t6,dir6
	addi $s1,$t6,1
	sw $s1,dir6
	slti $t7,$s1,5
	beq $t7,1, Bomba
	li $s1,0
	sw $s1,dir6
	j Bomba
#####################
Bomba:	
	lw $t1, 0xFFFF0004		# check to see which key has been pressed
	bne $t1,113, DrawBombas
	lw $t0, bomba
	beq $t0, $0, Balazos
	addi $t0, $t0,-1
	sw $t0, bomba
	li $t0, 0
	lw $t5, vv1
	beq $t0, $t5, firulais1
	sw $0, vv1
	addi $t3, $0, 1
	lw $t2, score
	add $t2, $t2, $t3
	sw $t2, score
	beq $t2, 6, Espera
	beq $t2, 18, Espera
	lw $t4,pv1x
	lw $t1,pv1y
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	li $t1, 30
	li $t2,	40	
	sw $t1,pv1x
	sw $t2,pv1y
	lw $t0, rx1
	lw $t1, ry1
	lw $a2, backgroundColor
	move $a0,$t0
	move $a1,$t1
	jal DrawPoint
	li $t0,30
	li $t1,8
	sw $t0,rx1
	sw $t1,ry1
firulais1:
	lw $t5, vr1
	beq $t0, $t5, firulais2
	sw $0,vr1
	addi $t3, $0, 1
	lw $t2, score
	add $t2, $t2, $t3
	sw $t2, score
	beq $t2, 6, Espera
	beq $t2, 18, Espera
	lw $t4,pr1x
	lw $t1,pr1y
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	li $t1, 37
	li $t2, 20
	sw $t1,pr1x
	sw $t2,pr1y
	lw $t0, rx2
	lw $t1, ry2
	lw $a2, backgroundColor
	move $a0,$t0
	move $a1,$t1
	jal DrawPoint
	li $t0,35
	li $t1,3
	sw $t0,rx2
	sw $t1,ry2
	sw $zero, 0xFFFF0004
firulais2:
	lw $t5, va1
	beq $t0, $t5, firulais3
	addi $t3, $0, 1
	sw $0,va1
	lw $t2, score
	add $t2, $t2, $t3
	sw $t2, score
	beq $t2, 6, Espera
	beq $t2, 18, Espera
	lw $t4,pa1x
	lw $t1,pa1y
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	li $t1,10
	li $t2,20
	sw $t1,pa1x
	sw $t2,pa1y
	lw $t0, rx3
	lw $t1, ry3
	lw $a2, backgroundColor
	move $a0,$t0
	move $a1,$t1
	jal DrawPoint
	li $t0,25
	li $t1,7
	sw $t0,rx3
	sw $t1,ry3
firulais3:
	lw $t5, vv2
	beq $t0, $t5, firulais4
	addi $t3, $0, 1
	sw $zero,vv2
	lw $t2, score
	add $t2, $t2, $t3
	sw $t2, score
	beq $t2, 6, Espera
	beq $t2, 18, Espera
	lw $t4,pv2x
	lw $t1,pv2y
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	li $t1, 20
	li $t2, 40	
	sw $t1,pv2x
	sw $t2,pv2y
	lw $t0, rx4
	lw $t1, ry4
	lw $a2, backgroundColor
	move $a0,$t0
	move $a1,$t1
	jal DrawPoint
	li $t0,28
	li $t1,8
	sw $t0,rx4
	sw $t1,ry4
firulais4:
	lw $t5, vr2
	beq $t0, $t5, firulais5
	addi $t3, $0, 1
	sw $0,vr2
	lw $t2, score
	add $t2, $t2, $t3
	sw $t2, score
	beq $t2, 6, Espera
	beq $t2, 18, Espera
	lw $t4,pr2x
	lw $t1,pr2y
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	li $t1, 8
	li $t2, 37
	sw $t1,pr2x
	sw $t2,pr2y
	lw $t0, rx5
	lw $t1, ry5
	lw $a2, backgroundColor
	move $a0,$t0
	move $a1,$t1
	jal DrawPoint
	li $t0,23
	li $t1,6
	sw $t0,rx5
	sw $t1,ry5
firulais5:
	lw $t5, va2
	beq $t0, $t5, DrawBombas
	addi $t3, $0, 1
	sw $0,va2
	lw $t2, score
	add $t2, $t2, $t3
	sw $t2, score
	beq $t2, 6, Espera
	beq $t2, 18, Espera
	lw $t4,pa2x
	lw $t1,pa2y
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,1
	addi $t5,$t1,1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	addi $t9,$t4,-1
	move $a0,$t9
	move $a1,$t5
	jal DrawPoint
	li $t1,20
	li $t2,20
	sw $t1,pa2x
	sw $t2,pa2y
	lw $t0, rx6
	lw $t1, ry6
	lw $a2, backgroundColor
	move $a0,$t0
	move $a1,$t1
	jal DrawPoint
	li $t0,28
	li $t1,4
	sw $t0,rx6
	sw $t1,ry6
	sw $zero, 0xFFFF0004
	li $a0, 250
	li $v0, 32
	syscall
DrawBombas: 
	lw $t0, bomba
	beq $t0, 2, bomb2
	beq $t0, 1, bomb
	beq $t0, 0, nobomb
bomb3:
	lw $a2, colorWhite
	li $a0, 14
	li $a1, 0
	jal DrawPoint
	li $a1, 2
	jal DrawPoint
	li $a0,15
	li $a1, 1
	jal DrawPoint
	li $a1, 0
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 2
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	lw $a2, rosado
	li $a1, 1
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	lw $a2, colorWhite
	li $a0, 14
	li $a1, 4
	jal DrawPoint
	li $a1, 6
	jal DrawPoint
	li $a0,15
	li $a1, 5
	jal DrawPoint
	li $a1, 4
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 6
	jal DrawHorizontalLine
	li $a1, 5
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	lw $a2, rosado
	li $a1, 5
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	lw $a2, colorWhite
	li $a0, 14
	li $a1, 8
	jal DrawPoint
	li $a1, 10
	jal DrawPoint
	li $a0,15
	li $a1, 9
	jal DrawPoint
	li $a1, 8
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 10
	jal DrawHorizontalLine
	li $a1, 9
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	lw $a2, rosado
	li $a1, 9
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	j Balazos
bomb2: 
#Borra una bomba
	lw $a2, backgroundColor
	li $a0, 14
	li $a1, 0
	jal DrawPoint
	li $a1, 2
	jal DrawPoint
	li $a0,15
	li $a1, 1
	jal DrawPoint
	li $a1, 0
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 2
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
#Dibuja 2 bombas
	lw $a2, colorWhite
	li $a0, 14
	li $a1, 4
	jal DrawPoint
	li $a1, 6
	jal DrawPoint
	li $a0,15
	li $a1, 5
	jal DrawPoint
	li $a1, 4
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 6
	jal DrawHorizontalLine
	li $a1, 5
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	lw $a2, rosado
	li $a1, 5
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	lw $a2, colorWhite
	li $a0, 14
	li $a1, 8
	jal DrawPoint
	li $a1, 10
	jal DrawPoint
	li $a0,15
	li $a1, 9
	jal DrawPoint
	li $a1, 8
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 10
	jal DrawHorizontalLine
	li $a1, 9
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	lw $a2, rosado
	li $a1, 9
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	j Balazos
bomb:
	#Borra 2 bombas
	lw $a2, backgroundColor
	li $a0, 14
	li $a1, 0
	jal DrawPoint
	li $a1, 2
	jal DrawPoint
	li $a0,15
	li $a1, 1
	jal DrawPoint
	li $a1, 0
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 2
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	li $a0, 14
	li $a1, 4
	jal DrawPoint
	li $a1, 6
	jal DrawPoint
	li $a0,15
	li $a1, 5
	jal DrawPoint
	li $a1, 4
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 6
	jal DrawHorizontalLine
	li $a1, 5
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	li $a1, 5
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
#Dibuja una bomba
	lw $a2, colorWhite
	li $a0, 14
	li $a1, 8
	jal DrawPoint
	li $a1, 10
	jal DrawPoint
	li $a0,15
	li $a1, 9
	jal DrawPoint
	li $a1, 8
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 10
	jal DrawHorizontalLine
	li $a1, 9
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	lw $a2, rosado
	li $a1, 9
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	j Balazos
nobomb:
	#Borra 3 bombas
	lw $a2, backgroundColor
	li $a0, 14
	li $a1, 0
	jal DrawPoint
	li $a1, 2
	jal DrawPoint
	li $a0,15
	li $a1, 1
	jal DrawPoint
	li $a1, 0
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 2
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	li $a1, 1
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	li $a0, 14
	li $a1, 4
	jal DrawPoint
	li $a1, 6
	jal DrawPoint
	li $a0,15
	li $a1, 5
	jal DrawPoint
	li $a1, 4
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 6
	jal DrawHorizontalLine
	li $a1, 5
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	li $a1, 5
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	li $a0, 14
	li $a1, 8
	jal DrawPoint
	li $a1, 10
	jal DrawPoint
	li $a0,15
	li $a1, 9
	jal DrawPoint
	li $a1, 8
	li $a0, 16
	li $a3, 18
	jal DrawHorizontalLine
	li $a1, 10
	jal DrawHorizontalLine
	li $a1, 9
	li $a0, 16
	li $a3, 17
	jal DrawHorizontalLine
	li $a1, 9
	li $a0, 18
	li $a3, 19
	jal DrawHorizontalLine
	j Balazos
Balazos: #$s3 = uso, $s5 =direccion $s6= x, $s7 = y
	lw $t1, 0xFFFF0004		# check to see which key has been pressed
	bne $t1,32, Vidas
	la $s5, balazos
	#sll $t0, $s5, 2
	lw $s6, px
	lw $s7, py
	sw $s6, 0($s5)
	sw $s7, 4($s5)
U1:	lw $s3, 8($s5)
	beq $s3, 1, SigDisp
	li $t2, 1
	sw $t2, 8($s5)
	sw $zero, 0xFFFF0004
	j Disparo
SigDisp:
	lw $s6, px
	lw $s7, py
	sw $s6, 12($s5)
	sw $s7, 16($s5)
	lw $s3, 20($s5)
	beq $s3, 1, U1
	li $t2, 1
	sw $t2, 20($s5)
	sw $zero, 0xFFFF0004
	j Disparo
Disparo:
	lw $s1,direcd
	beq $s1, 4, rightd
   	leftd:	
		lw $s3, 8($s5)
		beq $s3, 0, L2
		lw $s6, 0($s5)
		j L3
L2:		lw $s6, 12($s5)
L3:		addi $t8,$s6,-2
		move $a0,$t8
		move $a1,$s7
		jal Choqued
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$s6
		move $a1,$s7
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$s6,-2
		move $a0,$t5
		move $a1,$s7		#guarda Y actualizado
		lw $a2, colorRojo
		jal DrawPoint
		li $t0, 500
DelayL:		addi $t0, $t0,-1
		beqz $t0, NL
		j DelayL
NL:		lw $s3, 8($s5)
		beq $s3, 0, L1
		sw $a1, 4($s5)		#actualiza Y
		sw $a0, 0($s5)
		j leftd
L1:		
		sw $a1, 16($s5)
		sw $a0, 12($s5)
		j leftd
rightd:
		lw $s3, 8($s5)
		beq $s3, 0, R2
		lw $s6, 0($s5)
		j R3
R2:		lw $s6, 12($s5)
R3:		addi $t8,$s6,2
		move $a0,$t8
		move $a1,$s7
		jal Choqued
# erase bottom point
		lw $a2, backgroundColor
		move $a0,$s6
		move $a1,$s7
		jal DrawPoint
#Dibuja siguiente movimiento
		addi $t5,$s6,2	#actualiza Y
		move $a0,$t5
		move $a1,$s7		#guarda Y actualizado
		lw $a2, colorRojo
		jal DrawPoint
		li $t0, 500
DelayR:		addi $t0, $t0,-1
		beqz $t0, NR
		j DelayR
NR:		lw $s3, 8($s5)
		beq $s3, 0, R1
		sw $a1, 4($s5)		#actualiza Y
		sw $a0, 0($s5)
		j rightd
R1:		
		sw $a1, 16($s5)
		sw $a0, 12($s5)
		j rightd
Choqued:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x0000CC00,SumaScoreV1
	beq $t2,0x0000FF00,SumaScoreV2
	beq $t2,0x00CC0099,SumaScoreR1
	beq $t2,0x00FF0099,SumaScoreR2
	beq $t2,0x00FFFF33,SumaScoreA1
	beq $t2,0x00FFFF66,SumaScoreA2
	bne $t2,0x00000000,Cambiod	#was collision
	beq $t2,0x000000FF, Cambiod
	jr $ra
SumaScoreV1:
	lw $s3, 8($s5)
	beq $s3, 0, S1
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	sw $0, bandera1
	j BorrarR1
S1:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR1
SumaScoreR1:
	lw $s3, 8($s5)
	beq $s3, 0, S2
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR2
S2:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR2
SumaScoreA1:
	lw $s3, 8($s5)
	beq $s3, 0, S3
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR3
S3:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR3
SumaScoreV2:
	lw $s3, 8($s5)
	beq $s3, 0, S4
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR4
S4:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR4
SumaScoreR2:
	lw $s3, 8($s5)
	beq $s3, 0, S5
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR5
S5:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR5
SumaScoreA2:
	lw $s3, 8($s5)
	beq $s3, 0, S6
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR6
S6:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	lw $t0,score
	addi $t1,$t0,1
	sw $t1,score
	j BorrarR6
BorraE:	
E6:
	lw $t4,posda2x	 
	lw $t1,posda2y	
# erase bottom point
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	sw $zero,va2
	lw $t4,pa2x
	lw $t1,pa2y
	j EliminaE
E5: 
	sw $zero,vr2
	lw $t4,pr2x
	lw $t1,pr2y
	j EliminaE
E4:
	sw $zero,vv2
	lw $t4,pv2x
	lw $t1,pv2y
	j EliminaE
E3:
	sw $zero,va1
	lw $t4,pa1x
	lw $t1,pa1y
	j EliminaE
E2: 
	sw $zero,vr1
	lw $t4,pr1x
	lw $t1,pr1y
	j EliminaE
E1:
	lw $t4,posdv1x	 
	lw $t1,posdv1y	
# erase bottom point
	lw $a2, backgroundColor
	move $a0,$t4
	move $a1,$t1
	jal DrawPoint
	sw $zero,vv1
	lw $t4,pv1x
	lw $t1,pv1y
	j EliminaE
EliminaE:
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,1
		addi $t5,$t1,1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		addi $t9,$t4,-1
		move $a0,$t9
		move $a1,$t5
		jal DrawPoint
		j MoveHumano
Cambiod:
	li $s4, 0
	li $t0,1		#cambia direccion disparo
	sw $t0,change
	lw $s3, 8($s5)
	beq $s3, 0, C1
	lw $s6, 0($s5)
	lw $s7, 4($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 8($s5)
	j Vidas
C1:	
	lw $s6, 12($s5)
	lw $s7, 16($s5)
	lw $a2, backgroundColor
	move $a0,$s6
	move $a1,$s7
	jal DrawPoint
	sw $0, 20($s5)
	j Vidas
PlayPointSound:
		# play a sound
		li $a0, 110		# Make the sound when a point is scored
		li $a1, 20
		li $a2, 124
		li $a3, 100
		li $v0, 31
		syscall
Vidas: 
	lw $t0,vidajugador
	beq $t0,2, doss
	beq $t0,1,unoo
	beq $t0,3, tress
	beq $t0,0,EndGame
	j Score
tress: 
# tres naves 	
		lw $a2, gris
		li $a1, 15
		li $a0, 3
		li $a3, 4
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 2
		li $a3, 3
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 1
		li $a3, 2
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 1
		li $a3, 1
		jal DrawHorizontalLine
		lw $a2, verde
		li $a0, 5
		li $a3, 5
		li $a1, 15
		jal DrawHorizontalLine
		lw $a2, azul
		li $a1, 14
		li $a0, 4
		li $a3, 4
		jal DrawHorizontalLine
		lw $a2, rosado
		li $a1, 15
		li $a0, 1
		li $a3, 2
		jal DrawHorizontalLine
		li $a0, 1
		li $a1, 14
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 0
		li $a3, 0
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		lw $a2, gris
		li $a1, 15
		li $a0, 10
		li $a3, 11
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 9
		li $a3, 10
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 8
		li $a3, 9
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 8
		li $a3, 8
		jal DrawHorizontalLine
		lw $a2, verde
		li $a0, 12
		li $a3, 12
		li $a1, 15
		jal DrawHorizontalLine
		lw $a2, azul
		li $a1, 14
		li $a0, 11
		li $a3, 11
		jal DrawHorizontalLine
		lw $a2, rosado
		li $a1, 15
		li $a0, 8
		li $a3, 9
		jal DrawHorizontalLine
		li $a0, 8
		li $a1, 14
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 7
		li $a3, 7
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		lw $a2, gris
		li $a1, 15
		li $a0, 17
		li $a3, 18
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 16
		li $a3, 17
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 15
		li $a3, 16
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 15
		li $a3, 15
		jal DrawHorizontalLine
		lw $a2, verde
		li $a0, 19
		li $a3, 19
		li $a1, 15
		jal DrawHorizontalLine
		lw $a2, azul
		li $a1, 14
		li $a0, 18
		li $a3, 18
		jal DrawHorizontalLine
		lw $a2, rosado
		li $a1, 15
		li $a0, 15
		li $a3, 16
		jal DrawHorizontalLine
		li $a0, 15
		li $a1, 14
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 14
		li $a3, 14
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		j Score
doss:
#borro primer nave
		lw $a2, backgroundColor
		li $a1, 15
		li $a0, 3
		li $a3, 4
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 2
		li $a3, 3
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 1
		li $a3, 2
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 1
		li $a3, 1
		jal DrawHorizontalLine
		li $a0, 5
		li $a3, 5
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 4
		li $a3, 4
		jal DrawHorizontalLine
		li $a1, 15
		li $a0, 1
		li $a3, 2
		jal DrawHorizontalLine
		li $a0, 1
		li $a1, 14
		jal DrawPoint
		li $a0, 0
		li $a3, 0
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
	#Dibuja 2 naves
		lw $a2, gris
		li $a1, 15
		li $a0, 10
		li $a3, 11
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 9
		li $a3, 10
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 8
		li $a3, 9
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 8
		li $a3, 8
		jal DrawHorizontalLine
		lw $a2, verde
		li $a0, 12
		li $a3, 12
		li $a1, 15
		jal DrawHorizontalLine
		lw $a2, azul
		li $a1, 14
		li $a0, 11
		li $a3, 11
		jal DrawHorizontalLine
		lw $a2, rosado
		li $a1, 15
		li $a0, 8
		li $a3, 9
		jal DrawHorizontalLine
		li $a0, 8
		li $a1, 14
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 7
		li $a3, 7
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		lw $a2, gris
		li $a1, 15
		li $a0, 17
		li $a3, 18
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 16
		li $a3, 17
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 15
		li $a3, 16
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 15
		li $a3, 15
		jal DrawHorizontalLine
		lw $a2, verde
		li $a0, 19
		li $a3, 19
		li $a1, 15
		jal DrawHorizontalLine
		lw $a2, azul
		li $a1, 14
		li $a0, 18
		li $a3, 18
		jal DrawHorizontalLine
		lw $a2, rosado
		li $a1, 15
		li $a0, 15
		li $a3, 16
		jal DrawHorizontalLine
		li $a0, 15
		li $a1, 14
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 14
		li $a3, 14
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		j Score
unoo:
#borra 2 naves
		lw $a2, backgroundColor
		li $a1, 15
		li $a0, 3
		li $a3, 4
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 2
		li $a3, 3
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 1
		li $a3, 2
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 1
		li $a3, 1
		jal DrawHorizontalLine
		li $a0, 5
		li $a3, 5
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 4
		li $a3, 4
		jal DrawHorizontalLine
		li $a1, 15
		li $a0, 1
		li $a3, 2
		jal DrawHorizontalLine
		li $a0, 1
		li $a1, 14
		jal DrawPoint
		li $a0, 0
		li $a3, 0
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		li $a1, 15
		li $a0, 10
		li $a3, 11
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 9
		li $a3, 10
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 8
		li $a3, 9
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 8
		li $a3, 8
		jal DrawHorizontalLine
		li $a0, 12
		li $a3, 12
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 11
		li $a3, 11
		jal DrawHorizontalLine
		li $a1, 15
		li $a0, 8
		li $a3, 9
		jal DrawHorizontalLine
		li $a0, 8
		li $a1, 14
		jal DrawPoint
		li $a0, 7
		li $a3, 7
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
#Dibuja una nave
		lw $a2, gris
		li $a1, 15
		li $a0, 17
		li $a3, 18
		jal DrawHorizontalLine
		li $a1, 14
		li $a0, 16
		li $a3, 17
		jal DrawHorizontalLine
		li $a1, 13
		li $a0, 15
		li $a3, 16
		jal DrawHorizontalLine
		li $a1, 12
		li $a0, 15
		li $a3, 15
		jal DrawHorizontalLine
		lw $a2, verde
		li $a0, 19
		li $a3, 19
		li $a1, 15
		jal DrawHorizontalLine
		lw $a2, azul
		li $a1, 14
		li $a0, 18
		li $a3, 18
		jal DrawHorizontalLine
		lw $a2, rosado
		li $a1, 15
		li $a0, 15
		li $a3, 16
		jal DrawHorizontalLine
		li $a0, 15
		li $a1, 14
		jal DrawPoint
		lw $a2, colorRojo
		li $a0, 14
		li $a3, 14
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 13
		jal DrawHorizontalLine
		j Score
Score:  lw $t0, nivel
	beq $t0, 1, RefreshN1
	beq $t0, 2, RefreshN2
	beq $t0, 3, RefreshN3
Score1:	lw $t0,score 
	######Unidades
	beq $t0,0, cero1
	beq $t0,1, cero1
	beq $t0,2, cero1
	beq $t0,3, cero1
	beq $t0,4, cero1
	beq $t0,5, cero1
	beq $t0,6, cero1
	beq $t0,7, cero1
	beq $t0,8, cero1
	beq $t0,9, cero1
	beq $t0, 10, uno1
	beq $t0, 11, uno1
	beq $t0, 12, uno1
	beq $t0, 13, uno1
	beq $t0, 14, uno1
	beq $t0, 15, uno1
	beq $t0, 16, uno1
	beq $t0, 17, uno1
	beq $t0, 18, uno1
	beq $t0, 19, uno1
	beq $t0, 20, dos1
	beq $t0, 21, dos1
	beq $t0, 22, dos1
	beq $t0, 23, dos1
	beq $t0, 24, dos1
	beq $t0, 25, dos1
	beq $t0, 26, dos1
	beq $t0, 27, dos1
	beq $t0, 28, dos1
	beq $t0, 29, dos1
	beq $t0, 30, tres1
	beq $t0, 31, tres1
	beq $t0, 32, tres1
	beq $t0, 33, tres1
	beq $t0, 34, tres1
	beq $t0, 35, tres1
	beq $t0, 36, tres1
	beq $t0, 37, tres1
	beq $t0, 38, tres1
	beq $t0, 39, EndGame
	j DisparoV1
nueve:
		
#borra 8
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#draw nueve 
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,9
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		j DisparoV1
ocho:
#borra siete 
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#draw ocho 
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
		lw $t0, score
		beq $t0, 18, Espera
		j DisparoV1
siete:
	#borra 6 
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
# draw number  7 
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,53
		li $a1,9
		li $a3,55
		jal DrawHorizontalLine
		j DisparoV1
seis: 
#clear number 5 
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
# draw number 6
		li $a0,51
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,54
		li $a1,9
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,54
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
		lw $t0, score
		beq $t0, 6, Espera
		j DisparoV1
cinco:
	#borro 4
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#draw cinco 
		li $a0,51
		li $a1,7
		lw $a2,colorWhite
		li $a3,9
		jal DrawVerticalLine
		li $a0,54
		li $a1,9
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,54
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,54
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,54
		jal DrawHorizontalLine	
		j DisparoV1
cuatro:
		#borra el 3 
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
############DIBUJA 4
		li $a0,51
		li $a1,7
		lw $a2,colorWhite
		li $a3,9
		jal DrawVerticalLine
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		j DisparoV1
tres:
#BORRA UN DOS
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#Draw 3
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,52
		li $a1,9
		li $a3,54
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
		j DisparoV1
dos:
#BORRA UNO
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#DIBUJA DOS
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,9
		jal DrawVerticalLine
		li $a0,51
		li $a1,9
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,54
		jal DrawHorizontalLine
		j DisparoV1
uno:
#BORRA CERO
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#DIBUJA UNO
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		j DisparoV1
cero:
#Borra 9
		li $a0,54
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,9
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
#DIBUJA CERO
		li $a0,54
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,51
		li $a1,7
		li $a3,53
		jal DrawHorizontalLine
		li $a0,51
		li $a1,11
		li $a3,53
		jal DrawHorizontalLine
		j DisparoV1	
cero1:
#DIBUJA CERO1
		li $a0,49
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,48
		jal DrawHorizontalLine
		li $a0,46
		li $a1,11
		li $a3,48
		jal DrawHorizontalLine
		lw $t0, score
		beq $t0,0, cero
		beq $t0,1, uno
		beq $t0,2, dos
		beq $t0,3, tres
		beq $t0,4, cuatro
		beq $t0,5, cinco
		beq $t0,6, seis
		beq $t0,7, siete
		beq $t0,8, ocho
		beq $t0,9, nueve
		#j DisparoV1
uno1:
#Borra cero
		li $a0,49
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,48
		jal DrawHorizontalLine
		li $a0,46
		li $a1,11
		li $a3,48
		jal DrawHorizontalLine
#DIBUJA UNO
		li $a0,46
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		lw $t0, score
		beq $t0,10, cero
		beq $t0,11, uno
		beq $t0,12, dos
		beq $t0,13, tres
		beq $t0,14, cuatro
		beq $t0,15, cinco
		beq $t0,16, seis
		beq $t0,17, siete
		beq $t0,18, ocho
		beq $t0,19, nueve
dos1:
#BORRA UNO
		li $a0,46
		li $a1,7
		lw $a2,backgroundColor
		li $a3,11
		jal DrawVerticalLine
#DIBUJA DOS
		li $a0,49
		li $a1,7
		lw $a2,colorWhite
		li $a3,9
		jal DrawVerticalLine
		li $a0,46
		li $a1,9
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,48
		jal DrawHorizontalLine
		li $a0,46
		li $a1,9
		li $a3,48
		jal DrawHorizontalLine
		li $a0,46
		li $a1,11
		li $a3,49
		jal DrawHorizontalLine
		lw $t0, score
		beq $t0,20, cero
		beq $t0,21, uno
		beq $t0,22, dos
		beq $t0,23, tres
		beq $t0,24, cuatro
		beq $t0,25, cinco
		beq $t0,26, seis
		beq $t0,27, siete
		beq $t0,28, ocho
		beq $t0,29, nueve
tres1:
#BORRA UN DOS
		li $a0,49
		li $a1,7
		lw $a2,backgroundColor
		li $a3,9
		jal DrawVerticalLine
		li $a0,46
		li $a1,9
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,48
		jal DrawHorizontalLine		
		li $a0,46
		li $a1,9
		li $a3,48
		jal DrawHorizontalLine
		li $a0,46
		li $a1,11
		li $a3,49
		jal DrawHorizontalLine
#DIBUJA UN TRES
		li $a0,49
		li $a1,7
		lw $a2,colorWhite
		li $a3,11
		jal DrawVerticalLine
		li $a0,46
		li $a1,7
		li $a3,48
		jal DrawHorizontalLine
		li $a0,47
		li $a1,9
		li $a3,48
		jal DrawHorizontalLine
		li $a0,46
		li $a1,11
		li $a3,48
		jal DrawHorizontalLine
		lw $t0, score
		beq $t0,30, cero
		beq $t0,31, uno
		beq $t0,32, dos
		beq $t0,33, tres
		beq $t0,34, cuatro
		beq $t0,35, cinco
		beq $t0,36, seis
		beq $t0,37, siete
		beq $t0,38, ocho
		beq $t0,39, nueve
DisparoV1:
	lw $t1,vv1
	beq $t1,$zero,DisparoA2
leftdv1:
   		lw $t4,posdv1x	 
		lw $t1,posdv1y	 
		addi $t8,$t4,-2
		move $a0,$t8
		move $a1,$t1
		jal Choquedv1
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-2	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,verde
		jal DrawPoint
		sw $a1,posdv1y		#actualiza Y
		sw $a0,posdv1x
updv1:
   		lw $t4,posdv1x	 
		lw $t1,posdv1y	
		addi $t8,$t1,-1
		move $a0,$t4
		move $a1,$t8
		jal Choquedv1
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,posdv1y		#actualiza Y
		sw $a0,posdv1x
   		j DisparoA2
 Choquedv1:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambiodv1	#was collision 
	jr $ra
Cambiodv1:
	j InitDisparoV1		
DisparoA2:
	lw $t1,va2
	beq $t1,$zero,Minar1
rightda2:
   		lw $t4,posda2x	 
		lw $t1,posda2y	 
		addi $t8,$t4,2
		move $a0,$t8
		move $a1,$t1
		jal Choqueda2
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,2	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,amarillo1
		jal DrawPoint
		sw $a1,posda2y		#actualiza Y
		sw $a0,posda2x
 downda2: 
   		lw $t4,posda2x	 
		lw $t1,posda2y	
		addi $t8,$t1,1
		move $a0,$t4
		move $a1,$t8
		jal Choqueda2
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,amarillo1
		jal DrawPoint
		sw $a1,posda2y		#actualiza Y
		sw $a0,posda2x
   		j Minar1
 Choqueda2:
	sll $t0, $a1, 6 	  # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $t2, ($v0)		 # color the location
	beq $t2,0x005F04B4,QuitaVida
	bne $t2,0x00000000,Cambioda2	#was collision 
	jr $ra
Cambioda2:
	j InitDisparoA2
Minar1:
	li $t0, 40
	lw $t2, pr1x
	lw $t3, pr1y
	bne $t0, $t2, Minar2
	addi $t3, $t3, 2
	sw $t0, posmr1x
	sw $t3, posmr1y
	move $a0, $t0
	move $a1, $t3
	lw $a2, rosado
	jal DrawPoint
	lw $t4, ($v0)
	bne $t4, 0x005F04B4,Minar2
	lw $a2, backgroundColor
	lw $a0, posmr1x
	lw $a1, posmr1y
	jal DrawPoint
	j QuitaVida
Minar2:
	li $t0, 20
	lw $t2, pr2x
	lw $t3, pr2y
	bne $t0, $t2, Revivir
	addi $t3, $t3, 2
	sw $t0, posmr2x
	sw $t3, posmr2y
	move $a0, $t0
	move $a1, $t3
	lw $a2, rosado1
	jal DrawPoint
	lw $t4, ($v0)
	bne $t4, 0x005F04B4,Revivir
	lw $a2, backgroundColor
	lw $a0, posmr2x
	lw $a1, posmr2y
	jal DrawPoint
	j QuitaVida

Espera:
#Cambiarlo para poder pasar de nivel con el score (Enemigo)
	li $a0, 500	#
	li $v0, 32	# pausa por medio segundo
	syscall		#
	lw $t0,nivel
	addi $t0,$t0,1
	sw $t0,nivel	
	beq $t0, 2, PantallaN2
	beq $t0, 3, PantallaN3	
PantallaN2:
		jal ClearBoard
		lw $a2, azul
		li $a0, 24
		li $a1, 15
		li $a3, 24
		jal DrawVerticalLine
		li $a0, 36
		jal DrawVerticalLine
		li $a1, 24
		li $a0, 25
		li $a3, 29
		jal DrawHorizontalLine
		li $a1, 24
		li $a0, 34
		li $a3, 38
		jal DrawHorizontalLine
		li $a0, 35
		li $a1, 15
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 34
		li $a1, 16
		li $a3, 17
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 19
		lw $a2, verde
		jal DrawPoint
		li $a0, 43
		li $a1, 20
		jal DrawPoint
		li $a0, 44
		li $a1, 21
		jal DrawPoint
		li $a0, 45
		li $a1, 22
		jal DrawPoint
		li $a0, 46
		li $a1, 21
		jal DrawPoint
		li $a0, 47
		li $a1, 20
		jal DrawPoint
		li $a0, 48
		li $a1, 19
		jal DrawPoint
		li $a0, 49
		li $a1, 18
		jal DrawPoint
		li $a0, 50
		li $a1, 17
		jal DrawPoint
		li $a0, 51
		li $a1, 16
		jal DrawPoint
		#FALTA DIBUJAR BONUS
		li $v0, 32
		li $a0, 1000
		syscall
		j Limpia
PantallaN3:
		jal ClearBoard
		lw $a2, Marco2
		li $a0, 24
		li $a1, 15
		li $a3, 24
		jal DrawVerticalLine
		li $a1, 24
		li $a0, 25
		li $a3, 29
		jal DrawHorizontalLine
		li $a0, 38
		li $a1, 15
		li $a3, 18
		jal DrawVerticalLine
		li $a0, 34
		li $a1, 20
		li $a3, 23
		jal DrawVerticalLine
		li $a1, 24
		li $a0, 34
		li $a3, 38
		jal DrawHorizontalLine
		li $a1, 15
		jal DrawHorizontalLine
		li $a1, 19
		jal DrawHorizontalLine
		li $a0, 42
		li $a1, 19
		lw $a2, azul
		jal DrawPoint
		li $a0, 43
		li $a1, 20
		jal DrawPoint
		li $a0, 44
		li $a1, 21
		jal DrawPoint
		li $a0, 45
		li $a1, 22
		jal DrawPoint
		li $a0, 46
		li $a1, 21
		jal DrawPoint
		li $a0, 47
		li $a1, 20
		jal DrawPoint
		li $a0, 48
		li $a1, 19
		jal DrawPoint
		li $a0, 49
		li $a1, 18
		jal DrawPoint
		li $a0, 50
		li $a1, 17
		jal DrawPoint
		li $a0, 51
		li $a1, 16
		jal DrawPoint
		#FALTA DIBUJAR BONUS
		li $v0, 32
		li $a0, 1000
		syscall
		j Limpia
Revivir:
	lw $s1,vv1
	lw $s2,vr1
	lw $t3,va1
	lw $t7,vv2
	lw $t5,vr2
	lw $t6,va2
	beq $s1,1,Begin_standby
	beq $s2,1,Begin_standby
	beq $t3,1,Begin_standby
	beq $t7,1,Begin_standby
	beq $t5,1,Begin_standby
	beq $t6,1,Begin_standby	
	li $t1,1
	sw $t1,vv1
	sw $t1,vr1
	sw $t1,va1
	sw $t1,vv2
	sw $t1,vr2
	sw $t1,va2

MueveR1:
	lw $t2,vv1
	lw $t0,x1
	lw $t1,y1
	beq $t1, 4, downR1
	beq $t0,-3, leftR1
	beq $t0, 3, rightR1
	beq $t1,-4, upR1
	j NoMovedR1

upR1:
		li $s0,0
		sw $s0,y1
		lw $t4,rx1	 
		lw $t1,ry1	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1 	#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,ry1		#actualiza Y
		sw $a0,rx1
		j MoveRosado1
downR1:
   	
		li $s0,0
		sw $s0,y1
   		lw $t4,rx1	 
		lw $t1,ry1	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,verde
		jal DrawPoint
		sw $a1,ry1		#actualiza Y
		sw $a0,rx1
		j MoveRosado1
leftR1:
		li $s0,0
		sw $s0,x1
   		lw $t4,rx1	 
		lw $t1,ry1	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-1	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde
		jal DrawPoint
		sw $a1,ry1		#actualiza Y
		sw $a0,rx1
		j MoveRosado1
rightR1:
		li $s0,0
		sw $s0,x1
   		lw $t4,rx1   
		lw $t1,ry1	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,verde
		jal DrawPoint
		sw $a1,ry1		#actualiza Y
		sw $a0,rx1
   		j MoveRosado1
NoMovedR1: 			# else do nothing, make sure the direction is nothing
		j MoveRosado1
BorrarR1:
		lw $t0, rx1
		lw $t1, ry1
		lw $a2, backgroundColor
		move $a0,$t0
		move $a1,$t1
		jal DrawPoint
		j E1	
MueveR2:
	lw $t0,x2
	lw $t1,y2
	beq $t1, 3, downR2
	beq $t0,-4, leftR2
	beq $t0, 4, rightR2
	beq $t1,-3, upR2
	j NoMovedR2

upR2:
		li $s0,0
		sw $s0,y2
		lw $t4,rx2	 
		lw $t1,ry2	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1 	#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, rosado
		jal DrawPoint
		sw $a1,ry2		#actualiza Y
		sw $a0,rx2
		j MoveAmarillo1
downR2: 
		li $s0,0
		sw $s0,y2
   		lw $t4,rx2	 
		lw $t1,ry2	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,rosado
		jal DrawPoint
		sw $a1,ry2		#actualiza Y
		sw $a0,rx2
   		j MoveAmarillo1
leftR2:
		li $s0,0
		sw $s0,x2
   		lw $t4,rx2	 
		lw $t1,ry2	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-1	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, rosado
		jal DrawPoint
		sw $a1,ry2		#actualiza Y
		sw $a0,rx2
   		j MoveAmarillo1
rightR2:
		li $s0,0
		sw $s0,x2
   		lw $t4,rx2   
		lw $t1,ry2	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,rosado
		jal DrawPoint
		sw $a1,ry2		#actualiza Y
		sw $a0,rx2
   		j MoveAmarillo1
NoMovedR2: 			# else do nothing, make sure the direction is nothing
		j MoveAmarillo1
BorrarR2:
		lw $t0,rx2
		lw $t1, ry2
		lw $a2, backgroundColor
		move $a0,$t0
		move $a1,$t1
		jal DrawPoint
		j E2
MueveR3:
	lw $t0,x3
	lw $t1,y3
	beq $t1, 3, downR3
	beq $t0,-3, leftR3
	beq $t0, 3, rightR3
	beq $t1,-3, upR3
	j NoMovedR3

upR3:
		li $s0,0
		sw $s0,y3
		lw $t4,rx3	 
		lw $t1,ry3	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1 	#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, amarillo
		jal DrawPoint
		sw $a1,ry3		#actualiza Y
		sw $a0,rx3
		j MoveVerde2

downR3: 
		li $s0,0
		sw $s0,y3
   		lw $t4,rx3	 
		lw $t1,ry3	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,amarillo
		jal DrawPoint
		sw $a1,ry3		#actualiza Y
		sw $a0,rx3
		j MoveVerde2
   	
leftR3:
		li $s0,0
		sw $s0,x3
   		lw $t4,rx3	 
		lw $t1,ry3	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-1	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,amarillo
		jal DrawPoint
		sw $a1,ry3		#actualiza Y
		sw $a0,rx3
		j MoveVerde2
   	
rightR3:
		li $s0,0
		sw $s0,x3
   		lw $t4,rx3   
		lw $t1,ry3	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,amarillo
		jal DrawPoint
		sw $a1,ry3		#actualiza Y
		sw $a0,rx3
   		j MoveVerde2
   		
NoMovedR3: 			# else do nothing, make sure the direction is nothing
		j MoveVerde2
		
BorrarR3:
		lw $t0,rx3
		lw $t1, ry3
		lw $a2, backgroundColor
		move $a0,$t0
		move $a1,$t1
		jal DrawPoint
		j E3
MueveR4:
	lw $t0,x4
	lw $t1,y4
	beq $t1,4, downR4
	beq $t0,-3, leftR4
	beq $t0,3, rightR4
	beq $t1,-4, upR4
	j NoMovedR4

upR4:
		li $s0,0
		sw $s0,y4
		lw $t4,rx4	 
		lw $t1,ry4	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1 	#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, verde1
		jal DrawPoint
		sw $a1,ry4		#actualiza Y
		sw $a0,rx4
		j MoveRosado2
downR4: 
		li $s0,0
		sw $s0,y4
   		lw $t4,rx4	 
		lw $t1,ry4	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,verde1
		jal DrawPoint
		sw $a1,ry4		#actualiza Y
		sw $a0,rx4
   		j MoveRosado2
leftR4:
		li $s0,0
		sw $s0,x4
   		lw $t4,rx4	 
		lw $t1,ry4	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-1	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, verde1
		jal DrawPoint
		sw $a1,ry4		#actualiza Y
		sw $a0,rx4
   		j MoveRosado2
rightR4:
		li $s0,0
		sw $s0,x4
   		lw $t4,rx4   
		lw $t1,ry4	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,verde1
		jal DrawPoint
		sw $a1,ry4		#actualiza Y
		sw $a0,rx4
   		j MoveRosado2
   		NoMovedR4: # else do nothing, make sure the direction is nothing
		j MoveRosado2
BorrarR4:
		lw $t0,rx4
		lw $t1, ry4
		lw $a2, backgroundColor
		move $a0,$t0
		move $a1,$t1
		jal DrawPoint
		j E4
MueveR5:
	lw $t2,vr2
	lw $t0,x5
	lw $t1,y5
	beq $t1, 3, downR5
	beq $t0,-4, leftR5
	beq $t0, 4, rightR5
	beq $t1,-3, upR5
	j NoMovedR5

upR5:
		li $s0,0
		sw $s0,y5
		lw $t4,rx5	 
		lw $t1,ry5	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1 	#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, rosado1
		jal DrawPoint
		sw $a1,ry5		#actualiza Y
		sw $a0,rx5
		j MoveAmarillo2
downR5:
   	
		li $s0,0
		sw $s0,y5
   		lw $t4,rx5	 
		lw $t1,ry5	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,rosado1
		jal DrawPoint
		sw $a1,ry5		#actualiza Y
		sw $a0,rx5
		j MoveAmarillo2
leftR5:
		li $s0,0
		sw $s0,x5
   		lw $t4,rx5	 
		lw $t1,ry5	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-1	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, rosado1
		jal DrawPoint
		sw $a1,ry5		#actualiza Y
		sw $a0,rx5
		j MoveAmarillo2
rightR5:
		li $s0,0
		sw $s0,x5
   		lw $t4,rx5   
		lw $t1,ry5	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,rosado1
		jal DrawPoint
		sw $a1,ry5		#actualiza Y
		sw $a0,rx5
   		j MoveAmarillo2
NoMovedR5: 			# else do nothing, make sure the direction is nothing
		j MoveAmarillo2
BorrarR5:
		lw $t0, rx5
		lw $t1, ry5
		lw $a2, backgroundColor
		move $a0,$t0
		move $a1,$t1
		jal DrawPoint
		j E5	
MueveR6:
	lw $t0,x6
	lw $t1,y6
	beq $t1, 3, downR6
	beq $t0,-3, leftR6
	beq $t0, 3, rightR6
	beq $t1,-3, upR6
	j NoMovedR6

upR6:
		li $s0,0
		sw $s0,y6
		lw $t4,rx6	 
		lw $t1,ry6	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#dibuja siguiente moviento
		addi $t5,$t1,-1 	#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2, amarillo1
		jal DrawPoint
		sw $a1,ry6		#actualiza Y
		sw $a0,rx6
		j Balazos
downR6:
		li $s0,0
		sw $s0,y6
   		lw $t4,rx6	 
		lw $t1,ry6	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t1,1		#actualiza Y
		move $a0,$t4
		move $a1,$t5		#guarda Y actualizado
		lw $a2,amarillo1
		jal DrawPoint
		sw $a1,ry6		#actualiza Y
		sw $a0,rx6
		#j Balazos
leftR6:
		li $s0,0
		sw $s0,x6
   		lw $t4,rx6	 
		lw $t1,ry6	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,-1	#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2, amarillo1
		jal DrawPoint
		sw $a1,ry6		#actualiza Y
		sw $a0,rx6
		j Balazos
rightR6:
		li $s0,0
		sw $s0,x6
   		lw $t4,rx6   
		lw $t1,ry6	
		# erase bottom point
		lw $a2, backgroundColor
		move $a0,$t4
		move $a1,$t1
		jal DrawPoint
		#Dibuja siguiente movimiento
		addi $t5,$t4,1		#actualiza Y
		move $a0,$t5
		move $a1,$t1		#guarda Y actualizado
		lw $a2,amarillo1
		jal DrawPoint
		sw $a1,ry6		#actualiza Y
		sw $a0,rx6
		j Balazos
NoMovedR6:			 # else do nothing, make sure the direction is nothing
		j Balazos	# $a0 contains x position, $a1 contains y position, $a2 contains the color	
BorrarR6:
		lw $t0,rx6
		lw $t1, ry6
		lw $a2, backgroundColor
		move $a0,$t0
		move $a1,$t1
		jal DrawPoint
		j E6
RefreshN1: 
#Marco pantalla 
		li $a0, 21
		li $a1, 0
		lw $a2, azul
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 0
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 0
		li $a3, 42
		jal DrawHorizontalLine
#Dibuja mapa 1
		lw $a2, cafe
		li $a0, 1
		li $a1, 62
		jal DrawPoint
		li $a0, 2
		li $a1, 62
		jal DrawPoint
		li $a0, 3
		li $a1, 62
		jal DrawPoint
		li $a0, 4
		li $a1, 61
		jal DrawPoint
		li $a0, 5
		li $a1, 61
		jal DrawPoint
		li $a0, 6
		li $a1, 61
		jal DrawPoint
		li $a0, 7
		li $a1, 60
		jal DrawPoint
		li $a0, 8
		li $a1, 60
		jal DrawPoint
		li $a0, 9
		li $a1, 60
		jal DrawPoint
		li $a0, 10
		li $a1, 59
		jal DrawPoint
		li $a0, 11
		li $a1, 59
		jal DrawPoint
		li $a0, 12
		li $a1, 59
		jal DrawPoint
		li $a0, 13
		li $a1, 58
		jal DrawPoint
		li $a0, 14
		li $a1, 58
		jal DrawPoint
		li $a0, 15
		li $a1, 58
		jal DrawPoint
		li $a0, 16
		li $a1, 57
		jal DrawPoint
		li $a0, 17
		li $a1, 57
		jal DrawPoint
		li $a0, 18
		li $a1, 57
		jal DrawPoint
		li $a0, 19
		li $a1, 56
		jal DrawPoint
		li $a0, 20
		li $a1, 56
		jal DrawPoint
		li $a0, 21
		li $a1, 56
		jal DrawPoint
		li $a0, 22
		li $a1, 57
		jal DrawPoint
		li $a0, 23
		li $a1, 57
		jal DrawPoint
		li $a0, 24
		li $a1, 57
		jal DrawPoint
		li $a0, 25
		li $a1, 58
		jal DrawPoint
		li $a0, 26
		li $a1, 58
		jal DrawPoint
		li $a0, 27
		li $a1, 58
		jal DrawPoint
		li $a0, 28
		li $a1, 59
		jal DrawPoint
		li $a0, 29
		li $a1, 59
		jal DrawPoint
		li $a0, 30
		li $a1, 59
		jal DrawPoint
		li $a0, 31
		li $a1, 60
		jal DrawPoint
		li $a0, 32
		li $a1, 60
		jal DrawPoint
		li $a0, 33
		li $a1, 60
		jal DrawPoint
		li $a0, 34
		li $a1, 59
		jal DrawPoint
		li $a0, 35
		li $a1, 59
		jal DrawPoint
		li $a0, 36
		li $a1, 59
		jal DrawPoint
		li $a0, 37
		li $a1, 58
		jal DrawPoint
		li $a0, 38
		li $a1, 58
		jal DrawPoint
		li $a0, 39
		li $a1, 58
		jal DrawPoint
		li $a0, 40
		li $a1, 57
		jal DrawPoint
		li $a0, 41
		li $a1, 57
		jal DrawPoint
		li $a0, 42
		li $a1, 57
		jal DrawPoint
		li $a0, 43
		li $a1, 56
		jal DrawPoint
		li $a0, 44
		li $a1, 56
		jal DrawPoint
		li $a0, 45
		li $a1, 56
		jal DrawPoint
		li $a0, 46
		li $a1, 55
		jal DrawPoint
		li $a0, 47
		li $a1, 55
		jal DrawPoint
		li $a0, 48
		li $a1, 55
		jal DrawPoint
		li $a0, 49
		li $a1, 54
		jal DrawPoint
		li $a0, 50
		li $a1, 54
		jal DrawPoint
		li $a0, 51
		li $a1, 54
		jal DrawPoint
		li $a0, 52
		li $a1, 55
		jal DrawPoint
		li $a0, 53
		li $a1, 55
		jal DrawPoint
		li $a0, 54
		li $a1, 55
		jal DrawPoint
		li $a0, 55
		li $a1, 56
		jal DrawPoint
		li $a0, 56
		li $a1, 56
		jal DrawPoint
		li $a0, 57
		li $a1, 56
		jal DrawPoint
		li $a0, 58
		li $a1, 57
		jal DrawPoint
		li $a0, 59
		li $a1, 57
		jal DrawPoint
		li $a0, 60
		li $a1, 57
		jal DrawPoint
		li $a0, 61
		li $a1, 57
		jal DrawPoint
		li $a0, 62
		li $a1, 58
		jal DrawPoint
#Dibuja minimapa 1
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		li $a0, 24
		li $a1, 14
		jal DrawPoint
		li $a0, 25
		li $a1, 14
		jal DrawPoint
		li $a0, 26
		li $a1, 13
		jal DrawPoint
		li $a0, 27
		li $a1, 13
		jal DrawPoint
		li $a0, 28
		li $a1, 12
		jal DrawPoint
		li $a0, 29
		li $a1, 12
		jal DrawPoint
		li $a0, 30
		li $a1, 13
		jal DrawPoint
		li $a0, 31
		li $a1, 13
		jal DrawPoint
		li $a0, 32
		li $a1, 14
		jal DrawPoint
		li $a0, 33
		li $a1, 14
		jal DrawPoint
		li $a0, 34
		li $a1, 13
		jal DrawPoint
		li $a0, 35
		li $a1, 13
		jal DrawPoint
		li $a0, 36
		li $a1, 12
		jal DrawPoint
		li $a0, 37
		li $a1, 12
		jal DrawPoint
		li $a0, 38
		li $a1, 11
		jal DrawPoint
		li $a0, 39
		li $a1, 11
		jal DrawPoint
		li $a0, 40
		li $a1, 12
		jal DrawPoint
		li $a0, 41
		li $a1, 12
		jal DrawPoint
		j Score1
RefreshN2:
#Marco pantalla 
		li $a0, 21
		li $a1, 0
		lw $a2, Marco2
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 0
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 0
		li $a3, 42
		jal DrawHorizontalLine
#Dibuja mapa 2 (hay que cambiarlo)
		lw $a2, ColorX
		li $a0, 1
		li $a1, 62
		jal DrawPoint
		li $a0, 2
		li $a1, 62
		jal DrawPoint
		li $a0, 3
		li $a1, 62
		jal DrawPoint
		li $a0, 4
		li $a1, 61
		jal DrawPoint
		li $a0, 5
		li $a1, 61
		jal DrawPoint
		li $a0, 6
		li $a1, 61
		jal DrawPoint
		li $a0, 7
		li $a1, 60
		jal DrawPoint
		li $a0, 8
		li $a1, 60
		jal DrawPoint
		li $a0, 9
		li $a1, 60
		jal DrawPoint
		li $a0, 10
		li $a1, 59
		jal DrawPoint
		li $a0, 11
		li $a1, 59
		jal DrawPoint
		li $a0, 12
		li $a1, 59
		jal DrawPoint
		li $a0, 13
		li $a1, 58
		jal DrawPoint
		li $a0, 14
		li $a1, 58
		jal DrawPoint
		li $a0, 15
		li $a1, 58
		jal DrawPoint
		li $a0, 16
		li $a1, 57
		jal DrawPoint
		li $a0, 17
		li $a1, 57
		jal DrawPoint
		li $a0, 18
		li $a1, 57
		jal DrawPoint
		li $a0, 19
		li $a1, 56
		jal DrawPoint
		li $a0, 20
		li $a1, 56
		jal DrawPoint
		li $a0, 21
		li $a1, 56
		jal DrawPoint
		li $a0, 22
		li $a1, 57
		jal DrawPoint
		li $a0, 23
		li $a1, 57
		jal DrawPoint
		li $a0, 24
		li $a1, 57
		jal DrawPoint
		li $a0, 25
		li $a1, 58
		jal DrawPoint
		li $a0, 26
		li $a1, 58
		jal DrawPoint
		li $a0, 27
		li $a1, 58
		jal DrawPoint
		li $a0, 28
		li $a1, 59
		jal DrawPoint
		li $a0, 29
		li $a1, 59
		jal DrawPoint
		li $a0, 30
		li $a1, 59
		jal DrawPoint
		li $a0, 31
		li $a1, 60
		jal DrawPoint
		li $a0, 32
		li $a1, 60
		jal DrawPoint
		li $a0, 33
		li $a1, 60
		jal DrawPoint
		li $a0, 34
		li $a1, 59
		jal DrawPoint
		li $a0, 35
		li $a1, 59
		jal DrawPoint
		li $a0, 36
		li $a1, 59
		jal DrawPoint
		li $a0, 37
		li $a1, 58
		jal DrawPoint
		li $a0, 38
		li $a1, 58
		jal DrawPoint
		li $a0, 39
		li $a1, 58
		jal DrawPoint
		li $a0, 40
		li $a1, 57
		jal DrawPoint
		li $a0, 41
		li $a1, 57
		jal DrawPoint
		li $a0, 42
		li $a1, 57
		jal DrawPoint
		li $a0, 43
		li $a1, 56
		jal DrawPoint
		li $a0, 44
		li $a1, 56
		jal DrawPoint
		li $a0, 45
		li $a1, 56
		jal DrawPoint
		li $a0, 46
		li $a1, 55
		jal DrawPoint
		li $a0, 47
		li $a1, 55
		jal DrawPoint
		li $a0, 48
		li $a1, 55
		jal DrawPoint
		li $a0, 49
		li $a1, 54
		jal DrawPoint
		li $a0, 50
		li $a1, 54
		jal DrawPoint
		li $a0, 51
		li $a1, 54
		jal DrawPoint
		li $a0, 52
		li $a1, 55
		jal DrawPoint
		li $a0, 53
		li $a1, 55
		jal DrawPoint
		li $a0, 54
		li $a1, 55
		jal DrawPoint
		li $a0, 55
		li $a1, 56
		jal DrawPoint
		li $a0, 56
		li $a1, 56
		jal DrawPoint
		li $a0, 57
		li $a1, 56
		jal DrawPoint
		li $a0, 58
		li $a1, 57
		jal DrawPoint
		li $a0, 59
		li $a1, 57
		jal DrawPoint
		li $a0, 60
		li $a1, 57
		jal DrawPoint
		li $a0, 61
		li $a1, 57
		jal DrawPoint
		li $a0, 62
		li $a1, 58
		jal DrawPoint
#Dibuja minimapa 2 (hay que cambiarlo)
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		li $a0, 24
		li $a1, 14
		jal DrawPoint
		li $a0, 25
		li $a1, 14
		jal DrawPoint
		li $a0, 26
		li $a1, 13
		jal DrawPoint
		li $a0, 27
		li $a1, 13
		jal DrawPoint
		li $a0, 28
		li $a1, 12
		jal DrawPoint
		li $a0, 29
		li $a1, 12
		jal DrawPoint
		li $a0, 30
		li $a1, 13
		jal DrawPoint
		li $a0, 31
		li $a1, 13
		jal DrawPoint
		li $a0, 32
		li $a1, 14
		jal DrawPoint
		li $a0, 33
		li $a1, 14
		jal DrawPoint
		li $a0, 34
		li $a1, 13
		jal DrawPoint
		li $a0, 35
		li $a1, 13
		jal DrawPoint
		li $a0, 36
		li $a1, 12
		jal DrawPoint
		li $a0, 37
		li $a1, 12
		jal DrawPoint
		li $a0, 38
		li $a1, 11
		jal DrawPoint
		li $a0, 39
		li $a1, 11
		jal DrawPoint
		li $a0, 40
		li $a1, 12
		jal DrawPoint
		li $a0, 41
		li $a1, 12
		jal DrawPoint
		j Score1
RefreshN3:
#Marco pantalla 
		li $a0, 21
		li $a1, 0
		lw $a2, Marco3
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawVerticalLine
		li $a0, 63
		jal DrawVerticalLine
		li $a0, 42
		li $a1, 0
		li $a3, 16
		jal DrawVerticalLine
		li $a0, 0
		li $a1, 16
		li $a3, 63
		jal DrawHorizontalLine
		li $a1, 63
		jal DrawHorizontalLine
		li $a0, 21
		li $a1, 0
		li $a3, 42
		jal DrawHorizontalLine
#Dibuja mapa 3 (hay que cambiarlo)
		lw $a2, ColorY
		li $a0, 1
		li $a1, 62
		jal DrawPoint
		li $a0, 2
		li $a1, 62
		jal DrawPoint
		li $a0, 3
		li $a1, 62
		jal DrawPoint
		li $a0, 4
		li $a1, 61
		jal DrawPoint
		li $a0, 5
		li $a1, 61
		jal DrawPoint
		li $a0, 6
		li $a1, 61
		jal DrawPoint
		li $a0, 7
		li $a1, 60
		jal DrawPoint
		li $a0, 8
		li $a1, 60
		jal DrawPoint
		li $a0, 9
		li $a1, 60
		jal DrawPoint
		li $a0, 10
		li $a1, 59
		jal DrawPoint
		li $a0, 11
		li $a1, 59
		jal DrawPoint
		li $a0, 12
		li $a1, 59
		jal DrawPoint
		li $a0, 13
		li $a1, 58
		jal DrawPoint
		li $a0, 14
		li $a1, 58
		jal DrawPoint
		li $a0, 15
		li $a1, 58
		jal DrawPoint
		li $a0, 16
		li $a1, 57
		jal DrawPoint
		li $a0, 17
		li $a1, 57
		jal DrawPoint
		li $a0, 18
		li $a1, 57
		jal DrawPoint
		li $a0, 19
		li $a1, 56
		jal DrawPoint
		li $a0, 20
		li $a1, 56
		jal DrawPoint
		li $a0, 21
		li $a1, 56
		jal DrawPoint
		li $a0, 22
		li $a1, 57
		jal DrawPoint
		li $a0, 23
		li $a1, 57
		jal DrawPoint
		li $a0, 24
		li $a1, 57
		jal DrawPoint
		li $a0, 25
		li $a1, 58
		jal DrawPoint
		li $a0, 26
		li $a1, 58
		jal DrawPoint
		li $a0, 27
		li $a1, 58
		jal DrawPoint
		li $a0, 28
		li $a1, 59
		jal DrawPoint
		li $a0, 29
		li $a1, 59
		jal DrawPoint
		li $a0, 30
		li $a1, 59
		jal DrawPoint
		li $a0, 31
		li $a1, 60
		jal DrawPoint
		li $a0, 32
		li $a1, 60
		jal DrawPoint
		li $a0, 33
		li $a1, 60
		jal DrawPoint
		li $a0, 34
		li $a1, 59
		jal DrawPoint
		li $a0, 35
		li $a1, 59
		jal DrawPoint
		li $a0, 36
		li $a1, 59
		jal DrawPoint
		li $a0, 37
		li $a1, 58
		jal DrawPoint
		li $a0, 38
		li $a1, 58
		jal DrawPoint
		li $a0, 39
		li $a1, 58
		jal DrawPoint
		li $a0, 40
		li $a1, 57
		jal DrawPoint
		li $a0, 41
		li $a1, 57
		jal DrawPoint
		li $a0, 42
		li $a1, 57
		jal DrawPoint
		li $a0, 43
		li $a1, 56
		jal DrawPoint
		li $a0, 44
		li $a1, 56
		jal DrawPoint
		li $a0, 45
		li $a1, 56
		jal DrawPoint
		li $a0, 46
		li $a1, 55
		jal DrawPoint
		li $a0, 47
		li $a1, 55
		jal DrawPoint
		li $a0, 48
		li $a1, 55
		jal DrawPoint
		li $a0, 49
		li $a1, 54
		jal DrawPoint
		li $a0, 50
		li $a1, 54
		jal DrawPoint
		li $a0, 51
		li $a1, 54
		jal DrawPoint
		li $a0, 52
		li $a1, 55
		jal DrawPoint
		li $a0, 53
		li $a1, 55
		jal DrawPoint
		li $a0, 54
		li $a1, 55
		jal DrawPoint
		li $a0, 55
		li $a1, 56
		jal DrawPoint
		li $a0, 56
		li $a1, 56
		jal DrawPoint
		li $a0, 57
		li $a1, 56
		jal DrawPoint
		li $a0, 58
		li $a1, 57
		jal DrawPoint
		li $a0, 59
		li $a1, 57
		jal DrawPoint
		li $a0, 60
		li $a1, 57
		jal DrawPoint
		li $a0, 61
		li $a1, 57
		jal DrawPoint
		li $a0, 62
		li $a1, 58
		jal DrawPoint
#Dibuja minimapa 3 (hay que cambiarlo)
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		li $a0, 24
		li $a1, 14
		jal DrawPoint
		li $a0, 25
		li $a1, 14
		jal DrawPoint
		li $a0, 26
		li $a1, 13
		jal DrawPoint
		li $a0, 27
		li $a1, 13
		jal DrawPoint
		li $a0, 28
		li $a1, 12
		jal DrawPoint
		li $a0, 29
		li $a1, 12
		jal DrawPoint
		li $a0, 30
		li $a1, 13
		jal DrawPoint
		li $a0, 31
		li $a1, 13
		jal DrawPoint
		li $a0, 32
		li $a1, 14
		jal DrawPoint
		li $a0, 33
		li $a1, 14
		jal DrawPoint
		li $a0, 34
		li $a1, 13
		jal DrawPoint
		li $a0, 35
		li $a1, 13
		jal DrawPoint
		li $a0, 36
		li $a1, 12
		jal DrawPoint
		li $a0, 37
		li $a1, 12
		jal DrawPoint
		li $a0, 38
		li $a1, 11
		jal DrawPoint
		li $a0, 39
		li $a1, 11
		jal DrawPoint
		li $a0, 40
		li $a1, 12
		jal DrawPoint
		li $a0, 41
		li $a1, 12
		jal DrawPoint
		j Score1	
DrawPoint:
		sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		# draw the color to the location
		jr $ra
# $a0 the x starting coordinate
# $a1 the y coordinate
# $a2 the color
# $a3 the x ending coordinate
DrawHorizontalLine:
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		sub $t9, $a3, $a0
		move $t1, $a0
HorizontalLoop:
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		bge $t9, 0, HorizontalLoop
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4
		jr $ra
# $a0 the x coordinate
# $a1 the y starting coordinate
# $a2 the color
# $a3 the y ending coordinate
DrawVerticalLine:
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		sub $t9, $a3, $a1
		move $t1, $a1
VerticalLoop:
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		bge $t9, 0, VerticalLoop
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4
		jr $ra
# AdjustDir  changes the players direction registers depending on the key pressed
AdjustDir: 

		lw $a0, 0xFFFF0004		# Load button pressed
move_up:
		bne $a0, 119, move_down  # w
		li $s0, 0x01000000	# up
		j done		
move_down:
		bne $a0, 115, move_left	# s
		li $s0, 0x02000000	# down
		j done
move_left:
		bne $a0, 97, move_right # a
		li $s0, 0x03000000	# left
		lw $t0,change
		beq $t0,0,done
		li $t0,3
		sw $t0,direcd
		j done
move_right:
		bne $a0, 100, disparo	# d
		li $s0, 0x04000000	# right
		lw $t0,change
		beq $t0,0,done
		li $t0,4
		sw $t0,direcd
		j done
disparo:
		bne $a0, 104, none	# space
		li $s4, 0x05000000	# deber\EDa disparar
		j done
	none:
		add $s0,$zero,$s0				# Do nothing
	done:
		jr $ra				# Return
# Makes the entire bitmap display the background color (black)
ClearBoard:
		lw $t0, backgroundColor
		li $t1, 16384 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
                
# Ends the game, wrapping up the process
EndGame:
		jal ClearBoard		
		lw $t0, score
		beq $t0, 39, Win
	GameOver:
#DIBUJA GAME
#G
		li $a0, 2
		lw $a2, colorRojo 
		li $a1, 17 
		li $a3, 29 
		jal DrawVerticalLine
		li $a0, 3
		li $a1, 16
		li $a3, 30 
		jal DrawVerticalLine
		li $a0, 4
		li $a1, 15
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 5
		jal DrawVerticalLine
		li $a0, 6
		jal DrawVerticalLine
		li $a0, 6 
		li $a1, 15
		li $a3, 13 
		jal DrawHorizontalLine
		li $a1, 16
		li $a3, 15  
		jal DrawHorizontalLine
	 	li $a1, 31 
		jal DrawHorizontalLine
		li $a1, 30
		li $a3, 17 
		jal DrawHorizontalLine
		li $a1, 29 
		jal DrawHorizontalLine
		li $a1, 28 
		jal DrawHorizontalLine
		li $a0, 6 
		li $a1, 16
		li $a3, 15 
		jal DrawHorizontalLine
		li $a1, 17 
		jal DrawHorizontalLine
		li $a0, 9  
		li $a1, 21
		li $a3, 16 
		jal DrawHorizontalLine
		li $a0, 9  
		li $a1, 22
		li $a3, 16 
		jal DrawHorizontalLine
		li $a1, 23 
		jal DrawHorizontalLine
		li $a0, 15 
		li $a1, 24 
		li $a3, 28
		jal DrawVerticalLine
		li $a0, 16
		jal DrawVerticalLine
		li $a0, 17 
		li $a1, 21 
		li $a3, 28 
		jal DrawVerticalLine
#A		
		li $a0, 19 
		li $a1, 19 
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 20 
		jal DrawVerticalLine
		li $a0, 21 
		li $a1, 17 
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 22 
		jal DrawVerticalLine
		li $a0, 23 
		li $a1, 16 
		li $a3, 23 
		jal DrawVerticalLine
		li $a0, 24 
		li $a1, 15 
		li $a3, 22 
		jal DrawVerticalLine
		li $a0, 25 
		jal DrawVerticalLine
		li $a0, 26 
		li $a1, 16 
		li $a3, 22 
		jal DrawVerticalLine
		li $a0, 27 
		li $a1, 17 
		li $a3, 23 
		jal DrawVerticalLine
		li $a0, 28
		li $a1, 17 
		li $a3, 31  
		jal DrawVerticalLine
		li $a0, 29 
		li $a1, 19 
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 30
		jal DrawVerticalLine
		li $a0, 20 
		li $a1, 26
		li $a3, 29 
		jal DrawHorizontalLine
		li $a1, 27 
		jal DrawHorizontalLine
#M
		li $a0, 32 
		li $a1, 15 
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 33 
		jal DrawVerticalLine
		li $a0, 34 
		jal DrawVerticalLine
		li $a0, 35 
		li $a1, 17 
		li $a3, 21 
		jal DrawVerticalLine
		li $a0, 36 
		jal DrawVerticalLine
		li $a0, 37 
		li $a1, 18 
		li $a3, 22 
		jal DrawVerticalLine
		li $a0, 38 
		jal DrawVerticalLine
		li $a0, 39 
		jal DrawVerticalLine
		li $a0, 40 
		li $a1, 17 
		li $a3, 21 
		jal DrawVerticalLine
		li $a0, 41
		jal DrawVerticalLine
		li $a0, 42 
		li $a1, 15 
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 43
		jal DrawVerticalLine 
		li $a0, 44
		jal DrawVerticalLine 									
#E
		li $a0, 46 
		li $a1, 15 
		li $a3, 31 
		jal DrawVerticalLine
		li $a0, 47 
		jal DrawVerticalLine
		li $a0, 48 
		jal DrawVerticalLine
		li $a0, 49 
		jal DrawVerticalLine
		li $a0, 50 
		li $a1, 15
		li $a3, 59 
		jal DrawHorizontalLine
		li $a1, 16
		jal DrawHorizontalLine		
		li $a1, 17
		jal DrawHorizontalLine
		li $a0, 50 
		li $a1, 22
		li $a3, 55 
		jal DrawHorizontalLine
		li $a1, 23
		jal DrawHorizontalLine
		li $a1, 24
		jal DrawHorizontalLine							
		li $a0, 50 
		li $a1, 29
		li $a3, 59 
		jal DrawHorizontalLine
		li $a1, 30
		jal DrawHorizontalLine		
		li $a1, 31
		jal DrawHorizontalLine
#DIBUJA OVER
#O
		li $a0, 4 
		li $a1, 34
		li $a3, 15 
		jal DrawHorizontalLine																		
		li $a0, 3 
		li $a1, 35
		li $a3, 16 
		jal DrawHorizontalLine													
		li $a0, 2 
		li $a1, 36
		li $a3, 17 
		jal DrawHorizontalLine	
		li $a0, 2 
		li $a1, 36 
		li $a3, 47 
		jal DrawVerticalLine		
		li $a0, 3 
		jal DrawVerticalLine
		li $a0, 4 
		jal DrawVerticalLine
		li $a0, 15 
		li $a1, 36 
		li $a3, 47 
		jal DrawVerticalLine		
		li $a0, 16 
		jal DrawVerticalLine
		li $a0, 17
		jal DrawVerticalLine																										
		li $a0, 4 
		li $a1, 50
		li $a3, 15 
		jal DrawHorizontalLine																		
		li $a0, 3 
		li $a1, 49
		li $a3, 16 
		jal DrawHorizontalLine													
		li $a0, 2 
		li $a1, 48
		li $a3, 17 
		jal DrawHorizontalLine																														
#V
		li $a0, 19 
		li $a1, 34 
		li $a3, 47 
		jal DrawVerticalLine																																						
		li $a0, 20 
		li $a1, 34 
		li $a3, 48 
		jal DrawVerticalLine
		li $a0, 21
		jal DrawVerticalLine
		li $a0, 22 
		li $a1, 45 
		li $a3, 50 
		jal DrawVerticalLine
		li $a0, 23 
		li $a1, 46 
		li $a3, 50 
		jal DrawVerticalLine
		li $a0, 26
		jal DrawVerticalLine
		li $a0, 24 
		li $a1, 46 
		li $a3, 50 
		jal DrawVerticalLine
		li $a0, 25
		jal DrawVerticalLine
		li $a0, 27 
		li $a1, 45 
		li $a3, 50 
		jal DrawVerticalLine
		li $a0, 28 
		li $a1, 34 
		li $a3, 48 
		jal DrawVerticalLine
		li $a0, 29
		jal DrawVerticalLine
		li $a0, 30 
		li $a1, 34 
		li $a3, 47 
		jal DrawVerticalLine
#E
		li $a0, 32 
		li $a1, 34 
		li $a3, 50 
		jal DrawVerticalLine
		li $a0, 33 
		jal DrawVerticalLine
		li $a0, 34 
		jal DrawVerticalLine
		li $a0, 35 
		jal DrawVerticalLine
		li $a0, 32 
		li $a1, 34
		li $a3, 44 
		jal DrawHorizontalLine
		li $a1, 35
		jal DrawHorizontalLine		
		li $a1, 36
		jal DrawHorizontalLine
		li $a0, 32 
		li $a1, 41
		li $a3, 41
		jal DrawHorizontalLine
		li $a1, 42
		jal DrawHorizontalLine
		li $a1, 43
		jal DrawHorizontalLine							
		li $a0, 32 
		li $a1, 50
		li $a3, 44 
		jal DrawHorizontalLine
		li $a1, 49
		jal DrawHorizontalLine		
		li $a1, 48
		jal DrawHorizontalLine
#R		
		li $a0, 46
		li $a1, 34 
		li $a3, 50 
		jal DrawVerticalLine																																																																																																																																		
		li $a0, 47 
		jal DrawVerticalLine
		li $a0, 48 
		jal DrawVerticalLine
		li $a0, 49 
		li $a1, 34
		li $a3, 57
		jal DrawHorizontalLine	
		li $a0, 49 
		li $a1, 35
		li $a3, 58
		jal DrawHorizontalLine																																																																																																																																																																																																																																																																																																																																																																																																						
		li $a1, 36
		jal DrawHorizontalLine
		li $a0, 59
		li $a1, 35 
		li $a3, 41 
		jal DrawVerticalLine
		li $a0, 49 
		li $a1, 35
		li $a3, 58
		jal DrawHorizontalLine
		li $a0, 49 
		li $a1, 42
		li $a3, 58
		jal DrawHorizontalLine
		li $a1, 43
		jal DrawHorizontalLine
		li $a1, 44
		jal DrawHorizontalLine
		li $a0, 54 
		li $a1, 45
		li $a3, 59
		jal DrawHorizontalLine
		li $a1, 46
		jal DrawHorizontalLine
		li $a0, 57
		li $a1, 35 
		li $a3, 50 
		jal DrawVerticalLine
		li $a0, 58 
		jal DrawVerticalLine
		li $a0, 59
		li $a1, 47 
		li $a3, 50 
		jal DrawVerticalLine																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		
		j WaitForReset
	Win:	lw $a2, verde
		li $a0, 3 #the x coordinate
		li $a1, 27 #the y starting coordinate
		li $a3, 30 #the y ending coordinate
		jal DrawVerticalLine
		li $a0,4 
		jal DrawVerticalLine
		li $a0,8 
		jal DrawVerticalLine
		li $a0,7 
		jal DrawVerticalLine
		li $a0, 5 #the x coordinate
		li $a1, 31 #the y starting coordinate
		li $a3, 34 #the y ending coordinate
		jal DrawVerticalLine
		li $a0,6 
		jal DrawVerticalLine
		li $a0, 4
		li $a1, 31
		jal DrawPoint
		li $a0, 7
		jal DrawPoint
		li $a0, 11 #the x coordinate
		li $a1, 28 #the y starting coordinate
		li $a3, 33 #the y ending coordinate
		jal DrawVerticalLine
		li $a0, 17
		jal DrawVerticalLine
		li $a0, 12 #the x coordinate
		li $a1, 27 #the y starting coordinate
		li $a3, 34 #the y ending coordinate
		jal DrawVerticalLine
		li $a0, 16
		jal DrawVerticalLine
		li $a1, 27
		li $a0, 12
		li $a3, 16
		jal DrawHorizontalLine
		li $a1, 34
		jal DrawHorizontalLine
		li $a0, 21 #the x coordinate
		li $a1, 27 #the y starting coordinate
		li $a3, 33 #the y ending coordinate
		jal DrawVerticalLine
		li $a0, 22
		jal DrawVerticalLine
		li $a0, 27
		jal DrawVerticalLine
		li $a0, 26
		jal DrawVerticalLine
		li $a1, 34
		li $a0, 22
		li $a3, 26
		jal DrawHorizontalLine
		li $a0, 35
		li $a1, 27
		li $a3, 34
		jal DrawVerticalLine
		li $a0, 36
		jal DrawVerticalLine
		li $a0, 41
		jal DrawVerticalLine
		li $a0, 42
		jal DrawVerticalLine
		li $a0, 37
		li $a1, 31
		li $a3, 33
		jal DrawVerticalLine
		li $a0, 40
		jal DrawVerticalLine
		li $a0, 38
		li $a1, 30
		li $a3, 32
		jal DrawVerticalLine
		li $a0, 39
		jal DrawVerticalLine
		li $a1, 34
		li $a0, 45
		li $a3, 50
		jal DrawHorizontalLine
		li $a1, 27
		jal DrawHorizontalLine
		li $a0, 47
		li $a1, 28
		li $a3, 33
		jal DrawVerticalLine
		li $a0, 48
		jal DrawVerticalLine
		li $a0, 53
		li $a1, 27
		li $a3, 34
		jal DrawVerticalLine
		li $a0, 54
		jal DrawVerticalLine
		li $a0, 58
		jal DrawVerticalLine
		li $a0, 59
		jal DrawVerticalLine
		li $a0, 55
		li $a1, 28
		li $a3, 31
		jal DrawVerticalLine
		li $a0, 56
		li $a1, 29
		li $a3, 32
		jal DrawVerticalLine
		li $a0, 57
		li $a1, 30
		li $a3, 33
		jal DrawVerticalLine
		li $a0, 1000	#
		li $v0, 32	# Pause for 1 sec
		syscall		#
		sw $zero, 0xFFFF0000
WaitForReset:		
		li $a0, 10 	#
		li $v0, 32	# pause for 10 milisec
		syscall		#		
		lw $t0, 0xFFFF0000
		beq $t0, $zero, WaitForReset
		j Reset		
Reset:		
		sw $zero, score
		sw $zero, 0xFFFF0000	# Zeros the keypress words in memory
		sw $zero, 0xFFFF0004		
		jal ClearBoard
		j NewGame
