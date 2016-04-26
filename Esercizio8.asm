# Esercizio8, Implementa l'algoritmo di euclide per trovare il MCD tra due numeri (a e b)
	.data
x:	.word	15
y:	.word	27

	.text
main:	lw	$a0, y		# Store the parameter for eucl function
	lw	$a1, x
	jal	eucl		# Call eucl with $ra set ($ra= PC+4)
	move	$a0, $v0
	li	$v0, 1
	syscall
	li	$v0, 10
	syscall

# Pseudocode:
# MCD(x,y)
# Argument: 
# a0: y, a1: x
# Return value:
# v0: MCD
# Register Mapping:
# y: t0, x: t1
eucl:	move	$t0, $a0	# Take args
	move	$t1, $a1
ciclo:	div	$t0, $t1	# Do division
	mfhi	$t2		# Store the remainder t2 = y%x
	move	$t0, $t1	
	move	$t1, $t2
	beq	$t1, $zero, fine# If remainder == 0
	j	ciclo

fine:	move	$v0, $t0	# Return value in $v0
	jr	$ra		# Return to the next line of calling line
