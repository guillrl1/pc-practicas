#// Autor: Alberto Hamilton Castro
#// Fecha: 2023-03-21

#// Ejemplo sencillo de uso de array
##include <iostream>
##define N 10
tam_elto = 4
        .data   
vect:   .word   7, 2, 6, 8, 1, 9, 10, 3, 4, 5
        .text
#int main() {
main:
#  int vect[N] = {7, 2, 6, 8, 1, 9, 10, 3, 4, 5};
#  int indice = 3;
        li      $t0, 3
#  vect[indice] = 0;
        la      $s0, vect
        mul     $t1, $t0, tam_elto
        add	$s0, $s0, $t1			
        sw      $zero, 0($s0) 
#} 

