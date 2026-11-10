#// Solución PR3 curso 23-24
#// Manejo de matrices con funciones
#
#//Autor: Guillermo López Concepción
#Fecha de última modificación: 10/04/24
#
#typedef struct {
#  int nFil;
nFil = 0	# El desplazamiento al campo dentro de la estructura
#  int nCol;
nCol = 4	# El desplazamiento al campo dentro de la estructura
#  float elementos[];
elementos = 8	# El desplazamiento al campo dentro de la estructura
#} structMat;
#

sizeF = 4	# Numero de bytes de un float
LF = 10		# Caracter salto de línea
	.data
#structMat mat1 {
#  6,
#  6,
#  {
#    11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
#    21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
#    31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
#    41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
#    51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
#    61.61, 62.62, 63.63, 64.64, 65.65, 66.66
#  }
#};
mat1:	.word	6
	.word	6
	.float	11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
	.float	21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
	.float	31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
	.float	41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
	.float	51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
	.float	61.61, 62.62, 63.63, 64.64, 65.65, 66.66

#structMat mat2 {
#  7,
#  10,
#  {
#    -36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
#    -86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
#     4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
#    67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
#    30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
#    84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
#    -41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181
#  }
#};
mat2:	.word	7
	.word	10
	.float	-36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
	.float	-86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
	.float	4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
	.float	67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
	.float	30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
	.float	84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
	.float	-41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181

# structMat mat3 {
#   1,
#   8,
#   {
#     -36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61
#   }
# };
mat3:	.word	1
	.word	8
	.float	-36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61

# structMat mat4 {
#   16,
#   1,
#   { -90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3 ,
#     -96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83 }
# };
mat4:	.word	16
	.word	1
	.float	-90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3
	.float	-96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83

# structMat mat5 {
#   1,
#   1,
#   { 78.98 }
# };
mat5:	.word	1
	.word	1
	.float	78.98

# structMat mat6 {
#   0,
#   0,
#   { 0 }
# };
mat6:	.word	0
	.word	0
	.float	0.0

#float infinito = INFINITY;
infinito:	.word	0x7F800000

# Cadenas de caracteres
str_titulo:	.asciiz	"\nComienza programa manejo matrices con funciones\n"
str_menu:	.ascii	"(0) Terminar el programa\n"
		.ascii	"(1) Cambiar la matriz de trabajo\n"
		.ascii	"(3) Cambiar el valor de un elemento\n"
		.ascii	"(4) Intercambiar un elemento con su opuesto\n"
		.ascii	"(7) Encontrar el minimo\n"
		.asciiz	"\nIntroduce opción elegida: "
str_errorOpc:	.asciiz	"Error: opcion incorrecta\n"
str_termina:	.asciiz	"\nTermina el programa\n"
str_elijeMat:	.asciiz	"\nElije la matriz de trabajo (1..6): "
str_numMatMal:	.asciiz	"Numero de matriz de trabajo incorrecto\n"
str_errorFil:	.asciiz	"Error: dimension incorrecta.  Numero de fila incorrecto\n"
str_errorCol:	.asciiz	"Error: dimension incorrecta.  Numero de columna incorrecto\n"
str_indFila:	.asciiz	"\nIndice de fila: "
str_indCol:	.asciiz	"Indice de columna: "
str_nuevoValor:	.asciiz	"Nuevo valor para el elemento: "
str_valMin:	.asciiz	"\nEl valor minimo esta en ("
str_conValor:	.asciiz	") con valor "
str_matTiene:	.asciiz	"\n\nLa matriz tiene dimension "

# void print_mat(structMat* mat) {
                .text
print_mat:
#   int nFil = mat->nFil;
#   int nCol = mat->nCol;
#   float* elem = mat->elementos;

        #nFil   -> $s0
        #nCol   -> $s1
        #matriz -> $s2
                .data 
str_x:          .asciiz "x"
str_salto:      .asciiz "\n"
str_espacio:    .asciiz " "
                .text
