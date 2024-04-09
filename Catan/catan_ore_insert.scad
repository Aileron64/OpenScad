
$fn=200;
THICK = 1;

TILE_L = 25;
TILE_COUNT = 6;

BOX_W = 64;
BOX_L = 95.5;
BOX_H = 32;

difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H]);

    translate([33, -5, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 200, r = 33, $fn=6);

    tile_slot(1);
    tile_slot(1 + TILE_L);

    tile_slot(33);
    tile_slot(33 + TILE_L);

    tile_slot(65);
    tile_slot(65 + TILE_L);
}

module tile_slot(y) {
    translate([33, y, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 6.5, r = 37, $fn=6);
}
