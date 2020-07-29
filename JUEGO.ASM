
.model huge ; directiva de modelo de programación
.stack ; directiva de asignación de segmento de stack
.data ; directiva de asignación de segmento de datos

MARGEN DB "##############################################################################$"
MARGEN3 DB "#$"
TEXTO DB "JUEGO$"
TEXTO0 DB "PROYECTO$"
TEXTO1 DB "PROFESOR: ING.GERARDO NAVA HERNANDEZ.$"
TEXTO2 DB "INTEGRANTES: VARGAS DOMINGUEZ ERIK.$"
TEXTO3 DB "VELASCO MAGALLON CARLOS WBILIO.$"
TEXTO4 DB "GRUPO: 5S11.$"
BANNER1 DB "                /)                   $"
BANNER2 DB "               ((                    $"
BANNER3 DB "    . - .      //    . - .           $"
BANNER4 DB "   /      \ - ((= - /     \          $"
BANNER5 DB "  |            \\          |         $"
BANNER6 DB "   \ _ (  _____ ))__ ) _  /          $"
BANNER7 DB "     .- '      //      '-.           $"
BANNER8 DB "    /         ((          \          $"
BANNER9 DB "   |            *          |         $"
BANNERA DB "   |                       |         $"
BANNERB DB "    \                     /          $"
BANNERC DB "     \     |___w___|     /           $"
BANNERD DB "    _ )   \         /   (_           $"
BANNERE DB "   (((--- '         ` ---)))         $"
BANNER01 DB "  .-.   .-..----..-. .-..-. .-.  $" 
BANNER11 DB "  |  `.'  || {_  |  `| || { } |  $"
BANNER21 DB "  | |\ /| || {__ | |\  || {_} |  $"
BANNER31 DB "  `-' ` `-'`----'`-' `-'`-----'  $"  
BANNER02 DB "          ----          $"
BANNER12 DB "         |    |         $"
BANNER22 DB "         |    |         $"
BANNER32 DB "          ----          $"
BANNER42 DB "         |    |         $"
BANNER52 DB "        - ---- -        $"
BANNER62 DB "         /  ee\_        $"
BANNER72 DB "       .<     __0       $"
BANNER82 DB "      /\ \.-.' \        $"
BANNER92 DB "     J  \.|'\/  \       $"
BANNERA2 DB "     | |_.|. | | |      $"
BANNERB2 DB "      \__.' .|-' /      $"
BANNERC2 DB "      L   /|o'__'\      $"
BANNERD2 DB "      |  /\/\/\   \     $"
BANNERE2 DB "      j /      \.__\    $"
BANNERF2 DB "      |/         /      $"
BANNERG2 DB "        \      .'\.     $"
BANNERH2 DB "     ____)_/\_(___\.    $"
BANNERI2 DB "    (___._/  \_.___)'   $"
MENU1 DB "[1] OBJETIVOS$"
MENU2 DB "[2] MINIJUEGO$"
MENU3 DB "[3] IMAGEN CON PIXELES$"
MENU4 DB "[4] SALIR$"
OBJETIVOS DB "OBJETIVO$"
OBJETIVOS2 DB "SE IMPLEMENTARAN TODOS LOS CONOCIMIENTOS VISTOS DURANTE$"
OBJETIVOS3 DB "EL PRIMER PARCIAL EN LA MATERIA DE GRAFICACION PARA EL $"
OBJETIVOS4 DB "DESARROLLO DE ESTE PROYECTO, CON EL FIN DE LLEVAR A LA$"
OBJETIVOS5 DB "PRACTICA Y REAFIRMAR LO QUE APRENDIMOS.$"
REGRESAR DB  "PRESIONE UNA TECLA PARA VOLVER ...$"
CONTINUAR DB "PRESIONE UNA TECLA PARA CONTINUAR ...$"
.386 
.code ; directiva de asignación de segmento de datos
start:
begin PROC FAR; INICIO DE PROCEDIMIENTO BEGIN
;############### PROYECTO  ###############

	CALL  BARRIDO
        CALL  COLOR
        CALL  MG

;############### BANNER  ###############


        MOV  AH,02H
        MOV  BH,00
        MOV  DH,09
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER1
        MOV  AX, SEG BANNER1
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,10
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER2
        MOV  AX, SEG BANNER2
        CALL  TPART
  
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,11
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER3
        MOV  AX, SEG BANNER3
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,12
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER4
        MOV  AX, SEG BANNER4
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,13
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER5
        MOV  AX, SEG BANNER5
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,14
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER6
        MOV  AX, SEG BANNER6
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,15
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER7
        MOV  AX, SEG BANNER7
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,16
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER8
        MOV  AX, SEG BANNER8
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,17
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER9
        MOV  AX, SEG BANNER9
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,18
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERA
        MOV  AX, SEG BANNERA
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,19
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERB
        MOV  AX, SEG BANNERB
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,20
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERC
        MOV  AX, SEG BANNERC
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,21
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERD
        MOV  AX, SEG BANNERD
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,22
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERE
        MOV  AX, SEG BANNERE
        CALL  TPART

