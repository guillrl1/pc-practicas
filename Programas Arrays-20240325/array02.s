#// Autor: Alberto Hamilton Castro
#// Fecha: 2023-03-21

#// Ejemplo sencillo de uso de array: lectura
##include <iostream>
##define N 10
despl = 4
        .data        
vect:   .word      7, 2, 6, 8, 1, 9, 10, 3, 4, 5
        .text
#int main() {
#  int vect[N] = {7, 2, 6, 8, 1, 9, 10, 3, 4, 5};
main:
# int indice = 3;
        li      $s1, 3
#  int valor = vect[indice];
       la       $t0, vect
       mul      $t1, $s1, despl   
       addu     $t0, $t0, $t1    
       lw       $s0, 0($t0)     #deberia imprimir "6"

#  std::cout << valor << "\n";
        li      $v0, 1
        move 	$a0, $s0	
        syscall
        
        li      $a0, 10         # El código ASCII 10 corresponde al salto de línea
        li      $v0, 11
        syscall
#  valor = vect[6];
        la      $t0, vect
        lw      $s0, 24($t0)    #multiplicando por el desplazamiento directamente
#  std::cout << valor << "\n";
        li      $v0, 1
        move 	$a0, $s0		
        syscall

        li      $a0, 10         # El código ASCII 10 corresponde al salto de línea
        li      $v0, 11
        syscall
#} 
        li      $v0, 10
        syscall