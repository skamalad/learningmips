.data
	vars:		.word 5 # 'a' at offset 0
			.word 10 # 'b' at offset 4
			.word 0	# 'sum' at offset 8
			
.text
.globl main

main:
	la $s0, vars		#load the address of the data block in $s0
	lw $t0, 0($s0)		#load the value at offset 0 from the base address $s0 into $t0
	lw $t1, 4($s0)		#load the value at offset 4 from the base address $s0 into $t0
	add $t2, $t0, $t1	#add the value in $t0 and $t1, store result in $t2
	sw $t2, 8($s0)		#store the result (which is in $t2) at offset 8 from the base address
	
	# Print the sum
	lw $a0, 8($s0)		# load the result from offset 8 into $a0 to prepare for printing
	li $v0, 1		# load the syscall for printing an integer
	syscall
	
	# Exit the program
	
	li $v0, 10		# load the code for the exit syscall
	syscall 
	

	