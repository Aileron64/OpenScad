$fn=200;

THICK = 5;

BOX_W = 232;
BOX_L = 288; //320;
BOX_H = 5;

TILE_L = 7;

difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H]);

    translate([
        THICK, 
        THICK, 
        -10]) {
            
        cube(size = [
            BOX_W,
            BOX_L,
            100]);
    }
}
