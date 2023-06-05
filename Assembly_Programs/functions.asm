.data
 	message: .asciiz "Hi, jajaja, \nMy name is Kegure.\n"
.text
	main:
		jal displayMessage
		
	li $v0, 10 # 10 - finish program
	syscall
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra
