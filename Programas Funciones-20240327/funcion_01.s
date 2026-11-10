#// Programa con funciones
#include <iostream>
                .data
str_ini:        .asciiz         "Suma de numeros\n"
str_suma:       .asciiz         " + " 
str_igual:      .asciiz         " = "
str_n:          .asciiz         "\n"
                .text
#i    -> $s0
#j    -> $s1
#suma -> $s2

#int sumaNumeros(int a, int b) {
sumaNumeros:
        move    $t0, $s0
        move    $t1, $s1
        add     $s2, $t0, $t1
        jr      $ra
#  return a + b;
#}
#int main() {
main:
#  std::cout << "Suma de numeros\n";
        li      $v0, 4
        la      $a0, str_ini
        syscall
#  int i = 4;
        li      $s0, 4
#  int j = 5;
        li      $s1, 5
#  int suma = sumaNumeros(i, j);
        jal     sumaNumeros
#  std::cout << i << " + " << j << " = " << suma << "\n";
        li      $v0, 1
        move    $a0, $s0
        syscall

        li      $v0, 4
        la      $a0, str_suma
        syscall

        li      $v0, 1
        move    $a0, $s1
        syscall

        li      $v0, 4
        la      $a0, str_igual
        syscall

        li      $v0, 1
        move    $a0, $s2
        syscall

        li      $v0, 4
        la      $a0, str_n
        syscall

        li      $v0, 10
        syscall
#}
