
$fn=200;

THICK = 1;

STUMP = 3;

BOX_W = 101;
BOX_L = 67;
BOX_H = 36;

difference() {
    cube(size = [
        BOX_W + (THICK * 4),
        BOX_L + (THICK * 4), 
        BOX_H + THICK + 6]);


    translate([
        THICK,
        THICK, 
        BOX_H + THICK]) {
            
        cube(size = [
            BOX_W + (THICK * 2),
            BOX_L + (THICK * 2), 
            BOX_H + THICK + 80]);
    }

    translate([
        THICK * 2, 
        THICK * 2, 
        THICK]) {
            
        cube(size = [
            (BOX_W / 2) - THICK,
            BOX_L,
            BOX_H + 1]);
    }

    translate([
        BOX_W / 2 + THICK * 3, 
        THICK * 2, 
        THICK]) {
            
        cube(size = [
            (BOX_W / 2) - THICK,
            BOX_L,
            BOX_H + 1]);
    }
}