;############### COLOCAR CURSOR Y MOSTAR TEXTO  ###############

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,03
        MOV  DL,35
        INT  10H

        LEA  DX,TEXTO0
        MOV  AX, SEG TEXTO0
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,05
        MOV  DL,21
        INT  10H

        LEA  DX,TEXTO1
        MOV  AX, SEG TEXTO1
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,06
        MOV  DL,22
        INT  10H

        LEA  DX,TEXTO2
        MOV  AX, SEG TEXTO2
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,07
        MOV  DL,24
        INT  10H

        LEA  DX,TEXTO3
        MOV  AX, SEG TEXTO3
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,08
        MOV  DL,34
        INT  10H

        LEA  DX,TEXTO4
        MOV  AX, SEG TEXTO4
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,20
        MOV  DL,35
        INT  10H

	LEA  DX,CONTINUAR
        MOV  AX, SEG CONTINUAR
        CALL  TPART

        CALL  PAUSA
M:	CALL  BARRIDO
        CALL  COLOR
        CALL  MG

;############### BARRIDO BANNER2 Y MENU  ###############

	MOV  AX,0600H
        MOV  BH,07H
        MOV  CX,0911H
        MOV  DX,0914H
        INT  10H

	MOV  AX,0600H
        MOV  BH,07H
        MOV  CX,0C28H
        MOV  DX,0F28H
        INT  10H

	MOV  AX,0600H
        MOV  BH,07H
        MOV  CX,0C2AH
        MOV  DX,0F2AH
        INT  10H

;############### BANNER MENU  ###############

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,06
        MOV  DL,33
        INT  10H

        LEA  DX,BANNER01
        MOV  AX, SEG BANNER01
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,07
        MOV  DL,33
        INT  10H

        LEA  DX,BANNER11
        MOV  AX, SEG BANNER11
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,08
        MOV  DL,33
        INT  10H

        LEA  DX,BANNER21
        MOV  AX, SEG BANNER21
        CALL  TPART
  
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,09
        MOV  DL,33
        INT  10H

        LEA  DX,BANNER31
        MOV  AX, SEG BANNER31
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,12
        MOV  DL,40
        INT  10H

        LEA  DX,MENU1
        MOV  AX, SEG MENU1
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,13
        MOV  DL,40
        INT  10H

        LEA  DX,MENU2
        MOV  AX, SEG MENU2
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,14
        MOV  DL,40
        INT  10H

        LEA  DX,MENU3
        MOV  AX, SEG MENU3
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,15
        MOV  DL,40
        INT  10H

        LEA  DX,MENU4
        MOV  AX, SEG MENU4
        CALL  TPART

;############### BANNER2  ###############

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,03
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER02
        MOV  AX, SEG BANNER02
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,04
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER12
        MOV  AX, SEG BANNER12
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,05
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER22
        MOV  AX, SEG BANNER22
        CALL  TPART
  
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,06
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER32
        MOV  AX, SEG BANNER32
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,07
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER42
        MOV  AX, SEG BANNER42
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,08
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER52
        MOV  AX, SEG BANNER52
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,09
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER62
        MOV  AX, SEG BANNER62
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,10
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER72
        MOV  AX, SEG BANNER72
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,11
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER82
        MOV  AX, SEG BANNER82
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,12
        MOV  DL,05
        INT  10H

        LEA  DX,BANNER92
        MOV  AX, SEG BANNER92
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,13
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERA2
        MOV  AX, SEG BANNERA2
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,14
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERB2
        MOV  AX, SEG BANNERB2
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,15
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERC2
        MOV  AX, SEG BANNERC2
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,16
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERD2
        MOV  AX, SEG BANNERD2
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,17
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERE2
        MOV  AX, SEG BANNERE2
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,18
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERF2
        MOV  AX, SEG BANNERF2
        CALL  TPART     


	MOV  AH,02H
        MOV  BH,00
        MOV  DH,19
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERG2
        MOV  AX, SEG BANNERG2
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,20
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERH2
        MOV  AX, SEG BANNERH2
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,21
        MOV  DL,05
        INT  10H

        LEA  DX,BANNERI2
        MOV  AX, SEG BANNERI2
        CALL  TPART

	MOV AH,07H      ; ALMACENA DATO SIN ECO Y MANDA DATO A AL
        INT 21H

        CMP AL,31H
        JE   OBJ
	CMP AL,32H
        JE   MJ
	CMP AL,33H
        JE   IMG
	CMP AL,34H
        JE   S
	JMP  M

;############### MINI JUEGO  ###############

MJ:	CALL  SONIDO
	CALL  LIMPIA

	MOV  CX,60
	MOV  DX,100
	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H
	
RE:

	MOV AH,07H      ; ALMACENA DATO SIN ECO Y MANDA DATO A AL
        INT 21H

        CMP AL,35H
        JE   A
	CMP AL,36H
        JE   A2
	CMP AL,37H
        JE   I
	CMP AL,38H
        JE   D
	JMP  MJ

A:	CMP  DX,10
	JE   NM
	CALL LIMPIA
	DEC  DX
	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H
	
	MOV AH,07H      ; ALMACENA DATO SIN ECO Y MANDA DATO A AL
        INT 21H

        CMP AL,35H
        JE   A
	CMP AL,36H
        JE   A2
	CMP AL,37H
        JE   I
	CMP AL,38H
        JE   D
	JMP  MJ

A2:	CMP  DX,190
	JE   NM
	CALL LIMPIA

	INC  DX
	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H
	
	MOV AH,07H      ; ALMACENA DATO SIN ECO Y MANDA DATO A AL
        INT 21H

        CMP AL,35H
        JE   A
	CMP AL,36H
        JE   A2
	CMP AL,37H
        JE   I
	CMP AL,38H
        JE   D
	JMP  MJ

