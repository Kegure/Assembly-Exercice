.data
	vetor: .word 1, 5, 3, 2, 6, 3, 2, 1, 2, 3, 3
.text
  main:
	lui $at, 4097
	ori $a1, $at, 0
	
	addi $t1, $zero, 0 #somatorio
	addi $t6, $zero, 11# N size
	addi $t0, $zero, 0 # Contador
	addi $t5, $zero, 0 # Contador Divisao
  somatorio: 
  	beq $t0, $t6, divisao
  	lw $t2, 0($a1)
  	
  	add $t1, $t1, $t2
  	addi $a1, $a1, 4
  	addi $t0, $t0, 1
	
	j somatorio
	
  divisao:
  	slt $t7, $t6, $t1
  	beq $t7, $zero, exit  
  	
  	sub $t1, $t1, $t6 
  	addi $t5, $t5, 1
  	
  	j divisao
  	
  exit:
  	