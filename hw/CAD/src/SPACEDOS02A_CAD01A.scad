
//Rozmery kovové krabicky vnitrni
krabicka_x=113;
krabicka_y=58;
krabicka_z=10;  //38

krabicka_otvor_hrana=9.5;

//Rozmery casty modulu
pcb_x=111;
pcb_y=6;

baterka_x=73;
baterka_y=37;

konektor_x=12.5;
konektor_y=12;

SD_karta_x=42;
SD_karta_y=13;

SD_karta_mensi_x=12;
SD_karta_mensi_y=7.5;

dioda_x=25.5;
dioda_y=4.5;

SPACEDOS02A_CAD01A();

module SPACEDOS02A_CAD01A()
    {
    difference(){

        KRABICKA();
            translate([1,19.5,-0.5]) 
                MODUL();    
                } 
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
    
        translate([krabicka_x-krabicka_otvor_hrana,krabicka_y-krabicka_otvor_hrana-12-0.5]) 
            cube([krabicka_otvor_hrana,krabicka_otvor_hrana+20,krabicka_z+1],center=false);


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
    translate([pcb_x-SD_karta_x-SD_karta_mensi_x,-SD_karta_y,-0.5]) 
        cube([SD_karta_x,SD_karta_y,krabicka_z+1],center=false);
        
    //SD karta mensi otvor
    translate([pcb_x-SD_karta_mensi_x,-SD_karta_mensi_y,-0.5]) 
        cube([SD_karta_mensi_x,SD_karta_mensi_y,krabicka_z+1],center=false);  
     
    //vyrez levy horni
    translate([-2,7,-0.5]) 
       cube([24,60,krabicka_z+1],center=false);  
        
         //vyrez levy dolni
    translate([-2,-21,-0.5]) 
        cube([55,12.5,krabicka_z+1],center=false);  
     
   //vyrez pravy dolni
    translate([-2,-21,-0.5]) 
        cube([krabicka_x+4,6,krabicka_z+1],center=false);     
        
       //vyrez pravy horni
    translate([-2,7,-0.5]) 
       cube([24,60,krabicka_z+1],center=false);    
    
     }