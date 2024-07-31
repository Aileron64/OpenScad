
$fn=200;

THICK = 2;

CARD_L = 55;
CARD_W = 81;
CARD_STACK = 60;

BOX_W = CARD_W + (THICK * 2);
BOX_L = CARD_L + (THICK * 2);
BOX_H = CARD_STACK + (THICK * 2);

SMALL_DECK_STACK = 7;

difference() {
    cube(size = [BOX_W, BOX_L, BOX_H]);

    translate([
        THICK, 
        THICK, 
        BOX_H - CARD_STACK]) {
            
        cube(size = [
            CARD_W,
            CARD_L,
            CARD_STACK + 1]);
    }
    // for ( i = [10 : 2 : CARD_L - 10] ){
    //     translate([1, i, 60])
    //         cube(size = [BOX_W - 2, 1, 40]);
    // }
    
    gap();
    
}

module gap() {
    translate([
        BOX_W / 2,
        490,
        40]) {

        rotate([90, 90, 0]) {
            cylinder(
                h = 1000,
                r = 25);
        }
    }

    translate([
        (BOX_L / 2) - 12, 
        -1, 
        40]) {
            
        cube(size = [
            50,
            250,
            40]);
    }   
}
