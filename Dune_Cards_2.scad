
$fn=200;

THICK = 2;

CARD_L = 110;
CARD_W = 68;
CARD_STACK = 82;

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

    gap();
}

boxSlice(SMALL_DECK_STACK);
boxSlice(SMALL_DECK_STACK * 2);
boxSlice(SMALL_DECK_STACK * 3);
boxSlice(SMALL_DECK_STACK * 4);
boxSlice(SMALL_DECK_STACK * 5);
boxSlice(SMALL_DECK_STACK * 6);

boxSlice(75);
boxSlice(90);

module boxSlice(y) {
    difference() {
        translate([THICK, y + 1, THICK]) {
            cube(size = [
                BOX_W - THICK * 2,
                1,
                70]);
        }
        
        gap();
    }
}

module gap() {
    translate([
        BOX_W / 2,
        490,
        60]) {

        rotate([90, 90, 0]) {
            cylinder(
                h = 1000,
                r = 20);
        }
    }

    translate([
        (BOX_L / 2) - 41, 
        -1, 
        60]) {
            
        cube(size = [
            40,
            150,
            80]);
    }   
}
