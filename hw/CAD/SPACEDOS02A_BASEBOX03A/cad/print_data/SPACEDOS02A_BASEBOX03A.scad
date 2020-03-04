use <../src/plbase.scad>
use <../src/sloupek.scad>
use <../upravena_bocnice.scad>



include <../src/manufactury_conf.scad>
include <../configuration.scad>



//BOCNICE
//-------------------------------------------------------------


translate([0,0,(vyska_bocnice/2)+tloustka_plbase+tloustka_plbase])
upravena_bocnice();

//DNO
//-------------------------------------------------------------
translate([-((pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje2)/2-tloustka_bocnice,-vzdalenost_od_okraje1-tloustka_bocnice,tloustka_plbase])
        rotate(a=[180,0,90])

plbase_bez_der2(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice);    
    
  