I:	CMP  CX,15
	JE   NM
	
	CALL LIMPIA
	DEC  CX
	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H
	
	
	MOV AH,07H      ; ALMACENA DATO SIN ECO Y MANDA DATO A AL
        INT 21H

        CMP AL,35H
        JE   A
	CMP AL,36H
        JE   A2
	CMP AL,37H
        JE   I
	CMP AL,38H
        JE   D
	JMP  MJ

D:	CALL LIMPIA
	CMP  CX,625
	JE   S1
	INC  CX
	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H


	MOV AH,07H      ; ALMACENA DATO SIN ECO Y MANDA DATO A AL
        INT 21H

        CMP AL,35H
        JE   A
	CMP AL,36H
        JE   A2
	CMP AL,37H
        JE   I
	CMP AL,38H
        JE   D
	JMP  MJ

NM:
	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H
	
	CALL PAUSA
	
	
	JMP  RE

;############### GAME OVER  ###############
S1:	CALL SONIDOP
	MOV AH,00H; REGRESAMOS AL MODO TEXTO
        MOV AL,03H
        INT 10H	 

	JMP  M

;############### SALIR  ###############

S:     	MOV AH,00H; REGRESAMOS AL MODO TEXTO
        MOV AL,03H
        INT 10H

        MOV AX,4C00H ; vuelta al DOS
        INT 21H	
      
;############### OBJETIVOS ###############

OBJ:    CALL  SONIDO
	CALL  BARRIDO
        CALL  COLOR
        CALL  MG
	
	MOV  AH,02H
        MOV  BH,00
        MOV  DH,06
        MOV  DL,35
        INT  10H

        LEA  DX,OBJETIVOS
        MOV  AX, SEG OBJETIVOS
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,08
        MOV  DL,14
        INT  10H


        LEA  DX,OBJETIVOS2
        MOV  AX, SEG OBJETIVOS2
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,09
        MOV  DL,14
        INT  10H


        LEA  DX,OBJETIVOS3
        MOV  AX, SEG OBJETIVOS3
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,10
        MOV  DL,14
        INT  10H

        LEA  DX,OBJETIVOS4
        MOV  AX, SEG OBJETIVOS4
        CALL  TPART

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,11
        MOV  DL,14
        INT  10H

        LEA  DX,OBJETIVOS5
        MOV  AX, SEG OBJETIVOS5
        CALL  TPART

	MOV  AH,02H
        MOV  BH,00
        MOV  DH,20
        MOV  DL,38
        INT  10H

	LEA  DX,REGRESAR
        MOV  AX, SEG REGRESAR
        CALL  TPART

        CALL  PAUSA

	JMP   M
;############### IMAGEN ###############

IMG:	CALL SONIDO
	CALL LIMPIA

	MOV  CX,265
	MOV  DX,60

P5:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P5
	
	MOV  CX,265
	MOV  DX,61

P51:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P51


	MOV  CX,273
	MOV  DX,58

P6:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P6
	
	MOV  CX,273
	MOV  DX,59

P61:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P61

	MOV  CX,273
	MOV  DX,56

P7:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P7
	
	MOV  CX,273
	MOV  DX,57

P71:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P71


	MOV  CX,273
	MOV  DX,54

P9:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,305
	JNE  P9
	
	MOV  CX,273
	MOV  DX,55

P91:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,305
	JNE  P91


	MOV  CX,340
	MOV  DX,54

P10:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P10
	
	MOV  CX,340
	MOV  DX,55

P101:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P101

	MOV  CX,356
	MOV  DX,52

P12:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P12
	
	MOV  CX,356
	MOV  DX,53

P121:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P121


	MOV  CX,273
	MOV  DX,52

P13:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,289
	JNE  P13
	
	MOV  CX,273
	MOV  DX,53

P131:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,289
	JNE  P131

	MOV  CX,273
	MOV  DX,50

P14:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P14
	
	MOV  CX,273
	MOV  DX,51

P141:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P141

	MOV  CX,273
	MOV  DX,48

P15:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P15
	
	MOV  CX,273
	MOV  DX,49

P151:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P151

	MOV  CX,364
	MOV  DX,50

P16:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P16
	
	MOV  CX,364
	MOV  DX,51

P161:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P161

	MOV  CX,364
	MOV  DX,48

P17:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P17
	
	MOV  CX,364
	MOV  DX,49

P171:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P171


	MOV  CX,265
	MOV  DX,62

P18:	MOV  AH,0CH	;OJOS
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P18
	
	MOV  CX,265
	MOV  DX,63

P181:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P181

	MOV  CX,265
	MOV  DX,64

P19:	MOV  AH,0CH	;OJOS
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P19
	
	MOV  CX,265
	MOV  DX,65

P191:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P191


	MOV  CX,265
	MOV  DX,66

P20:	MOV  AH,0CH	;SOMBRA OJOS
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P20
	
	MOV  CX,265
	MOV  DX,67

P201:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  P201

	MOV  CX,273
	MOV  DX,64

P22:	MOV  AH,0CH	;COLOR OJOS
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P22
	
	MOV  CX,273
	MOV  DX,65

P221:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P221

	MOV  CX,273
	MOV  DX,62

P23:	MOV  AH,0CH	;COLOR OJOS
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P23
	
	MOV  CX,273
	MOV  DX,63

P231:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,281
	JNE  P231

	MOV  CX,281
	MOV  DX,64

P24:	MOV  AH,0CH	;COLOR OJOS
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,289
	JNE  P24
	
	MOV  CX,281
	MOV  DX,65

P241:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,289
	JNE  P241


	MOV  CX,364
	MOV  DX,62

