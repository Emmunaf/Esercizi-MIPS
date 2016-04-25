# Esercizio 3, Create an 'array', write and read from it
	.data
arr:	.space	1024
nval:	.word	32

	.text
main:	la	$t0, arr	# Load base address of array
	lw	$t1, nval	# Load the value to store in the array
	sw	$t1, 80($t0)	# Edit the 20th elem.
	lw	$a0, 80($t0)	# Access the 20th element and put it to print
	li	$v0, 1		# Print ($a0 argument)
	syscall
	li 	$v0, 10
	syscall
