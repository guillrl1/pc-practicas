#// Ejemplo sencillo de uso de array: array doubles
##include <iostream>

despl = 4
                .data
vect:           .double         -2.03, 10.33, 4.85, 3e-10, 7.5e+5, 9.022
str1:           .asciiz         "\nvectF["
str2:           .asciiz         "] = "
str_fin:        .asciiz         "\nTermina el programa\n"

                .text
#vect    -> $f20
#numElem -> $s0
#i       -> $s1
#valor   -> $f22

#int main() {
main:
#  int numElem = 6;
        li      $s0, 6
#  double vectD[numElem] = {-2.03, 10.33, 4.85, 3e-10, 7.5e+5, 9.022};
        li      $s1, 0
#  for(int i = 0; i < numElem; i++) {
for:
        bge     $s1, $s0, fin_for
#    double valor = vectD[i];
        la      $f20, vect
        mul     $t0, $s1, despl
        #Copia en crudo
        mtc1    $t0,$f2 # $f2 = $t0
        cvt.d.w $f16,$f2 # $f16 = vect

        add.d   $f20, $f20, $f16
        lw      $f22, 0($f20)
#    std::cout << "\nvectF["  << i << "] = " << valor;
        li      $v0, 4
        la      $a0, str1
        syscall

        li      $v0, 1
        move    $a0, $s1
        syscall

        li      $v0, 4
        la      $a0, str2
        syscall

        li      $v0, 3
        mov.d   $f12, $f22
        syscall
#  }
fin_for:
#  std::cout << "\nTermina el programa\n";
        li      $v0, 4
        la      $a0, str_fin
        syscall
        li      $v0, 10
        syscall
#} 
