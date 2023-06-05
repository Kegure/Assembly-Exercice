.data
	newLine: .asciiz "\n" 
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseMyRegister
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp,$sp, -4
		sw $s0, 0($sp)
		
		addi $s0,$s0, 30
		
		#print new value in function
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		
		lw $s0, 0($sp)
		addi $sp, $sp , 4
		jr $ra