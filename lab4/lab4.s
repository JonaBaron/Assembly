.syntax unified
.cpu cortex-m4
.thumb

.data
message: .ascii "juMping JAck flaSh #1"
lastchar: .byte 0    

.text
_start:

sub r0,r0,r0
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
sub r4,r4,r4
sub r5,r5,r5

    ldr r0, =lastchar  @ r0 is end of string
    ldrb r0,[r0]    
   
    ldr r1, =message  @ r1 is address
    ldrb r2,[r1] @ r2 is value of r1
   
    add r3, r3, #97 @ min value
    add r4, r4, #122 @ max value
   
    add r5, r5, #0 @ is shift

   
loop: cmp r2,r0
    beq stop @ if end stop
   
    cmp r2 , r3 @ if smaller or equal than 97, go to next character
    blt next
   
    cmp r2 , r4 @ if bigger than 122, go to next character
    bgt next
   
    sub r2, r2, #32 @ convert lowercase to uppercase
    strb r2,[r1,r5] @ store the uppercase value


    b next

next:
    add r5, r5, #1 @ increment position
    ldrb r2,[r1, r5] @ load next character
    b loop

stop: b stop
.end
