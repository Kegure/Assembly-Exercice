.data

.text
	add $t0, $zero, 5
	add $t1, $zero, 10
	
	div $s0, $t1, $t0 
	#------
	li $v0, 1
	add $a0, $zero, $s0
	syscall