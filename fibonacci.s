.text

fib:
	mov r0, #8
	sub sp, sp, #4
	str r4,[sp]	
	mov r1, #0
	mov r2, #1
	cmp r0, #0
	bne loop
	mov r2, #0
	b sal
loop:
	cmp r0, #1
	beq sal
	add r3, r1, r2
	mov r1, r2
	mov r2, r3
	sub r0, r0, #1
	b loop
sal:
	mov r0, r2
	ldr r4,[sp]
	add sp, sp, #4
	mov pc, lr