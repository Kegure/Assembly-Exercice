.data
	bancoA: .word 1, 3, 6, 7, 8, 4, 2, 9, 6, 10 #utilizando 10 valores para facilitar
	bancoB: .word 4, 1, 3, 2, 7, 9, 2, 4, 6, 8  #utilizando 10 valores para facilitar
	bancoC: .word 0:10
.text
	#considerando que  os valores ja estao armazendos em $a1 e $a2
	main:
 		lui $at, 4097  # Load upper immediate with a valid offset
   		ori $a1, $at, 0   # Load lower immediate with the remaining offset
   
   		lui $at, 4097   # Load upper immediate with a valid offset
   		ori $a2, $at, 40   # Load lower immediate with the remaining offset
   		
  		lui $at, 4097   # Load upper immediate with a valid offset
 		ori $a3, $at, 80   # Load lower immediate with the remaining offset
  		
   	 	
 		addi $t7,$zero, 5 #stop condition
 		addi $t6,$zero, 10#size
 		addi $t0,$zero, 0 #contador
 	
 	
 	rules: 	
 		beq $t0, $t6, exit
 		
 		lw $t1, 0($a1)
 		lw $t2, 36($a2)
 		
 		# O primeiro elemento do banco A e comparado com o ultimo elemento banco B e assim sucessivamente... 
 		# depois da comparacao entre os 2 elementos , sera armazenado o maior no Array C[] que representa o banco C
 		# a comparacao termina quando um dos Arrays A ou C conter o valor " 5 " ou o numero de elementos for 100. 
 		# Pergunta : quantos elementos sera armazenado para o banco C[]? obs. provavelmente fazer um contador para armazenar a quantidade de elementos que foram postos em C[]
 		beq $t1, $t7, exit  #parar programa caso valor de $t1 seja 5
 		beq $t2, $t7, exit  #parar programa caso valor de $t2 seja 5
 		 		
 		slt $t3, $t1, $t2   
 		beq $t3, $zero, putAonC  
 		slt $t3, $t2, $t1  
 		beq $t3, $zero, putBonC
 		   
 		j exit
 	
 	putAonC: 
 		lw $t1, 0($a1)    # repeti o load  apenas para garantir que sao os valores corretos, mas no caso deste programa que apenas tem esses procedimentos, nao deveria ser problema sem
 		sw $t1, 0($a3)
 		
 		addi $a1, $a1, 4  #incrementando posicao do Array A[]
 		addi $a2, $a2, -4 #decrementando posicao do Array B[]
 		addi $a3, $a3, 4  #incrementando posicao do Array C[]
 		addi $t0, $t0, 1  #incrementando contador (quantidade de elementos armazenados em C[] )
 		
 		j rules
 		
 	putBonC:
 		lw $t2, 36($a2)    # repeti o load  apenas para garantir que sao os valores corretos, mas no caso deste programa que apenas tem esses procedimentos, nao deveria ser problema sem
 		sw $t2, 0($a3)
 		
 		addi $a1, $a1, 4  #incrementando posicao do Array A[]
 		addi $a2, $a2, -4 #decrementando posicao do Array B[]
 		addi $a3, $a3, 4  #incrementando posicao do Array C[]
 		addi $t0, $t0, 1 #incrementando contador
 		
 		j rules
 			
 	exit:
