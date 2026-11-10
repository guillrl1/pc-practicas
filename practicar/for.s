# Solución INVIRTIENDO la comparación
# suma → $s0
# i → $t0 no hay llamadas syscall ni funciones
move    $s0,$zero
move    $t0,$zero #inicilización i=0 
for:
#condición invertida → salimos si i> 100 
    bgt $t0,100,for_fin
    add     $s0,$s0,$t0
    
    addi    $t0,$t0,1 # actualización i++
    b for # vuelta condición 
for_fin:
# después for