#   std::cout << "\n\nLa matriz tiene dimension " << nFil << 'x' << nCol << '\n';
        addi    $sp, $sp, -24
        sw      $s0, 0($sp)
        sw      $s1, 4($sp) 
        sw      $s2, 8($sp) 
        sw      $ra, 12($sp)
        sw      $s3, 16($sp)
        sw      $s4, 20($sp)
 
        li      $v0, 4
        la      $a0, str_matTiene
        syscall

        li      $v0, 1
        lw      $a0, 0($sp)
        syscall   

        li      $v0, 4
        la      $a0, str_x
        syscall

        li      $v0, 1
        lw      $a0, 4($sp)
        syscall

        li      $v0, 4
        la      $a0, str_salto
        syscall
#   for(int f = 0; f < nFil; f++) {
        li      $s3, 0          #$s3 = f -> fila
for_prins1:
        bge     $s3, $s0, for_prins1_fin
        li      $s4, 0          #$s4 = c -> columna
for_prins2:
#     for(int c = 0; c < nCol; c++) {
        bge     $s4, $s1, for_prins2_fin
#       std::cout << elem[f*nCol + c] << ' ';

        mul     $t5, $s3, $s1
        addu    $t5, $t5, $s4
        mul     $t5, $t5, sizeF
        addu    $t5, $s2, $t5

        lwc1    $f16, 0($t5)

        li      $v0, 2
        mov.s   $f12, $f16
        syscall

        li      $v0, 4
        la      $a0, str_espacio
        syscall

        addi    $s4, $s4, 1
        b       for_prins2
#     }
for_prins2_fin:
#     std::cout << '\n';
        li      $v0, 4
        la      $a0, str_salto
        syscall 
        
        addi    $s3, $s3, 1
        b       for_prins1
#   }
for_prins1_fin:
#   std::cout << '\n';
        li      $v0, 4
        la      $a0, str_salto
        syscall

        lw      $s0, 0($sp)
        lw      $s1, 4($sp) 
        lw      $s2, 8($sp) 
        lw      $ra, 12($sp)
        lw      $s3, 16($sp)
        lw      $s4, 20($sp)
        addi    $sp, $sp, 24
        jr      $ra
print_mat_fin:
# }
# 
change_elto:
# void change_elto(structMat* mat, int indF, int indC, float valor) {   
#   int numCol = mat->nCol;
        move    $t0, $s1        #numCol -> $t0
                                #mat    -> $a0
                                #indF   -> $a1
                                #indC   -> $a2
                                #valor  -> $f12
#   mat->elementos[indF * numCol + indC] = valor;
        #Direccion = DirMat + tamDatos * (indF * numCol + indC)
        mul     $t1, $a1, $t0
        addu    $t1, $t1, $a2
        mul     $t1, $t1, sizeF
        add     $a0, $a0, $t1
        swc1    $f12, 0($a0)
        jr      $ra
change_elto_fin:
# }
# 
# void swap(float* e1, float* e2) {
swap:
        #$a0 = e1
        #$a1 = e2

#   float temp1 = *e1;
#   float temp2 = *e2;
        lwc1    $f4, 0($a0)     #Cargamos el valor en un temp
        lwc1    $f5, 0($a1)     #Cargamos el valor en un temp
#   *e1 = temp2;
        swc1    $f4, 0($a1)  
#   *e2 = temp1;
        swc1    $f5, 0($a0)

        jr      $ra
# }
swap_fin:
# 
# void intercambia(structMat* mat, int indF, int indC) {
Intercambia:
#   int numCol = mat->nCol;
#   int numFil = mat->nFil;
#   float* datos = mat->elementos;
        
        #a0  -> nFil
        #a1  -> nCol
        #a2  -> indFil
        #a3  -> indCol
        #t0  -> MatDir

#   float* e1 = &datos[indF * numCol + indC];
        #Direccion = DirMat + tamDatos * (indF * numCol + indC)
        mul     $t1, $a2, $a1 
        add     $t1, $t1, $a3 
        mul     $t1, $t1, sizeF
        add     $t1, $t1, $t0

