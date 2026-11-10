#// Autor: Alberto Hamilton Castro
#// Fecha: 2023-03-21
#// Ejemplo sencillo de uso de array: numero elementos en variable
##include <iostream>
despl = 4
                .data 
str_1:          .asciiz         "\nvect["
str_2:          .asciiz         "] = "
str_fin:        .asciiz         "\nTermina el programa\n"
vect:           .word           7, 2, 6, 8, 1, 9, 10, 3, 4, 5       
                
                .text 
#numElem -> $s1
#i       -> $s2
#valor   -> $s3
#vect    -> $s0


#int main() {
main:
#  int numElem = 10;
        li      $s1, 10
#  int vect[numElem] = {7, 2, 6, 8, 1, 9, 10, 3, 4, 5};         #Inicializado arriba
        li      $s2, 0
#  for(int i = 0; i < numElem; i++) {
for:
        bge     $s2, $s1, fin_for
#    int valor = vect[i];
        la      $s0, vect
        mul     $t0, $s2, despl         #desplazamiento relativo
        addu    $s0, $s0, $t0
        lw      $s3, 0($s0)
#    std::cout << "\nvect["  << i << "] = " << valor;
        li      $v0, 4
        la      $a0, str_1
        syscall

        li      $v0, 1
        move    $a0, $s2   
        syscall

        li      $v0, 4
        la      $a0, str_2
        syscall

        li      $v0, 1
        move    $a0, $s3   
        syscall 

        addi    $s2, $s2, 1
        b       for
#  }
fin_for:
#  std::cout << "\nTermina el programa\n";
        li      $v0, 4
        la      $a0, str_fin
        syscall

        li      $v0, 10
        syscall
#} 
