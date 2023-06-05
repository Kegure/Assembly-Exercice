.data
	number1: .word 3
	number2: .word 8
.text
	lw $t0, number1
	lw $t1, number2
	mul $t2, $t0, $t1
	#-----------------
	li $v0, 1
	add $a0, $t2, $zero #or(move $a0, $t2)
	syscall