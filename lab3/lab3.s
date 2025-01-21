.syntax unified
.cpu cortex-m4
.thumb
	.word 0x20000400
	.word 0x800000ed
	.space 0xe4
.data
@ declare your data here
array: .byte 3,2,4,1,5,6

@ 3 rows and 2 columns
@ array = 3 2
	@ 4 1
	@ 5 6

.text
start:

mov r1, #2  @total no of columns
mov r2, #0  @row index
mov r3, #0   @column index 

ldr r4, =array 

mul r2,r1,r2
add r0, r2, r3 

ldrb r5, [r4,r0]

stop: b stop

