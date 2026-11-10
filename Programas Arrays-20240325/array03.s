#// Autor: Alberto Hamilton Castro
#// Fecha: 2023-03-21

#// Ejemplo sencillo de uso de array: recorrido
##include <iostream>
##define N 10
despl = 4
        .data
str_1:  .asciiz      "vect[' "
str_2:  .asciiz      " '] = "
vect:   .word        7, 2, 6, 8, 1, 9, 10, 3, 4, 5
        .text
#i = $s1
#N = $s2
#vect = $s0
#valor = $s4

#int main() {
#  int vect[N] = {7, 2, 6, 8, 1, 9, 10, 3, 4, 5};
main:
        li      $s2, 10
        li      $s1, 0
#  for(int i = 0; i < N; i++) {
for:   
        bge     $s1, $s2, fin_bucle
#    int valor = vect[i];
        la      $s0, vect
        mul     $t0, $s1, despl
        addu    $s0, $s0, $t0
        lw      $s4, 0($s0)
#    std::cout << "\nvect["  << i << "] = " << valor;
        li      $a0, 10
        li      $v0, 11         #salto de linea
        syscall

        la      $a0, str_1
        li      $v0, 4
        syscall
        
        li      $v0, 1
        move    $a0, $s1
        syscall

        la      $a0, str_2
        li      $v0, 4
        syscall

        li      $v0, 1
        move    $a0, $s4
        syscall

        add     $s1, $s1, 1
        b	for			# branch to for
        
#  }
fin_bucle:
#  std::cout << "\nTermina el programa\n";
        li      $v0, 10
        syscall
#} 
