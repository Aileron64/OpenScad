
$fn=200;

THICK = 1;

BOX_W = 74;
BOX_L = 119; //320;
BOX_H = 40;

TILE_L = 7;

difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H]);

    translate([
        THICK, 
        THICK, 
        THICK + 20]) {
            
        cube(size = [
            BOX_W,
            BOX_L,
            BOX_H - 20]);
    }

    for (i = [THICK : 8 : THICK + (8 * 14)] ) {
        tile_slot(i);
    }

    // tile_slot(2);
    // tile_slot(9);
}


module tile_slot(y) {
    translate([THICK, y, THICK])
        cube(size = [
            BOX_W,
            TILE_L, 
            BOX_H]);
}
