
$fn=200;
THICK = 1;

TILE_L = 19;
TILE_COUNT = 6;

BOX_W = 64;
BOX_L = 17 + (TILE_L * 3);
BOX_H = 32;

difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H]);

    translate([33, -5, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 200, r = 33, $fn=6);

    // for (i = [THICK : TILE_L + 1 : THICK + ((TILE_L + 1) * (TILE_COUNT - 1))] ) {
    //     tile_slot(i);
    // }

    tile_slot(1);
    tile_slot(1 + TILE_L);

    tile_slot(6.5 + TILE_L);
    tile_slot(6.5 + (TILE_L * 2));

    tile_slot(12 + (TILE_L * 2));
    tile_slot(12 + (TILE_L * 3));
}

module tile_slot(y) {
    translate([33, y, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 5.5, r = 37, $fn=6);
}