#   float* e2 = &datos[(numFil - indF - 1) * numCol + (numCol - indC - 1)];
        #Direccion = DirMat + tamDatos * [(numFil - indF - 1) * numCol + (numCol - indC - 1)]
        sub     $t2, $a0, $a2   #numFil - indF
        sub     $t2, $t2, 1     #numFil - indF - 1
        mul     $t2, $t2, $a1   #(numFil - indF - 1) * numCol
        
        sub     $t3, $a1, $a3   #numCol - indC
        sub     $t3, $t3, 1     #numCol - indC - 1

        add     $t2, $t2, $t3   #Operacion completa

        mul     $t2, $t2, sizeF #se multiplica por el tamaño de dato
        addu    $t2, $t2, $t0
#   swap(e1, e2);
        addi    $sp, $sp, -4     #Actualizamos el stack pointer
        sw      $ra, 0($sp)      #Guardamos la dirección de $ra

        move    $a0, $t1        #$a0 = e1
        move    $a1, $t2        #$a1 = e2
        jal     swap

        
        lw      $ra, 0($sp)       #Recuperamos la dirección de $ra
        addi    $sp, $sp, 4       #Actualizamos el stack pointer
        jr      $ra
# }
intercambia_fin:
# 
# std::tuple<float, int, int> find_min(structMat* mat) {
find_min:
        #$f12 -> ValorMin
        #$t1  -> filaMin
        #$t2  -> columnaMin

        #$a0 -> nFil
        #$a1 -> nCol
        #$a2 -> dirMat
#   int numCol = mat->nCol;
#   int numFil = mat->nFil;
#   float* datos = mat->elementos;
#   float min = infinito;
        l.s     $f12, infinito
#   int fmin = -1;
        li      $t1, -1
#   int cmin = -1;
        li      $t2, -1

        li      $t3, 0  #Inicializamos $t3 -> f = 0
#   for(int f = 0; f < numFil; f++) {
for_find_min_filas:
        li      $t4, 0  #Inicializamos $t4 -> c = 0
        bge     $t3, $a0, fin_for_find_min_filas     #if f >= numFil, then salir del bucle
#     for(int c = 0; c < numCol; c++) {
for_find_min_col:
        bge     $t4, $a1, fin_for_find_min_col
#       float valor = datos[f * numCol + c];
        #datos = dirMat + tamElem * [f * numCol + c]
        
        mul     $t5, $t3, $a1   # f * numCol
        add     $t5, $t5, $t4   # [f * numCol + c]
        mul     $t5, $t5, sizeF # tamElem * [f * numCol + c]
        add     $t5, $t5, $a2   # Operacion completa
        l.s     $f5, 0($t5)     # Guardamos el valor[f][c] en $f5

#       if (valor < min) {
        c.lt.s  $f5, $f12
        bc1f    fin_if_valor_min    
if_valor_min:
#         min = valor;
        mov.s   $f12, $f5
#         fmin = f;
        move    $t1, $t3    
#         cmin = c;
        move    $t2, $t4
#       }
fin_if_valor_min:
        addu    $t4, $t4, 1             #c++
        b       for_find_min_col        
#     }
fin_for_find_min_col:
        addu    $t3, $t3, 1             #f++
        b       for_find_min_filas
#   }
fin_for_find_min_filas:
#   return {min, fmin, cmin};
        addi    $sp, $sp, -12   #Asignamos espacio en la pila
        s.s     $f12, 0($sp)
        sw      $t1, 4($sp)
        sw      $t2, 8($sp)
        jr      $ra
# }
find_min_fin:
# 
# int main() {
main:
#   std::cout << std::fixed << std::setprecision(8);  // Ignorar
#   std::cout << "\nComienza programa manejo matrices con funciones\n";
        li      $v0, 4
        la      $a0, str_titulo
        syscall
#   structMat* matTrabajo = &mat1;
        b       ifmat1
