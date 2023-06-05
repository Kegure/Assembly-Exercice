	# 50 Alunos Arquitetura/Circuitos.
	# Quantidade Alunos       em $a0 (endereco base)
	# Alunos Arquitetura em $a1 (endereco base).
	# Alunos Circuitos   em $a2 (endereco base).
	# Objetivo : Nota inicial da turma de arquitetura devera ser trocada com a ultima nota de circuitos,
	# segunda nota de arquitetura deve ser trocada com a penultima de circuitos e assim em diante ate que
	# todas sejam trocadas.
	# Observacoes : deve ser feito com 1(UM) procedimento!!
.data
	notas_arq: .word 1, 3, 5, 7, 8, 4, 2, 9, 6, 10 #utilizando 10 Notas para facilitar
	notas_cir: .word 4, 1, 3, 5, 7, 9, 2, 4, 6, 8  #utilizando 10 Notas para facilitar
.text
	main: 	
		#la $a1, notas_arq
		#la $a2, notas_cir
		
		lui $at, 4097
		ori $a1, $at, 0
		
		lui $at, 4097
		ori $a2, $at, 40
		
		addi $a0, $zero, 36
		addi $t0, $zero, 0  #counter crescent
		
	swap:	
		lw $t2, 0($a1)
		lw $t3, 36($a2)
		sw $t3, 0($a1)
		sw $t2, 36($a2)
		addi $a1, $a1, 4
		addi $a2, $a2, -4
		
		
		addi $t0, $t0, 4        # Increment counter
    		blt $t0, 20, swap       # Continue swapping until counter reaches 20



   
	
	exit:
	 
    		
    		
    		
	
  
	
