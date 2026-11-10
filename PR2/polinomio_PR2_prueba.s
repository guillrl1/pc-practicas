        .data
str_evaluacion:         .asciiz "\nEvaluacion polinomio f(x) = a x^3  + b x^2 + c x + d  en un intervalo [r,s]\n"
str_valoresfloat:       .asciiz "\nIntroduzca los valores de a,b,c y d (separados por retorno de carro):\n"
str_valoresint:         .asciiz "Introduzca [r,s] (r y s enteros, r <= s)  (separados por retorno de carro):\n"
str_if:                 .asciiz "\nf("") = "
str_fin:                .asciiz "\n\nTermina el programa\n"
        .text
#a = $f20
#b = $f21
#c = $f22
#d = $f23

#f = $f24

#r = $s0
#s = $s1
#x = $s2
main:
#\lnt main(void) {
#\l float a,b,c,d;
#\l std::cout << "\nEvaluacion polinomio f(x) = a x^3  + b x^2 + c x + d  en un intervalo [r,s]\n";
        li      $v0, 4
        la	$a0, str_evaluacion
        syscall
#\l std::cout << "\nIntroduzca los valores de a,b,c y d (separados por retorno de carro):\n";
        li      $v0,4
        la	$a0, str_valoresfloat
        syscall
#\l std::cin >> a;
        li      $v0, 6
        syscall
        mov.s 	$f21, $f0		# $f20 = $f0
#\l std::cin >> b;
        li      $v0, 6
        syscall
        mov.s 	$f22, $f0
#\l std::cin >> c;
        li      $v0, 6
        syscall
        mov.s 	$f23, $f0
#\l std::cin >> d;
        li      $v0, 6
        syscall
        mov.s 	$f24, $f0
#\l int r,s;
do:
#\l do {
#\l   std::cout << "Introduzca [r,s] (r y s enteros, r <= s)  (separados por retorno de carro):\n";
        li      $v0, 4
        la	$a0, str_valoresint
        syscall
#\l   std::cin >> r;
        li      $v0, 5
        syscall
        move    $s0, $v0
#\l   std::cin >> s;
        li      $v0, 5
        syscall
        move    $s1, $v0
#\l } while (r > s);
while:
        ble	$s0, $s1, fin_bucle	# if $s0 < $s1 then goto fin_bucle    
        move    $s2, $s0
#\l for (int x = r ; x <= s ; x++) {
for:
        ble	$s2, $s1, while	# if $s2 <= $s1 then goto target
#\l   float f = a*x*x*x + b*x*x + c*x + d;
        #Conversion de tipo
        move    $t0, $s2
        mtc1    $t0, $f2
        cvt.s.w $f4, $f2        #f2 = x
        mul.s   $f3, $f2, $f2   #f3 = x^2
        mul.s   $f4, $f2, $f3   #f4 = x^3

        #c*x
        mul.s   $f5, $f22, $f2 
        #b*x*x
        mul.s   $f6, $f21, $f3
        #a*x*x*x
        mul.s   $f7, $f20, $f4 

        #a*x*x*x + b*x*x
        add.s   $f7, $f7, $f6
        #c*x + d
        add.s   $f5, $f23, $f5
        #total
        add.s   $f5, $f5, $f7
        mov.s   $f24, $f5

#\l   if (f >= 2.1) {
if:
        li.s     $f25, 2.1
        c.lt.s  $f24, $f25
        bc1t    fin_if
#\l     std::cout << "\nf(" << x << ") = " << f;
        li      $v0,4
        la	$a0, str_if
        syscall
        li      $v0, 2
        mov.s   $f12, $f24
        syscall
fin_if:
        add    $s2, $s2, 1
        b		for			# branch to for
        
#\l   }
#\l }
fin_bucle:      
#\l std::cout << "\n\nTermina el programa\n";
        li      $v0, 4
        la	$a0, str_fin
        syscall
#\l
        li      $v0, 10
        syscall