#   while(true) {
while_main:
#     print_mat(matTrabajo);
        jal     print_mat
#     std::cout <<
        li      $v0, 4
        la      $a0, str_menu
        syscall
#     "(0) Terminar el programa\n"
#     "(1) Cambiar la matriz de trabajo\n"
#     "(3) Cambiar el valor de un elemento\n"
#     "(4) Intercambiar un elemento con su opuesto\n"
#     "(7) Encontrar el minimo\n"
#     "\nIntroduce opción elegida: ";
# 
#     int opcion;
#     std::cin >> opcion;
        li      $v0, 5
        syscall

        beqz    $v0, op0
        beq     $v0, 1, op1
        beq     $v0, 3, op3_or_4
        beq     $v0, 4, op3_or_4
        beq     $v0, 7, op7 
        b       op_incorrecta

#     if(opcion == 0) {
op0:
        b       while_main_fin
#       break;
#     }
#     // Opción 1 ////////////////////////////////////////////////////////////
#     if(opcion == 1) {
op1:
#       std::cout << "\nElije la matriz de trabajo (1..6): ";
        li      $v0, 4
        la      $a0, str_elijeMat
        syscall
#       int matT;
#       std::cin >> matT;
        li      $v0, 5
        syscall
        move    $t0, $v0

        beq     $t0, 1, ifmat1
        beq     $t0, 2, ifmat2
        beq     $t0, 3, ifmat3
        beq     $t0, 4, ifmat4
        beq     $t0, 5, ifmat5
        beq     $t0, 6, ifmat6
        b       mat_else
#       if (matT == 1) {
ifmat1:
#         matTrabajo = &mat1;
        la      $s2, mat1
        lw      $s0, 0($s2)
        lw      $s1, 4($s2)
        addiu   $s2, $s2, 8
        b       while_main
#         continue;  // volvemos al principio del bucle
#       }
#       if (matT == 2) {
ifmat2:
#         matTrabajo = &mat2;
        la      $s2, mat2
        lw      $s0, 0($s2)
        lw      $s1, 4($s2)
        add     $s2, $s2, 8
        b       while_main
#         continue;  // volvemos al principio del bucle
#       }
#       if (matT == 3) {
ifmat3:
#         matTrabajo = &mat3;
        la      $s2, mat3
        lw      $s0, 0($s2)
        lw      $s1, 4($s2)
        add     $s2, $s2, 8
        b       while_main
#         continue;  // volvemos al principio del bucle
#       }
#       if (matT == 4) {
ifmat4:
#         matTrabajo = &mat4;
        la      $s2, mat4
        lw      $s0, 0($s2)
        lw      $s1, 4($s2)
        add     $s2, $s2, 8
        b       while_main
#         continue;  // volvemos al principio del bucle
#       }
#       if (matT == 5) {
ifmat5:
#         matTrabajo = &mat5;
        la      $s2, mat5
        lw      $s0, 0($s2)
        lw      $s1, 4($s2)
        add     $s2, $s2, 8
        b       while_main
#         continue;  // volvemos al principio del bucle
#       }
#       if (matT == 6) {
ifmat6:
#         matTrabajo = &mat6;
        la      $s2, mat6
        lw      $s0, 0($s2)
        lw      $s1, 4($s2)
        add     $s2, $s2, 8
        b       while_main
#         continue;  // volvemos al principio del bucle
#       }
mat_else:
#       std::cout << "Numero de matriz de trabajo incorrecto\n";
        li      $v0, 4
        la      $a0, str_numMatMal
        syscall
#       continue;  // volvemos al principio del bucle
        b       while_main
#     }
op3_or_4:
        move    $s3, $v0
#     // Opción 3  y  4 //////////////////////////////////////////////////////////
#     if(opcion == 3 || opcion == 4) {
#       std::cout << "\nIndice de fila: ";
        li      $v0, 4
        la      $a0, str_indFila
        syscall
#       int indFil;
#       std::cin >> indFil;
        li      $v0, 5
        syscall
        move    $s4, $v0  #indFil -> $s4

