.data

.text
	addi $t0, $zero , 5
	addi $t1, $zero , 1000
	mult $t0, $t1 # mult can be bigger
	
	mflo $s0
	#-------
	li $v0, 1
	add $a0, $zero, $s0
	syscall