P25:	MOV  AH,0CH	;COLOR OJOS
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P25
	
	MOV  CX,364
	MOV  DX,63

P251:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P251

	MOV  CX,364
	MOV  DX,64

P26:	MOV  AH,0CH	;COLOR OJOS
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P26
	
	MOV  CX,364
	MOV  DX,65

P261:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P261

	MOV  CX,356
	MOV  DX,64

P27:	MOV  AH,0CH	;COLOR OJOS
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P27
	
	MOV  CX,356
	MOV  DX,65

P271:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P271

	MOV  CX,273
	MOV  DX,68

P28:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P28
	
	MOV  CX,273
	MOV  DX,69

P281:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P281

	MOV  CX,273
	MOV  DX,70

P29:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P29
	
	MOV  CX,273
	MOV  DX,71

P291:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P291

	MOV  CX,273
	MOV  DX,72

P30:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P30
	
	MOV  CX,273
	MOV  DX,73

P301:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,372
	JNE  P301

	MOV  CX,281
	MOV  DX,74

P32:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P32
	
	MOV  CX,281
	MOV  DX,75

P321:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P321

	MOV  CX,289
	MOV  DX,76

P33:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P33
	
	MOV  CX,289
	MOV  DX,77

P331:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P331

	MOV  CX,289
	MOV  DX,76

P34:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,297
	JNE  P34
	
	MOV  CX,289
	MOV  DX,77

P341:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,297
	JNE  P341

	MOV  CX,348
	MOV  DX,76

P35:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P35
	
	MOV  CX,348
	MOV  DX,77

P351:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P351


	MOV  CX,281
	MOV  DX,81

P36:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,289
	JNE  P36
	
	MOV  CX,281
	MOV  DX,80

P361:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,289
	JNE  P361

	MOV  CX,356
	MOV  DX,80

P37:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P37
	
	MOV  CX,356
	MOV  DX,81

P371:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P371

	MOV  CX,281
	MOV  DX,82

P38:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P38
	
	MOV  CX,281
	MOV  DX,83

P381:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P381

	MOV  CX,281
	MOV  DX,84

P39:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P39
	
	MOV  CX,281
	MOV  DX,85

P391:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P391

	MOV  CX,281
	MOV  DX,86

P40:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P40
	
	MOV  CX,281
	MOV  DX,87

P401:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P401

	MOV  CX,281
	MOV  DX,88

P42:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P42
	
	MOV  CX,281
	MOV  DX,89

P421:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,364
	JNE  P421

	MOV  CX,289
	MOV  DX,88

P43:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P43
	
	MOV  CX,289
	MOV  DX,89

P431:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P431

	MOV  CX,289
	MOV  DX,90

P44:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P44
	
	MOV  CX,289
	MOV  DX,91

P441:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,356
	JNE  P441


	MOV  CX,297
	MOV  DX,86

P45:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,348
	JNE  P45
	
	MOV  CX,297
	MOV  DX,87

P451:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,348
	JNE  P451

;############### ALA 1 ##############

	MOV  CX,250
	MOV  DX,58

P46:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,242
	JNE  P46
	
	MOV  CX,250
	MOV  DX,59

P461:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,242
	JNE  P461

	MOV  CX,250
	MOV  DX,60

P47:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,226
	JNE  P47
	
	MOV  CX,250
	MOV  DX,61

P471:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,226
	JNE  P471

	MOV  CX,250
	MOV  DX,62

P48:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P48
	
	MOV  CX,250
	MOV  DX,63

P481:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P481

	MOV  CX,242
	MOV  DX,62

P49:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,226
	JNE  P49
	
	MOV  CX,242
	MOV  DX,63

P491:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,226
	JNE  P491

	MOV  CX,258
	MOV  DX,64

P50:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,210
	JNE  P50
	
	MOV  CX,258
	MOV  DX,65

P501:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,210
	JNE  P501

	MOV  CX,250
	MOV  DX,64

P52:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P52
	
	MOV  CX,250
	MOV  DX,65

P521:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P521


	MOV  CX,258
	MOV  DX,65

P53:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,210
	JNE  P53
	
	MOV  CX,258
	MOV  DX,66

P531:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,210
	JNE  P531


	MOV  CX,250
	MOV  DX,65

P54:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P54
	
	MOV  CX,250
	MOV  DX,66

P541:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P541

	MOV  CX,266
	MOV  DX,67

P55:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,202
	JNE  P55
	
	MOV  CX,266
	MOV  DX,68

P551:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,202
	JNE  P551


	MOV  CX,258
	MOV  DX,67

P56:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P56
	
	MOV  CX,258
	MOV  DX,68

P561:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,218
	JNE  P561

	MOV  CX,266
	MOV  DX,69

P57:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,202
	JNE  P57
	
	MOV  CX,266
	MOV  DX,70

P571:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,202
	JNE  P571


	MOV  CX,266
	MOV  DX,69

P58:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,210
	JNE  P58
	
	MOV  CX,266
	MOV  DX,70

P581:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,210
	JNE  P581

	MOV  CX,258
	MOV  DX,70

P59:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,234
	JNE  P59
	
	MOV  CX,258
	MOV  DX,71

P601:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	DEC  cX
	CMP  cX,234
	JNE  P601

;############### ALA 2 ##############

	MOV  CX,396
	MOV  DX,58

P462:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,404
	JNE  P462
	
	MOV  CX,396
	MOV  DX,59

P4612:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,404
	JNE  P4612

	MOV  CX,396
	MOV  DX,60

