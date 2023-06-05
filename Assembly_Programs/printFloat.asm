.data
	myFloat: .float 3.123
.text
	li $v0, 2 # 2 -> print float
	lwc1 $f12, myFloat # -> lwc1(load word in core processor one)
 	syscall 