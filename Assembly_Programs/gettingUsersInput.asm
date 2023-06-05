.data
	prompt: .asciiz "Enter your age:" 
	message: .asciiz "\nYour age is " 
.text
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Get users age
	li $v0, 5
	syscall
	d
	#sotre the result
	add $t0, $v0, $zero
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 1
	add $a0, $t0, $zero
	syscall
	
	li $v0, 10
	syscall