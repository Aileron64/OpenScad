
$fn=200;

THICK = 2;

LARGE_CARD_L = 132;
LARGE_CARD_W = 84;
LARGE_CARD_STACK = 15;

SMALL_CARD_L = 66;
SMALL_CARD_W = 43;
SMALL_CARD_STACK = 16;

STUMP = 2;
STUMP_MARGIN = 6;

BOX_W = LARGE_CARD_W + (THICK * 2);
BOX_L = LARGE_CARD_L + (THICK * 2);
BOX_H = LARGE_CARD_STACK + SMALL_CARD_STACK + THICK + STUMP;

SMALL_X = (BOX_W / 2) - (SMALL_CARD_L / 2);

translate([
    -1, 
    -1, 
    0]) {
        
    cube(size = [
        BOX_W + 2,
        BOX_L + 2, 
        1]);
}

difference() {
    cube(size = [
        BOX_W,
        BOX_L, 
        BOX_H]);

    translate([
        THICK, 
        THICK, 
        BOX_H - LARGE_CARD_STACK]) {
            
        cube(size = [
            LARGE_CARD_W,
            LARGE_CARD_L,
            LARGE_CARD_STACK + 1]);
    }

    translate([
        (BOX_W / 2),
        -1,
        22]) {

        rotate([270, 0, 0]) {
            cylinder(
                h = 1000,
                r = 20);
        }
    }

    translate([
        (BOX_W / 2) - 20, 
        -1, 
        22]) {
            
        cube(size = [
            40,
            150,
            80]);
    }
    
    smallBox(
        SMALL_X, 
        THICK + 1, 
        THICK);

    smallBox(
        SMALL_X, 
        (BOX_L / 2) - (SMALL_CARD_W / 2), 
        THICK);

    smallBox(
        SMALL_X, 
        BOX_L - SMALL_CARD_W - THICK - 1, 
        THICK);
}

smallStump(THICK + 1 + STUMP_MARGIN);
smallStump((BOX_L / 2) - (SMALL_CARD_W / 2) + STUMP_MARGIN);
smallStump(BOX_L - SMALL_CARD_W - THICK - 1 + STUMP_MARGIN);

// minkowski() {

// }

module smallStump(y) {
    translate([SMALL_X + STUMP_MARGIN, y, THICK]) {
        cube(size = [
            SMALL_CARD_L - (STUMP_MARGIN * 2),
            SMALL_CARD_W - (STUMP_MARGIN * 2),
            STUMP]);
    }
}

module smallBox(x, y, z) {
    translate([x, y, z]) {
        cube(size = [
            SMALL_CARD_L,
            SMALL_CARD_W,
            SMALL_CARD_STACK + 1 + STUMP]);
    }
}
