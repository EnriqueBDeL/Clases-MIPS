#-----------------------------------------------------------------------------------------------------------------------------------
# En este codigo se muestra un men� con sus respectivas opciones.
#-----------------------------------------------------------------------------------------------------------------------------------
.data

Menu: .asciiz "\n\nMENU:"
Op1: .asciiz "\n1. Hacer suma."
Op2: .asciiz "\n2. Hacer resta."
Op3: .asciiz "\n3. Salir."
Intr:  .asciiz "\n\nIntroduce una opci�n: "

mensajesum1: .asciiz "\nIntroduce un numero: "
mensajesum2: .asciiz "\nEl resultado de la suma es: "

mensajeres1: .asciiz "\nIntroduce un numero: "
mensajeres2: .asciiz "\nEl resultado de la resta es: "

.text

bucle_menu:

li $v0,4
la $a0, Menu
syscall
#----------------
li $v0,4
la $a0, Op1
syscall
#----------------
li $v0,4
la $a0, Op2
syscall
#----------------
li $v0,4
la $a0, Op3
syscall
#----------------
#----------------
li $v0,4
la $a0, Intr
syscall

li $v0, 5
syscall
move $t0, $v0
 
beq $t0,1,op1
beq $t0,2,op2
beq $t0,3,op3

j bucle_menu

#-----------------------------------------------------------------------------------------------------------------------------------
#|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
#-----------------------------------------------------------------------------------------------------------------------------------

op1:

li $v0,4
la $a0, mensajesum1
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0,4
la $a0, mensajesum1
syscall

li $v0, 5
syscall
move $t2, $v0

add $t3, $t1, $t2

li $v0,4
la $a0, mensajesum2
syscall

li $v0, 1
move $a0, $t3
syscall

j bucle_menu

#-----------------------------------------------------------------------------------------------------------------------------------
#|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
#-----------------------------------------------------------------------------------------------------------------------------------

op2:

li $v0,4
la $a0, mensajeres1
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0,4
la $a0, mensajeres1
syscall

li $v0, 5
syscall
move $t2, $v0

sub $t3, $t1, $t2

li $v0,4
la $a0, mensajeres2
syscall

li $v0, 1
move $a0, $t3
syscall

j bucle_menu

#-----------------------------------------------------------------------------------------------------------------------------------
#|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
#-----------------------------------------------------------------------------------------------------------------------------------

op3:

li $v0, 10
syscall

