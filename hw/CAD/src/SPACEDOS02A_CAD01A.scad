
//Rozmery kovové krabicky vnitrni
krabicka_x=113;
krabicka_y=58;
krabicka_z=38;

krabicka_otvor_hrana=9.5;

//Rozmery casty modulu
pcb_x=110;
pcb_y=6;

baterka_x=73;
baterka_y=36;

konektor_x=12.5;
konektor_y=12;

SD_karta_x=54;
SD_karta_y=13;

dioda_x=24.5;
dioda_y=4.5;

difference(){

KRABICKA();
    translate([1.5,20,-0.5]) 
MODUL();    
    } 

module KRABICKA()
    {
    difference(){
        cube([krabicka_x,krabicka_y,krabicka_z],center=false);

//otvory
        translate([0,0,-0.5]) 
            cube([krabicka_otvor_hrana,krabicka_otvor_hrana,krabicka_z+1],center=false);
    
        translate([krabicka_x-krabicka_otvor_hrana,0,-0.5]) 
            cube([krabicka_otvor_hrana,krabicka_otvor_hrana,krabicka_z+1],center=false);
        
        translate([0,krabicka_y-krabicka_otvor_hrana,-0.5]) 
            cube([krabicka_otvor_hrana,krabicka_otvor_hrana,krabicka_z+1],center=false);
    
        translate([krabicka_x-krabicka_otvor_hrana,krabicka_y-krabicka_otvor_hrana,-0.5]) 
            cube([krabicka_otvor_hrana,krabicka_otvor_hrana,krabicka_z+1],center=false);


                }
    }   


module MODUL()
    {

    //pcb
    translate([0,-pcb_y,-0.5]) 
        cube([pcb_x,pcb_y,krabicka_z+1],center=false);

    //konektor
    translate([pcb_x-konektor_x,0,-0.5]) 
        cube([konektor_x,konektor_y,krabicka_z+1],center=false);

    //baterka
    translate([pcb_x-konektor_x-baterka_x,0,-0.5]) 
        cube([baterka_x,baterka_y,krabicka_z+1],center=false);

    //dioda
    translate([pcb_x-konektor_x-baterka_x-dioda_x,0,-0.5]) 
        cube([dioda_x,dioda_y,krabicka_z+1],center=false);

    //SD karta
    translate([pcb_x-SD_karta_x,-SD_karta_y,-0.5]) 
        cube([SD_karta_x,SD_karta_y,krabicka_z+1],center=false);
    
     }