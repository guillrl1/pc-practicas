.data
eleccion: .word 0
valor: .word 0

.text
.globl main

main:
    # Prompt user for input
    li $v0, 5
    syscall
    move $t0, $v0

    # Store input in eleccion
    sw $t0, eleccion

    # Perform switch case
    lw $t0, eleccion
    li $t1, 1
    beq $t0, $t1, case_1
    li $t1, 2
    beq $t0, $t1, case_2
    li $t1, 3
    beq $t0, $t1, case_3
    li $t1, 4
    beq $t0, $t1, case_4
    j default_case

case_1:
    lw $t0, valor
    sll $t0, $t0, 1
    sw $t0, valor
    j after_switch

case_2:
    lw $t0, valor
    sra $t0, $t0, 1
    sw $t0, valor
    j after_switch

case_3:
    lw $t0, valor
    addi $t0, $t0, 5
    sw $t0, valor
    j after_switch

case_4:
    lw $t0, valor
    sll $t0, $t0, 1
    add $t0, $t0, $t0
    sw $t0, valor
    j after_switch

default_case:
    lw $t0, valor
    addi $t0, $t0, 1
    sw $t0, valor

after_switch:
    # Continue with the rest of the code

