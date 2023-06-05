.data
	newLine: .asciiz "\n" 
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseMyRegister
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		jal printTheValue
		
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		
		addi $s0,$s0, 30
	
		
		#nested Procedure
		jal printTheValue
		
		lw $s0, 0($sp)
		lw $ra, 4($sp)
		addi $sp, $sp , 4
		
		jr $ra
		
	printTheValue:
	
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		
		jr $ra
		