#Demonstration of JMP & CALL instructions.


.data
	string1:
		.asciz "Hello World"
		len1 = . - string1
	string2:
		.asciz "Jumping Test"
		len2 = . - string2
.text
	.globl _start
	_start:
		nop

		call CallMe
		movl $4,%eax
		movl $1,%ebx
		movl $string1,%ecx
		movl $len1,%edx
		int  $0x80

	ExitProgram:
		# Exit the program
		
		movl $1,%eax
		movl $10,%ebx
		int $0x80

	CallMe:
		movl $4,%eax
                movl $1,%ebx
                movl $string2,%ecx
                movl $len2,%edx
		int $0x80
		ret
