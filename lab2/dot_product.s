.syntax unified
.cpu cortex-m4
.thumb

.word 0x20000400
.word 0x800000ed
.space 0xe4

.data
mick: .byte 2,3,4 
keith: .byte 5,6,7  
dot: .space 0x01

.text
start:
	ldr r0 , =mick
	ldrb r1 , [r0]
	
	ldr r0 , =mick + 1
	ldrb r2 , [r0]

	ldr r0 , =mick + 2
	ldrb r3 , [r0]

	ldr r0 , = keith
	ldrb r4 , [r0]

	ldr r0 , = keith + 1
	ldrb r5 , [r0]

	ldr r0 , = keith +2
	ldrb r6 , [r0]

	mul r7 , r1, r4
	mul r8 , r2 , r5
	mul r9 , r3 , r6
	add r10 , r7 ,r8
	add r10 , r10 , r9
	ldr r0 , =dot
	strb r10 , [r0]

stop: b stop


