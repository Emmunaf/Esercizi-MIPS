# Esercizio 1, somma di tre valori
	.data 			# Declare variables (label) with their type stored in RAM
data1:	.word 	10
data2:	.word 	6
data3:	.word 	4

	.text 			# Istructions follow this line
main:	lw 	$t1, data1	
	lw 	$t2, data2
	lw 	$t3, data3
	add 	$t0, $t1, $t2
	add	$t0, $t0, $t3 
	li 	$v0, 1 		# Load systemcall 1 => print integer
	move 	$a0, $t0 	# Copy the value of $t0 in $a0 (argument of syscall)
	syscall 		# Call system call
	li 	$v0, 10 	# Exit()
	syscall