#       if ((indFil < 0) || (indFil >= matTrabajo->nFil)) {
        bltz    $s4, if_error_fila
        bge     $s4, $s0, if_error_fila
        b       fin_error_fila
if_error_fila:
#         std::cerr << "Error: dimension incorrecta.  Numero de fila incorrecto\n";
        li      $v0, 4
        la      $a0, str_errorFil
        syscall
#         continue;  // volvemos al principio del bucle
        b	while_main		# branch to while_main
#       }
fin_error_fila:
#       std::cout << "Indice de columna: ";
        li      $v0, 4
        la      $a0, str_indCol
        syscall
#       int indCol;
#       std::cin >> indCol;
        li      $v0, 5
        syscall
        move    $s5, $v0  #indCol  -> $s5

#       if ((indCol < 0) || (indCol >= matTrabajo->nCol)){
        bge     $s5, $s1, if_error_col
        bltz    $s5, if_error_col
        b       fin_error_col

if_error_col:
#         std::cerr << "Error: dimension incorrecta.  Numero de columna incorrecto\n";
        li      $v0, 4
        la      $a0, str_errorCol
        syscall
#         continue;  // volvemos al principio del bucle
        b       while_main
#       }
fin_error_col:
#Comprobar en qué caso nos encontramos
        beq     $s3, 3, if_op3
        beq     $s3, 4, if_op4
#       if (opcion == 3) {
if_op3:
#         std::cout << "Nuevo valor para el elemento: ";
        li      $v0, 4
        la      $a0, str_nuevoValor
        syscall
#         float valor;
#         std::cin >> valor;
        li      $v0, 6
        syscall
        move    $a0, $s2
        move    $a1, $s4
        move    $a2, $s5
        mov.s   $f12, $f0
#         change_elto(matTrabajo, indFil, indCol, valor);
        jal     change_elto
        b       while_main
#       }
#       if(opcion == 4) {
if_op4:
#         intercambia(matTrabajo, indFil, indCol);
        move    $a0, $s0        #nFil
        move    $a1, $s1        #nCol
        move    $a2, $s4
        move    $a3, $s5
        move    $t0, $s2        #DirMat
        jal     Intercambia
#       }
#       continue;
        b       while_main
#     }
op7:
#     // Opción 7 ////////////////////////////////////////////////////////////
#     if(opcion == 7) {
#       float valorMin;         
#       int filaMin;            
#       int columnaMin;         
#       std::tie(valorMin, filaMin, columnaMin) = find_min(matTrabajo);
        move    $a0, $s0
        move    $a1, $s1
        move    $a2, $s2
        jal     find_min

        #valorMin   $f, 0($sp) 
        #filaMin    $t, 4($sp)
        #columnaMin $t, 8($sp)

        
#       std::cout << "\nEl valor minimo esta en (" << filaMin << ','
#         << columnaMin <<") con valor " << valorMin;
        li      $v0, 4
        la      $a0, str_valMin
        syscall

        li      $v0, 1
        lw      $a0, 4($sp)
        syscall

        li      $a0, 0x2c       #Valor de la coma en hexadecimal
        li      $v0, 11         #Cargar el código del servicio de impresión de caracteres
        syscall

        li      $v0, 1
        lw      $a0, 8($sp)
        syscall

        li      $v0, 4
        la      $a0, str_conValor
        syscall
        
        li      $v0, 2
        l.s     $f12, 0($sp)
        syscall

        addi    $sp, $sp, 12    #Restauramos la pila
        b       while_main
#       continue;
#     }
# 
#     // Opción Incorrecta ///////////////////////////////////////////////////////
op_incorrecta:
#     std::cout << "Error: opcion incorrecta\n";
        li      $v0, 4
        la      $a0, str_errorOpc
        syscall
        b       while_main
#   }
while_main_fin:
#   std::cout << "\nTermina el programa\n";
        li      $v0, 4
        la      $a0, str_termina
        syscall
        li      $v0, 10
        syscall
# }