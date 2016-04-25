#Esercizio 2, moltiplicazione e divisione
	.data
data1:	.word	14
data2:	.word	3
data3:	.word	2

	.text
main:	lw 	$t1, data1
	lw 	$t2, data2
	lw	$t3, data3
	mult	$t1, $t2	# Hi Lo register used to put res. of mult and div
	mflo	$t0 		# Special instruction to copy $Lo to $t0
	div	$t0, $t3	# Save remainder in $Hi and integer quotient in $Lo
	mflo	$t0		# Int part
	mfhi	$t4		# Remainder, not interested now
	li	$v0, 1		# Print system call, argument in $a0
	move	$a0, $t0
	syscall
	li	$v0, 10		# Exit syscall
	syscall

