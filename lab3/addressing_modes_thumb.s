@ Ted Obuchowicz
@ May 9, 2023
@ addressing_modes_thumb.s
.syntax unified
.cpu cortex-m4
.thumb
.word 0x20000400
.word 0x800000ed
.space 0xe4
.data
@ declare your data here
list: .byte 1,2,3,4,5
.text
start:
mov r1, #5 
mov r2, r1 
ldr r1, =list
ldrb r2 , [r1] 
ldr r1, =list
ldrb r2, [r1, #1] 
ldr r1, =list 
mov r2, #2
ldrb r3, [r1,r2] 
ldr r1, =list 
ldrb r2, [r1]
ldrb r3, [r1], #1 
ldr r1, =list + 5 
ldrb r2, [r1, #-1]! 
ldrb r3, [r1, #-1]! 
stop: b stop
.end
