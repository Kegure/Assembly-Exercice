.data
	randomInteger: .word 50 
.text 
	li $v0, 1 # 1 -> print integer
	lw $a0, randomInteger # lw -> load Word(32bits/4bytes)
	syscall # JUST DO IT