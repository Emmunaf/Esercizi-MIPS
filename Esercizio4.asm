# Esercizio 4, Costrutto if. Se d1=d2 print d1, else d1+d2 
	.data
d1:	.word	16
d2:	.word	17

	.text
main:	lw	$t0, d1
	lw	$t1, d2
	bne	$t0, $t1, else	# else
	move 	$a0, $t0	# if(d1=d2) d1
	j	end		# skip else istruction
else:	add 	$a0, $t0, $t1	# else d1+d2
end:	li	$v0, 1		# Load syscall print($a0)
	syscall			# Execute system call
	li	$v0, 10
	syscall

