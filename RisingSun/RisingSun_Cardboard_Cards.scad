
$fn=200;

THICK = 1;

// CARD_L = 91;
// CARD_W = 59;
// CARD_STACK = 36;

// BOX_W = CARD_W + (THICK * 2);
// BOX_L = CARD_L + (THICK * 2);
// BOX_H = CARD_STACK + (THICK * 2);



card_box(
    [0, 0, 0], 
    [127, 14, 50]);

card_box(
    [0, 15, 0], 
    [84, 17, 43]);

card_box(
    [0, 33, 0], 
    [27, 32, 35]);

card_box(
    [28, 33, 0], 
    [27, 32, 35]);

card_box(
    [56, 33, 0], 
    [27, 32, 35]);

card_box(
    [85, 15, 0], 
    [24, 43, 35]);


module card_box(position, box) {


    difference() {
        translate(position) {
            cube(size = [
                box.x + (THICK * 2),
                box.y + (THICK * 2), 
                box.z]);
        }

        translate([
            position.x + THICK,
            position.y + THICK,
            position.z + THICK]) {
            cube(size = box);
        }

        // translate([
        //     -10,
        //     BOX_L / 2,
        //     BOX_H]) {

        //     rotate([0, 90, 0]) {
        //         cylinder(
        //             h = 100,
        //             r = 20);
        //     }
        // }
    }
}

