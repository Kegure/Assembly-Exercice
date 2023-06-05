.data
	myDouble: .double 5.123 #double is 64bits
	zeroDouble: .double 0.0
.text
	ldc1 $f2, myDouble # always use even registers, because double use 
	#2 spaces, in this case he uses $f2 and $f3
	ldc1 $f0, zeroDouble
	
	li $v0, 3 # 3 - print a double
	add.d $f12, $f2, $f0 # add.d -> add with double precision
	syscall