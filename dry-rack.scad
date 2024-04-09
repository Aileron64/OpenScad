


$fn=64;

SIZE_X = 160;
SIZE_Y = 160;

GAP = 5;

BORDER_W = 10;
BORDER_H = 20;

// for ( i = [0 : GAP : SIZE_X] ){
//     translate([i, 0, 0])
//         cube(size = [1, SIZE_Y, 2]);
// }

// for ( i = [0 : GAP : SIZE_Y] ){
//     translate([0, i, 0])
//         cube(size = [SIZE_X, 1, 2]);
// }

cube(size = [SIZE_X, SIZE_Y, 1]);

difference() {
  border();


    translate([-500, SIZE_Y / 2, 205]) 
        rotate([0, 90, 0]) 
            cylinder(h = 1000, r = 200);

    translate([SIZE_X - 20, 500, 10]) 
        rotate([90, 0, 0]) 
            cylinder(h = 1000, r = 2.5);

    translate([20, 500, 10]) 
        rotate([90, 0, 0]) 
            cylinder(h = 1000, r = 2.5);
}





module border() {
    translate([-BORDER_W, 0, 0])
        cube(size = [BORDER_W, SIZE_Y + BORDER_W, BORDER_H]);

    translate([SIZE_X, 0, 0])
        cube(size = [BORDER_W, SIZE_Y + BORDER_W, BORDER_H]);

    translate([0, SIZE_Y, 0])
        cube(size = [SIZE_X + BORDER_W, BORDER_W, BORDER_H]);

    translate([-BORDER_W, -BORDER_W, 0])
        cube(size = [SIZE_X + BORDER_W * 2, BORDER_W, BORDER_H]);
}