P472:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,420
	JNE  P472
	
	MOV  CX,396
	MOV  DX,61

P4712:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,420
	JNE  P4712

	MOV  CX,396
	MOV  DX,62

P482:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P482
	
	MOV  CX,396
	MOV  DX,63

P4812:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P4812

	MOV  CX,404
	MOV  DX,62

P492:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,420
	JNE  P492
	
	MOV  CX,404
	MOV  DX,63

P4912:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,420
	JNE  P4912

	MOV  CX,388
	MOV  DX,64

P502:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,436
	JNE  P502
	
	MOV  CX,388
	MOV  DX,65

P5012:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,436
	JNE  P5012

	MOV  CX,396
	MOV  DX,64

P522:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P522
	
	MOV  CX,396
	MOV  DX,65

P5212:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P5212


	MOV  CX,388
	MOV  DX,65

P532:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,436
	JNE  P532
	
	MOV  CX,388
	MOV  DX,66

P5312:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,436
	JNE  P5312


	MOV  CX,396
	MOV  DX,65

P542:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P542
	
	MOV  CX,396
	MOV  DX,66

P5412:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P5412

	MOV  CX,380
	MOV  DX,67

P552:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,444
	JNE  P552
	
	MOV  CX,380
	MOV  DX,68

P5512:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,444
	JNE  P5512


	MOV  CX,388
	MOV  DX,67

P562:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P562
	
	MOV  CX,388
	MOV  DX,68

P5612:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,428
	JNE  P5612

	MOV  CX,380
	MOV  DX,69

P572:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,444
	JNE  P572
	
	MOV  CX,380
	MOV  DX,70

P5712:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,444
	JNE  P5712

	MOV  CX,380
	MOV  DX,69

P582:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,436
	JNE  P582
	
	MOV  CX,380
	MOV  DX,70

P5812:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,436
	JNE  P5812

	MOV  CX,388
	MOV  DX,70

P592:	MOV  AH,0CH	;ALA AZUL
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,412
	JNE  P592
	
	MOV  CX,388
	MOV  DX,71

P6012:	MOV  AH,0CH
	MOV  AL,0009H
	INT  10H

	INC  cX
	CMP  cX,412
	JNE  P6012

;############### PIERNAS ###############

	MOV  CX,364
	MOV  DX,90

PD1:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  PD1
	
	MOV  CX,364
	MOV  DX,91

PD11:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  PD11

	MOV  CX,364
	MOV  DX,91

PDA1:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  PDA1
	
	MOV  CX,364
	MOV  DX,92

PDA11:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  PDA11

	MOV  CX,364
	MOV  DX,93

PD2:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  PD2
	
	MOV  CX,364
	MOV  DX,94

PD21:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  PD21

	MOV  CX,372
	MOV  DX,93

PD3:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  PD3
	
	MOV  CX,372
	MOV  DX,94

PD31:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	INC  cX
	CMP  cX,380
	JNE  PD31


	MOV  CX,280
	MOV  DX,90

PI1:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,257
	JNE  PI1
	
	MOV  CX,280
	MOV  DX,91

PI11:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,257
	JNE  PI11

	MOV  CX,280
	MOV  DX,91

PIA1:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,257
	JNE  PIA1
	
	MOV  CX,280
	MOV  DX,92

PIA11:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,257
	JNE  PIA11

	MOV  CX,280
	MOV  DX,93

PI2:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	DEC  cX
	CMP  cX,257
	JNE  PI2
	
	MOV  CX,280
	MOV  DX,94

PI21:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	DEC  cX
	CMP  cX,257
	JNE  PI21

	MOV  CX,272
	MOV  DX,93

PI3:	MOV  AH,0CH	
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,264
	JNE  PI3
	
	MOV  CX,272
	MOV  DX,94

PI31:	MOV  AH,0CH
	MOV  AL,0006H
	INT  10H

	DEC  cX
	CMP  cX,264
	JNE  PI31

;############### MARGEN DE IMAGEN ###############

	MOV  CX,15
	MOV  DX,10

PM1:	MOV  AH,0CH
	MOV  AL,0004H
	INT  10H

	INC  cX
	CMP  cX,625
	JNE  PM1

	MOV  CX,15
	MOV  DX,10

PM2:	MOV  AH,0CH
	MOV  AL,0002H
	INT  10H

	INC  DX
	CMP  DX,190
	JNE  PM2

	MOV  CX,625
	MOV  DX,10

PM3:	MOV  AH,0CH
	MOV  AL,000EH
	INT  10H

	INC  DX
	CMP  DX,190
	JNE  PM3

	MOV  CX,15
	MOV  DX,190

PM4:	MOV  AH,0CH
	MOV  AL,0001H
	INT  10H

	INC  cX
	CMP  cX,625
	JNE  PM4
	
;############### TESOEM ###############

	MOV  CX,80
	MOV  DX,120

T1:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,146
	JNE  T1
	
	MOV  CX,80
	MOV  DX,121

T2:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,146
	JNE  T2

	MOV  CX,80
	MOV  DX,122

T3:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,146
	JNE  T3

	MOV  CX,80
	MOV  DX,123

T4:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,146
	JNE  T4

	MOV  CX,102
	MOV  DX,124

T5:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T5
	
	MOV  CX,102
	MOV  DX,125

T6:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T6

	MOV  CX,102
	MOV  DX,126

T7:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T7

	MOV  CX,102
	MOV  DX,127

T8:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T8

	MOV  CX,102
	MOV  DX,128

