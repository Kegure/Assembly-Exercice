.data
	number1: .word 45
	number2: .word 15
.text
	lw $t0, number1
	lw $t1, number2
	sub $t2, $t0, $t1
	#--------------------
	li $v0, 1
	add $a0, $t2, $zero # or ( move $a0, $t2)
	syscall