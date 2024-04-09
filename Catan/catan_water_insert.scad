
$fn=200;
THICK = 1;

TILE_L = 7;
TILE_COUNT = 14;

BOX_W = 64;
BOX_L = (TILE_L + 1) * TILE_COUNT - 1;
BOX_H = 32;

difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H]);

    translate([33, -5, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 200, r = 33, $fn=6);

    for (i = [THICK : TILE_L + 1 : THICK + ((TILE_L + 1) * (TILE_COUNT - 1))] ) {
        tile_slot(i);
    }
}

module tile_slot(y) {
    translate([33, y, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 6.5, r = 37, $fn=6);
}
