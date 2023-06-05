.data

.text
	Start:
		addi $t0, $zero, 0
		jal while
		
		li $v0, 1
		add $a0, $v0,$zero
		syscall
		
		
		while:	
			
			slti $s0, $t0, 10
			beq $s0, 10, exit
			
			jal print
			
			addi $t0, $t0, 1
			
			j while
		exit:	
			li $v0, 10
			syscall
		
		print:
			li $v0, 1
			add $a0, $t0 ,$zero
			syscall
			
			jr $ra
			