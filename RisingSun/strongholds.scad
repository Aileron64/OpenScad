
$fn=200;

THICK = 1;

STUMP = 3;

BOX_W = 100;
BOX_L = 66;
BOX_H = 45;




difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H + THICK]);

    translate([
        THICK, 
        THICK, 
        THICK]) {
            
        cube(size = [
            BOX_W,
            BOX_L,
            BOX_H + 1]);
    }

    translate([
        BOX_W / 2,
        200,
        50]) {

        rotate([90, 0, 0]) {
            cylinder(
                h = 1000,
                r = 40);
        }
    }
    // translate([
    //     -1, 
    //     (BOX_L / 2) - 20, 
    //     20 + STUMP]) {
            
    //     cube(size = [
    //         150,
    //         40,
    //         80]);
    // }

}
