define display lcd:
//    2160 model, 10 rows, 20 cols

define keyboard: 4 rows, 4 cols

define version: "1.0"

define analogic input:
	1   ai1
	2   ai2

define analogic output:
	1   ao1
	2   ao2

define digital input:
	1   di1
	2   di2
	3   di3

define digital output:
	1   do1
	2   do2

define protocol registers:
	1   ao1
	2   ao2

word s

/* ---------------------------------------------------------------------------- */
MACHINE (main)

STATE 0:
	$wclra()
	s = 1
	goto 1

STATE 1:
	$wstr("Teste2")
	s = 2
	goto 2

STATE 2:
	$rkey(0)
	s = 0
	goto 0

ENDMACHINE



