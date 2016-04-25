# Esercizio 5, while (v[i] != k) i++;
	.data
v_arr:	.space	1024		# Array declaration (1024 bytes)
v_val:	.word	10		# Value of the 4th element
k_val:	.word	10		# Value k to compare with

	.text
main:	la	$t0, v_arr
	lw	$t1, v_val
	lw	$t2, k_val
	sw	$t1, 16($t0)  	# Write v_val to the 4th element of array

ciclo:	lw	$t3, ($t0)	# Load the i-th element
	beq	$t3, $t2, end	# Check the break condition (v[i] == k)
	addi	$t0, $t0, 4	# i++ (Note: the next element has offset += 4 byte (1 word)
	move	$a0, $t0	# Print current address for studying pourpose
	li	$v0, 1
	syscall
	j	ciclo		# Repeat
	
end:	li	$v0, 10
	syscall
