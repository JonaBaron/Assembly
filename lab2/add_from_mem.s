.syntax unified
.cpu cortex-m4
.thumb

.word 0x20000400
.word 0x800000ed
.space 0xe4

.data
mick: .byte 0x01
keith: .byte 0x02 
result: .space 0x01 



.text
start:
	ldr r0, =mick 
	ldrb r1, [r0] 
	ldr r0, =keith 
	ldrb r2, [r0] 
	add r3, r2, r1 
	ldr r0, =result 
	strb r3, [r0] 
stop: b stop

