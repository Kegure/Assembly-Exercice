.data
	message: .asciiz "The numbers are equal" 
	message2: .asciiz "The numbers are not equal"
	
.text
	Start:
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		beq $t0, $t1, numbersEqual
		bne $t0, $t1, numbersNotEqual
		
	li $v0, 10
	syscall
	
	
	numbersEqual: 
		li $v0, 4
		la $a0, message
		syscall
		
		li $v0, 10
		syscall
	
	numbersNotEqual:
		li $v0, 4
		la $a0, message2
		syscall
		
		li $v0, 10
		syscall