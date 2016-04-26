# Esercizio7, Calcola n-esimo numero della serie fibonacci
	.data

	.text
main:	li	$v0, 5		# Ask user for input (n)
	syscall
	#slti	$t4, $v0, 2	# if n < 2 => f(n) = 1
	#bne	$t4, $zero, lt2	# ... Jump to LessThan2 condition
	blt	$v0, 2, lt2
	addi	$s0, $v0, -1	# Copy the user value -1 because the first number
	li	$t0, 1		# to calculate is the 2th. (1+1)
	li	$t1, 0		# $t0 contains the last number found, the previous one is in $t1
ciclo:	move	$t2, $t0	# Temp var. for swapping ($t2)
	add	$t0, $t0, $t1	# Calculate the next number
	move	$t1, $t2	# Store the previous value in $t1
	addi	$t3, $t3, 1	# i++
	beq	$t3, $s0, end	# We reached the n-th number of Fibonacci
	j	ciclo
lt2:	li	$t0, 1		# print 1 if n < 2
end:	move	$a0, $t0	# Print the result and exit
	li	$v0, 1
	syscall
	li	$v0, 10
	syscall
