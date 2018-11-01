	.globl get_byte_by_addr
get_byte_by_addr:
	movl $0, %eax   
	
	# place your code for Part 3 here
	movl (%edi), %eax
loop:
	cmp $0, %esi
	jle endloop
	shr $8, %eax
	dec		%esi
	jmp		loop
	
endloop:
	and $255, %eax
	# end of Part 3

	ret