T9:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T9
	
	MOV  CX,102
	MOV  DX,129

T10:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T10

	MOV  CX,102
	MOV  DX,130

T11:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T11

	MOV  CX,102
	MOV  DX,131

T12:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T12

	MOV  CX,102
	MOV  DX,132

T13:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T13
	
	MOV  CX,102
	MOV  DX,133

T14:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T14

	MOV  CX,102
	MOV  DX,134

T15:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T15

	MOV  CX,102
	MOV  DX,135

T16:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,124
	JNE  T16


	MOV  CX,160
	MOV  DX,120

E1:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E1
	
	MOV  CX,160
	MOV  DX,121

E2:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E2

	MOV  CX,160
	MOV  DX,122

E3:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E3

	MOV  CX,160
	MOV  DX,123

E4:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E4

	MOV  CX,160
	MOV  DX,124

E5:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E5
	
	MOV  CX,160
	MOV  DX,125

E6:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E6

	MOV  CX,160
	MOV  DX,126

E7:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E7

	MOV  CX,160
	MOV  DX,127

E8:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E8

	MOV  CX,160
	MOV  DX,128

E9:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E9
	
	MOV  CX,160
	MOV  DX,129

E10:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E10

	MOV  CX,160
	MOV  DX,130

E11:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E11

	MOV  CX,160
	MOV  DX,131

E12:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E12

	MOV  CX,160
	MOV  DX,132

E13:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E13
	
	MOV  CX,160
	MOV  DX,133

E14:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E14

	MOV  CX,160
	MOV  DX,134

E15:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E15

	MOV  CX,160
	MOV  DX,135

E16:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  E16

	MOV  CX,160
	MOV  DX,132

E17:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E17
	
	MOV  CX,160
	MOV  DX,133

E18:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E18

	MOV  CX,160
	MOV  DX,134

E19:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E19

	MOV  CX,160
	MOV  DX,135

E20:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,226
	JNE  E20


	MOV  CX,160
	MOV  DX,126

E21:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,204
	JNE  E21

	MOV  CX,160
	MOV  DX,127

E22:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,204
	JNE  E22

	MOV  CX,160
	MOV  DX,128

E23:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,204
	JNE  E23

	MOV  CX,160
	MOV  DX,129

E24:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,204
	JNE  E24


	MOV  CX,241
	MOV  DX,120

S01:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S01
	
	MOV  CX,241
	MOV  DX,121

S2:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S2

	MOV  CX,241
	MOV  DX,122

S3:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S3

	MOV  CX,241
	MOV  DX,123

S4:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
JNE  S4

        MOV  CX,241
	MOV  DX,126

S5:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,274
	JNE  S5

	MOV  CX,241
	MOV  DX,127

S6:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,274
	JNE  S6

	MOV  CX,241
	MOV  DX,128

S7:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,274
	JNE  S7

	MOV  CX,241
	MOV  DX,129

S8:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,274
	JNE  S8


        MOV  CX,160
	MOV  DX,124

S9:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S9
	
	MOV  CX,160
	MOV  DX,125

S10:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S10

	MOV  CX,160
	MOV  DX,126

S11:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S11

	MOV  CX,160
	MOV  DX,127

S12:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S12

	MOV  CX,160
	MOV  DX,128

S13:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S13
	
	MOV  CX,160
	MOV  DX,129

S14:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S14

	MOV  CX,160
	MOV  DX,130

S15:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S15

	MOV  CX,160
	MOV  DX,131

S16:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S16

	MOV  CX,160
	MOV  DX,132

S17:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S17
	
	MOV  CX,160
	MOV  DX,133

S18:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S18

	MOV  CX,160
	MOV  DX,134

S19:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,182
	JNE  S19


	MOV  CX,241
	MOV  DX,124

S20:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,263
	JNE  S20
	
	MOV  CX,241
	MOV  DX,125

S21:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,263
	JNE  S21

	MOV  CX,241
	MOV  DX,126

S22:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,263
	JNE  S22

	MOV  CX,241
	MOV  DX,127

S23:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,263
	JNE  S23

	MOV  CX,274
	MOV  DX,126

S24:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S24
	
	MOV  CX,274
	MOV  DX,127

S25:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S25

	MOV  CX,274
	MOV  DX,128

S26:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S26

	MOV  CX,274
	MOV  DX,129

S27:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S27

	MOV  CX,274
	MOV  DX,130

S28:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S28
	
	MOV  CX,274
	MOV  DX,131

S29:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S29

	MOV  CX,274
	MOV  DX,132

S30:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S30

	MOV  CX,274
	MOV  DX,133

S31:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S31


	MOV  CX,241
	MOV  DX,132

S32:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S32
	
	MOV  CX,241
	MOV  DX,133

S33:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S33

	MOV  CX,241
	MOV  DX,134

S34:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S34

	MOV  CX,241
	MOV  DX,135

S35:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,307
	JNE  S35

	MOV  CX,322
	MOV  DX,120

O0:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O0
	
	MOV  CX,322
	MOV  DX,121

O1:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O1

	MOV  CX,322
	MOV  DX,122

O2:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O2

	MOV  CX,322
	MOV  DX,123

O3:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O3


	MOV  CX,322
	MOV  DX,132

O4:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O4
	
	MOV  CX,322
	MOV  DX,133

O5:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O5

	MOV  CX,322
	MOV  DX,134

O6:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O6

	MOV  CX,322
	MOV  DX,135

O7:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O7

	MOV  CX,322
	MOV  DX,124

O8:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O8
	
	MOV  CX,322
	MOV  DX,125

