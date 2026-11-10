#// Programa con funciones
#include <iostream>
                .data
str_titulo:     .asciiz         "Introduce numero: "         
str_divisor:    .asciiz         " es mayor divisor de "
str_salto:      .asciiz         "\n"
                .text
#n        -> $s0
#mayorDiv -> $s1
#d        -> $t0

#// devuelve 1 si a es divisible entre b, 0 en caso contrario
#int divisible(int a, int b) {
divisible:
        move    $t3, $t0
        move    $t4, $t1
#  int resto = a % b;
        div     $t3, $t4
        mfhi    $t5
#  int divisible = 0;
        move    $a0, $zero
#  if (resto == 0) {
if:
        bne     $t5, $zero, fin_if
        li      $a0, 1
#    divisible = 1;
fin_if:
#  }
#  return divisible;
        jr      $ra
#}

#// devuelve el mayor divisor de x
#int mayorDivisor(int x) {
mayorDivisor:
#  for (int d = (x-1); d > 1; d--) {
        move    $t0, $s0
        add     $t1, $t0, -1
for:
        bge     $t0, 1, jump
#    int divis = divisible(x,d);
        addi    $sp, $sp, -8    #push pila
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)

        jal     divisible

        addi    $sp, $sp, 8    #pop pila
        lw      $ra, 0($sp)
        lw      $s0, 4($sp)
if2:
#    if (divis) {
        bne     $a0, 0, fin_if2      
#      return d;
        move    $a0, $t0
        b       jump
#    }
fin_if2:
        add     $t0, $t0, -1
        b       for
#  }
fin_for:
        li      $a0, 1
jump:
        jr      $ra
#  return 1;
#}

#int main() {
main:
#  int n;
#  std::cout << "Introduce numero: ";
        li      $v0, 4
        la      $a0, str_titulo
        syscall
#  std::cin >> n;
        li      $v0, 5
        syscall
        move    $s0, $v0
#  int mayorDiv = mayorDivisor(n);
        jal     mayorDivisor
#  std::cout << mayorDiv << " es mayor divisor de " << n << "\n";
        li      $v0, 1
        syscall

        li      $v0, 4
        la      $a0, str_divisor
        syscall

        li      $v0, 1
        move    $a0, $s0
        syscall

        li      $v0, 4
        la      $a0, str_salto
        syscall
#}
        li      $v0, 10
        syscall
