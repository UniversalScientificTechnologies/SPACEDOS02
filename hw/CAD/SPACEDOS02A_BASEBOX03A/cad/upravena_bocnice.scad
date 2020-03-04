use <src/bocnice.scad>
//nacteni dat pro drzak modulu SPACEDOS02A
use <../../SPACEDOS02A_CAD01A/src/SPACEDOS02A_CAD01A.scad>
use <src/otvory.scad>
include <src/manufactury_conf.scad>
include <configuration.scad>
include <src/otvory_conf.scad>

upravena_bocnice();

//Slouzi pro vytvoreni bocnice s vlastnimi otvory


module upravena_bocnice()
{
difference() {
    union() {
    bocnice(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);


 translate([-((pocet_der2-1)*vzdalenost_der)/2-0.5,-vzdalenost_od_okraje1-tloustka_bocnice/2-1,-(vyska_bocnice/2)-tloustka_plbase])
    SPACEDOS02A_CAD01A(28);

            }
            
 
//Vytvoreni otvorů v přední stěně
//--------------------------------------------------------
    union() {            
        translate([-((pocet_der2-1)*vzdalenost_der)/2,-vzdalenost_od_okraje1-tloustka_bocnice/2,-(vyska_bocnice/2)])
        {
        //složí k posunu otvoru v násobku děr
        
            }
            



//Vytvoreni zadniho celicka krabicky
//--------------------------------------------------------
        translate([((pocet_der2-1)*vzdalenost_der)/2,(pocet_der1-1)*vzdalenost_der+vzdalenost_od_okraje1+tloustka_bocnice/2,-(vyska_bocnice/2)])
    {
    
     }

//Vytvoreni leveho celicka krabicky
//--------------------------------------------------------

        translate([-((pocet_der2-1)*vzdalenost_der)/2-vzdalenost_od_okraje2-tloustka_bocnice/2,(pocet_der1-1)*vzdalenost_der,-(vyska_bocnice/2)])
    {
        
    }

//Vytvoreni praveho celicka krabicky
//--------------------------------------------------------
        translate([+((pocet_der2-1)*vzdalenost_der)/2+vzdalenost_od_okraje2+tloustka_bocnice/2,0,-(vyska_bocnice/2)])
       {
      
                          
        }
}
}
}
