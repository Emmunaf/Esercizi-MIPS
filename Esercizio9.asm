# Esercizio9, comprensione dello stack
	.data
l:	.word	10
	.text
main:	lw	$t0, l
push:	addi	$sp, $sp, -4	# Decrement stack pointer by 4
	sw	$t0, 0($sp)	# Save $t0 to stack
pop:	lw	$a0, 0($sp)	# Take the element
	addi	$sp, $sp, 4	# Increase stack pointer
print:	li	$v0, 1
	syscall
exit:	li	$v0, 10
	syscall
