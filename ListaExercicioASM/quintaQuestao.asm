.data
	
.text	
	# A -> $a0, B -> $a1, X -> $a2 e Y -> $a3. Equacao : Z = [ (A^x) / (BY) ]^x
	
	main: 
	
		addi $sp, $sp, -12
		
		sw $a1, 0($sp)
		sw $a2, 4($sp)
		sw $ra, 8($sp)
		
		add $a1, $zero, $a2
		
		jal mult
		
	mult: 
		add $t0, $zero, $a1
		
		jal multLoop
		
		lw $ra, 4($sp)
		add $v0, $zero, $a0
		
	multLoop:
		beq $zero, $t0, return
		
		sub $t0, $t0, 1
		add $a0, $a0, $zero	
					
		j multLoop
		
	pot: 	
	
		add $a0, $
		add $a1, $
		 
	potLoop:
		
		j potLoop
		
	return:
	
		jr $ra
	
	finalExit: