.data
	message: . asciiz "Enter one Float Value: "
	zeroAsFloat: .float 0.0 
.text
	lwc1 $f0, zeroAsFloat
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 6
	syscall
	
	li  $v0, 2
	add.s $f12, $f0, $f4
	
	
	