O9:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O9

	MOV  CX,322
	MOV  DX,126

O10:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O10

	MOV  CX,322
	MOV  DX,127

O11:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O11

	MOV  CX,322
	MOV  DX,128

O12:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O12
	
	MOV  CX,322
	MOV  DX,129

O13:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O13

	MOV  CX,322
	MOV  DX,130

O14:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O14

	MOV  CX,322
	MOV  DX,131

O15:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,344
	JNE  O15

	MOV  CX,366
	MOV  DX,124

O16:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O16
	
	MOV  CX,366
	MOV  DX,125

O17:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O17

	MOV  CX,366
	MOV  DX,126

O18:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O18

	MOV  CX,366
	MOV  DX,127

O19:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O19

	MOV  CX,366
	MOV  DX,128

O20:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O20
	
	MOV  CX,366
	MOV  DX,129

O21:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O21

	MOV  CX,366
	MOV  DX,130

O22:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O22

	MOV  CX,366
	MOV  DX,131

O23:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,388
	JNE  O23

	MOV  CX,403
	MOV  DX,120

E0122:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E0122
	
	MOV  CX,403
	MOV  DX,121

E0222:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E0222

	MOV  CX,403
	MOV  DX,122

E32:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E32

	MOV  CX,403
	MOV  DX,123

E42:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E42

	MOV  CX,403
	MOV  DX,124

E52:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E52
	
	MOV  CX,403
	MOV  DX,125

E62:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E62

	MOV  CX,403
	MOV  DX,126

E72:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E72

	MOV  CX,403
	MOV  DX,127

E82:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E82

	MOV  CX,403
	MOV  DX,128

E92:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E92
	
	MOV  CX,403
	MOV  DX,129

E102:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E102

	MOV  CX,403
	MOV  DX,130

E112:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E112

	MOV  CX,403
	MOV  DX,131

E122:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E122

	MOV  CX,403
	MOV  DX,132

E132:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E132
	
	MOV  CX,403
	MOV  DX,133

E142:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E142

	MOV  CX,403
	MOV  DX,134

E152:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E152

	MOV  CX,403
	MOV  DX,135

E162:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,425
	JNE  E162

	MOV  CX,403
	MOV  DX,132

E172:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E172
	
	MOV  CX,403
	MOV  DX,133

E182:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E182

	MOV  CX,403
	MOV  DX,134

E192:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E192

	MOV  CX,403
	MOV  DX,135

E202:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,469
	JNE  E202


        MOV  CX,403
	MOV  DX,126

E212:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,447
	JNE  E212

	MOV  CX,403
	MOV  DX,127

E222:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,447
	JNE  E222

	MOV  CX,403
	MOV  DX,128

E232:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,447
	JNE  E232

	MOV  CX,403
	MOV  DX,129

E242:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,447
	JNE  E242

MOV  CX,484
	MOV  DX,120

M0:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M0
	
	MOV  CX,484
	MOV  DX,121

M1:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M1

	MOV  CX,484
	MOV  DX,122

M2:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M2

	MOV  CX,484
	MOV  DX,123

M3:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M3

	MOV  CX,484
	MOV  DX,124

M4:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M4
	
	MOV  CX,484
	MOV  DX,125

M5:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M5

	MOV  CX,484
	MOV  DX,126

M6:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M6

	MOV  CX,484
	MOV  DX,127

M7:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M7

	MOV  CX,484
	MOV  DX,128

M8:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M8
	
	MOV  CX,484
	MOV  DX,129

M9:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M9

	MOV  CX,484
	MOV  DX,130

M10:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M10

	MOV  CX,484
	MOV  DX,131

M11:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M11

	MOV  CX,484
	MOV  DX,132

M12:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M12

	MOV  CX,484
	MOV  DX,133

M13:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M13

	MOV  CX,484
	MOV  DX,134

M14:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M14

	MOV  CX,484
	MOV  DX,135

M15:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,506
	JNE  M15

	MOV  CX,506
	MOV  DX,123

M16:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,513
	JNE  M16

	MOV  CX,506
	MOV  DX,124

M17:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,513
	JNE  M17

	MOV  CX,513
	MOV  DX,125

M18:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,520
	JNE  M18

	MOV  CX,513
	MOV  DX,126

M19:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,520
	JNE  M19

	MOV  CX,520
	MOV  DX,123

M20:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,527
	JNE  M20

	MOV  CX,520
	MOV  DX,124

M21:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,527
	JNE  M21

MOV  CX,527
	MOV  DX,120

M22:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M22
	
	MOV  CX,527
	MOV  DX,121

M23:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M23

	MOV  CX,527
	MOV  DX,122

M24:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M24

	MOV  CX,527
	MOV  DX,123

M25:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M25

	MOV  CX,527
	MOV  DX,124

M26:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M26
	
	MOV  CX,527
	MOV  DX,125

M27:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M27

	MOV  CX,527
	MOV  DX,126

M28:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M28

	MOV  CX,527
	MOV  DX,127

M29:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M29

	MOV  CX,527
	MOV  DX,128

M30:	MOV  AH,0CH	
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M30
	
	MOV  CX,527
	MOV  DX,129

M31:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M31

	MOV  CX,527
	MOV  DX,130

M32:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M32

	MOV  CX,527
	MOV  DX,131

M33:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M33

	MOV  CX,527
	MOV  DX,132

M34:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M34

	MOV  CX,527
	MOV  DX,133

M35:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M35

	MOV  CX,527
	MOV  DX,134

