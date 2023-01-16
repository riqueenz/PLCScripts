		#define _CodeBlocks_Version 1304
		#msg ** CodeBlocks of 19/10/2010 09:20 **
		 /*                                                    */
		 /* SML (Solaris MakeUp Language) CodeBlocks TsLadder  */
		 /*													   */
		 /* Copyright (2006-2010) by Solaris Automation ltd.   */
		 /* Author: Mário Inácio Frank						   */
		 /* Revisões: Frank e Renan                  		   */
		 /*                                                    */
		 /*	History:
				09/03/07	_Zero e _One viram #define
							Define Display e Define keyboard
				08/10/07	Defines de declarações usam duas __
				20/05/08	Has_IHM para auto declaração de IHM
				10/06/08	ANAIN de Analogic Input
				XX/10/08	ANAIN e ANAOUT com scale
				XX/11/08	READKEY2, HOLDKEY2 e MODBUS Slave
				31/03/09	Correção em IN_X, F_TRIG, R_TRIG
				07/05/09	Adicionado rotina de RTC para TimerKeeper
				26/05/09	SYSTM_VAR_GET fornece CLK_MACH_SPEED
							Action_Func LED
				01/06/09	SYSTM_VAR_PUT não atribui Timers
				12/11/09	CMP
				17/11/09	MAIN era confundido com a aba em seleção
				18/11/09	Compiler Option -dFAST para acelerar sem codigo debug
				01/12/09	_Active_Screen passa a ser declarado em CodeBlocks
				06/07/10	Variáveis internas são declaradas como globais
		   */
		#ifndef Has_IHM
			#define Has_IHM
DEFINE DISPLAY LCD:					// IHM que engloba qualquer modelo
			3224 model,30 rows,40 cols
DEFINE KEYBOARD:			6 ROWS , 8 COLS	// Teclado completo de 48 teclas: primario+secundario
	DEFINE PRIMARY KEYBOARD:4 ROWS , 8 COLS	// Teclas no teclado primário
		#endif //Has_IHM
		#define _TPJ				// Compilação em projeto Wints2
		#define _ZERO 0
		#define	_ONE  1
Define Constants:					// Default
		16    	_TAB_LEN_DEFAULT	// Matrizes de uso geral
		65535 	_PVMax				// Maior numero de 16 bits sem sinal
		0x0001	_SET_MASK_0			// Mascaras binarias para testar ou ligar bit
		0x0002	_SET_MASK_1
		0x0004	_SET_MASK_2
		0x0008	_SET_MASK_3
		0x0010	_SET_MASK_4
		0x0020	_SET_MASK_5
		0x0040	_SET_MASK_6
		0x0080	_SET_MASK_7
		0x0100	_SET_MASK_8
		0x0200	_SET_MASK_9
		0x0400	_SET_MASK_10
		0x0800	_SET_MASK_11
		0x1000	_SET_MASK_12
		0x2000	_SET_MASK_13
		0x4000	_SET_MASK_14
		0x8000	_SET_MASK_15
//
		0xFFFE	_RESET_MASK_0		// Mascaras binarias para desligar bit
		0xFFFD	_RESET_MASK_1
		0xFFFB	_RESET_MASK_2
		0xFFF7	_RESET_MASK_3
		0xFFEF	_RESET_MASK_4
		0xFFDF	_RESET_MASK_5
		0xFFBF	_RESET_MASK_6
		0xFF7F	_RESET_MASK_7
		0xFEFF	_RESET_MASK_8
		0xFDFF	_RESET_MASK_9
		0xFBFF	_RESET_MASK_10
		0xF7FF	_RESET_MASK_11
		0xEFFF	_RESET_MASK_12
		0xDFFF	_RESET_MASK_13
		0xBFFF	_RESET_MASK_14
		0x7FFF	_RESET_MASK_15
//
		1       _Pot2_0				// Potencias de 2 para deslocamentos por numeros
		2       _Pot2_1
		4       _Pot2_2
		8       _Pot2_3
		16      _Pot2_4
		32      _Pot2_5
		64      _Pot2_6
		128     _Pot2_7
		256     _Pot2_8
		512     _Pot2_9
		1024    _Pot2_10
		2048    _Pot2_11
		4096    _Pot2_12
		8192    _Pot2_13
		16384   _Pot2_14
		32768   _Pot2_15
//
		// Default, Potencias de 2 para deslocamentos variaveis
		Cmatrix _Pot2(_TAB_LEN_DEFAULT)=(1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768)
		word _Active_Screen			// Nº da tela Atual
#include "defines.ts"

#include "Z:\\sistemas\\Hidraumak\\arqs\\Solaris\\MyTSFile.ts"

#include "C:\\Users\\Vbox\\Downloads\\TesteTS.ts"

	#ifdef _Pids_State
		#include "PIDS.TS"
	#endif

	#ifndef _RunError_included
		#include "RunError.ts"
	#endif
