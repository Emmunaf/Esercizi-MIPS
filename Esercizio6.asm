# Esercizio6, take value by console and compare to a default value. Print 1 if equal, 0 otherwise
	.data
x:	.word	12 		# Value to compare with

	.text
main:	lw 	$t0, x
	li	$v0, 5 		# System call for reading int
	syscall
	move 	$t1, $v0 	# Save user value 
	bne	$t0, $t1, Else	# uservalue != x goto else
	li	$a0, 1
	j End			# Skip else istructions
Else:	li	$a0, 0
End:	li	$v0, 1		# Print value of $a0
	syscall
	li	$v0, 10
	syscall