M36:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M36

	MOV  CX,527
	MOV  DX,135

M37:	MOV  AH,0CH
	MOV  AL,000FH
	INT  10H

	INC  cX
	CMP  cX,549
	JNE  M37



 	CALL  PAUSA

	MOV AH,00H; REGRESAMOS AL MODO TEXTO
        MOV AL,03H
        INT 10H
	JMP M

;############### FIN DEL PROYECTO  ###############

;############### FUNCIONES ###############

;############### BARRIDO  ###############
	
BARRIDO  PROC  NEAR
        MOV  AX,0600H
        MOV  BH,02H
        MOV  CX,0000H
        MOV  DX,184FH
        INT  10H
	RET
BARRIDO ENDP

COLOR  PROC  NEAR

;############### COLORES DEL MARCO  ###############
;############### BARRIDO ALTO  ###############

        MOV  AX,0600H
        MOV  BH,01H
        MOV  CX,0000H
        MOV  DX,014FH
        INT  10H

;############### BARRIDO ABAJO  ###############

        MOV  AX,0600H
        MOV  BH,04H
        MOV  CX,1700H
        MOV  DX,174FH
        INT  10H

;############### BARRIDO IZQUIERDA  ###############

        MOV  AX,0600H
        MOV  BH,05H
        MOV  CX,0200H
        MOV  DX,1601H
        INT  10H
        
;############### BARRIDO DERECHA  ###############

        MOV  AX,0600H
        MOV  BH,06H
        MOV  CX,0249H
        MOV  DX,164FH
        INT  10H
        RET
COLOR   ENDP


TPART  PROC  NEAR

        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        RET
TPART  ENDP

LIMPIA PROC NEAR

        MOV AH,00H; PETICIÓN PARA HABILITAR MODO VIDEO
        MOV AL,0EH; 
        INT 10H

        MOV AH, 0BH ;ESTABLECE LA PALETA DE 16 COLORES
        MOV BX, 0000H ;BH=PAGE=0, BL=COLOR AZUL
        INT 10H ;PARA EL FONDO DE PANTALLA

        RET
LIMPIA ENDP


SONIDO PROC NEAR
        MOV AL, 182 ; Prepara la bocina
        OUT 43H, AL
        MOV AX, 4560 ; Frecuencia MIDDLE C.
        OUT 42H, AL ; Salida parte baja acumulador.
        MOV AL, AH ; Salida parte alta acumulador.
        OUT 42H, AL
        IN AL, 61H ; Obtención de la configuración
        OR AL, 00000011B
        OUT 61H, AL ; Nueva configuración
        MOV BX, 25 ; Pausa
        .PAUSE1:
        MOV CX, 65535
        .PAUSE2:
        DEC CX
        JNE .PAUSE2
        DEC BX
        JNE .PAUSE1
        IN AL, 61H ; Apagado
        AND AL, 11111100B
        OUT 61H, AL ; Nueva configuración
        RET
SONIDO ENDP

SONIDOP PROC NEAR
        MOV AL, 182 ; Prepara la bocina
        OUT 43H, AL
        MOV AX, 9121 ; Frecuencia MIDDLE C.
        OUT 42H, AL ; Salida parte baja acumulador.
        MOV AL, AH ; Salida parte alta acumulador.
        OUT 42H, AL
        IN AL, 61H ; Obtención de la configuración
        OR AL, 00000011B
        OUT 61H, AL ; Nueva configuración
        MOV BX, 25 ; Pausa
        .PAUSE12:
        MOV CX, 65535
        .PAUSE22:
        DEC CX
        JNE .PAUSE22
        DEC BX
        JNE .PAUSE12
        IN AL, 61H ; Apagado
        AND AL, 11111100B
        OUT 61H, AL ; Nueva configuración
        RET
SONIDOP ENDP



PAUSA PROC NEAR
MOV AH, 10h ; PAUSA
INT 16h
RET
PAUSA ENDP

MG  PROC  NEAR

;############### MARGEN  ###############

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,01
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN
        MOV  AX, SEG MARGEN
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,23
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN
        MOV  AX, SEG MARGEN
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        


        MOV  AH,02H
        MOV  BH,00
        MOV  DH,02
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,03
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,04
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,05
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,06
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,07
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        
        
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,08
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,09
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,10
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        


        MOV  AH,02H
        MOV  BH,00
        MOV  DH,11
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
       

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,12
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,13
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,14
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,15
        MOV  DL,01
        INT  10H
        

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,16
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,17
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,18
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
       
        
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,19
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,20
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,21
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        


        MOV  AH,02H
        MOV  BH,00
        MOV  DH,22
        MOV  DL,01
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

;################################################################

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,02
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,03
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,04
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,05
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,06
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,07
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        
        
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,08
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,09
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,10
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        


        MOV  AH,02H
        MOV  BH,00
        MOV  DH,11
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
       

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,12
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,13
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
       

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,14
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,15
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,16
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,17
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,18
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        
        
        MOV  AH,02H
        MOV  BH,00
        MOV  DH,19
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,20
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        

        MOV  AH,02H
        MOV  BH,00
        MOV  DH,21
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        


        MOV  AH,02H
        MOV  BH,00
        MOV  DH,22
        MOV  DL,78
        INT  10H

        LEA  DX,MARGEN3
        MOV  AX, SEG MARGEN3
        MOV  DS,AX
        MOV  AH,09H
        INT  21H
        
        RET
MG  ENDP



BEGIN ENDP ;FIN DE PROCEDIMIENTO
END start ;FIN DE PROGRAMA
