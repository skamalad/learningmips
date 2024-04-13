.data #This is the data segment (for variable and strings)
	num1: .word 15
	num2: .word 10

.text #this is the text segment for code
	main:			#Label for the start of the program 
	li $v0, 1 		#Load immediate: system call code for printing an integer
	lw $a0, num1		#Load word: load value of num1 into register $a0
	lw $t0, num2		#load word: load num2 into register $t0
	add $t1, $a0, $t0	#add the values of num1 and num2, store in $t1
	move $a0, $t1		#move the result to $a0 for printing
	syscall
	
	 li $v0, 10		#load system call code 10 (exit program)
	 syscall 
	  
	