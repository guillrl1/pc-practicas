#// Ejemplo sencillo de uso de matriz
##include <iostream>
numCol = 5
numFil = 3
despl = 4

                .data
matriz:         .word           11, 12, 13, 14, 15   
                .word           21, 22, 23, 24, 25
                .word           31, 32, 33, 34, 35

str1:           .asciiz         "\nmat["
str2:           .asciiz         ","
str3:           .asciiz         "] = "
str_fin:        .asciiz         "\nTermina el programa\n"

                .text
#f       -> $s1
#c       -> $s2
#mat     -> $s0
#valor   -> $s4
#int main() {
main:
#  int numFil = 3;
#  int numCol = 5;
#  int mat[numFil][numCol] = {
#    { 11, 12, 13, 14, 15},
#    { 21, 22, 23, 24, 25},
#    { 31, 32, 33, 34, 35},
#  };
        li      $s1, 0
        la      $s0, matriz 
bucle1:
#  for(int f = 0; f < numFil; f++) {
        bge     $s1, numFil, fin_bucle
        li      $s2, 0
#    for(int c = 0; c < numCol; c++) {
bucle2:
        bge     $s2, numCol, fin_bucle2
#      int valor = mat[f][c];
        mul     $t0, $s1, numCol
        addu    $t0, $t0, $s2
        mul     $t0, $t0, despl
        addu    $t0, $s0, $t0
        lw      $s4, 0($t0)
#      std::cout << "\nmat["  << f << "," << c << "] = " << valor;
        li      $v0, 4
        la      $a0, str1
        syscall

        li      $v0, 1
        add     $t0, $s1, 1
        move    $a0, $t0
        syscall

        li      $v0, 4
        la      $a0, str2
        syscall

        li      $v0, 1
        add     $t0, $s2, 1
        move    $a0, $t0
        syscall

        li      $v0, 4
        la      $a0, str3
        syscall

        li      $v0, 1
        move    $a0, $s4
        syscall

        addu    $s2, $s2, 1
        b       bucle2
#    }
fin_bucle2:
        addu    $s1, $s1, 1
        b       bucle1
#  }
fin_bucle:
#  std::cout << "\nTermina el programa\n";
        li      $v0, 4
        la      $a0, str_fin
        syscall
        li      $v0, 10
        syscall
#} 
