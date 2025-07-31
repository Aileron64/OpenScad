

// 208 - 67


THICK = 1;
MARGIN = 0;

CROP_MARGIN = 3;

RAD = 18;
SLOT_SIZE = RAD * 2 + 10;

GAP = 30;

BOX_X = SLOT_SIZE * 3 + 17;
BOX_Y = 68;
BOX_Z = 38;

difference() {
    cube(size = [
        BOX_X,
        BOX_Y, 
        BOX_Z]);

    translate([
        THICK, 
        MARGIN + THICK, 
        THICK]) {
            
        cube(size = [
            BOX_X - (THICK * 2),
            BOX_Y - (MARGIN * 2) - (THICK * 2),
            BOX_Z]);
    }
}

// translate([0, 9, 0])
//     cube(size = [BOX_X, 5, 5]);

// translate([0, BOX_Y - 14, 0])
//     cube(size = [BOX_X, 5, 5]);

difference() {
    union() {
        translate([0, BOX_Y - 16, 1])
            cube(size = [SLOT_SIZE / 2, 9, 7]);

        translate([0, BOX_Y - 10, 1])
            cube(size = [SLOT_SIZE / 2, 9, BOX_Z / 2]);

        translate([BOX_X - (SLOT_SIZE / 2) - 1, 1, 1])
            cube(size = [SLOT_SIZE / 2, 9, BOX_Z / 2]);

        translate([BOX_X - (SLOT_SIZE / 2) - 1, 9, 1])
            cube(size = [SLOT_SIZE / 2, 7, 7]);

        for (i = [0 : 1 : 2]){
            slot((i * SLOT_SIZE) - CROP_MARGIN, 1, 0);
        }

        for (i = [0 : 1 : 2]){
            slot((i * SLOT_SIZE) + (SLOT_SIZE * 1.5) - CROP_MARGIN, BOX_Y - 1, 180);
        }
    }

    translate([-500, 0, 0])
        cube(size = [1000, 1000, 1000], center = true);

    translate([BOX_X + 500, 0, 0])
        cube(size = [1000, 1000, 1000], center = true);
}

module slot(x, y, rot) {
    translate([x, y, THICK])
    rotate([0, 0, rot]) {
        
        difference() {
            cube(size = [SLOT_SIZE, 9, BOX_Z / 2]);

            translate([SLOT_SIZE / 2, 9, RAD + 1])
            rotate([90, 0, 0])
                cylinder(h = 30, r = RAD, $fn=255);

            translate([SLOT_SIZE / 2, 1, RAD + 1])
            rotate([90, 0, 0])
                cylinder(h = 2, r = RAD + 1, $fn=255);
        }

        // translate([(SLOT_SIZE / 2) + 2.85, 10.5, 0])
        //     cylinder(h = BOX_Z - 10, r = 2, $fn=255);

        // translate([(SLOT_SIZE / 2) - 2.85, 10.5, 0])
        //     cylinder(h = BOX_Z - 10, r = 2, $fn=255);


        translate([(SLOT_SIZE / 2) - 5.37, 15, 28])
        rotate([90, 0, 0])
                cylinder(h = 6, r = 2.87, $fn=255); 


        translate([(SLOT_SIZE / 2) + 5.37, 15, 28])
        rotate([90, 0, 0])
                cylinder(h = 6, r = 2.87, $fn=255); 

        difference() {
            union() {
                translate([SLOT_SIZE / 2, 12, 9.5])
                    cube(size = [SLOT_SIZE, 6, BOX_Z / 2], center = true);

                translate([SLOT_SIZE / 2, 12, 23])
                    cube(size = [16.5, 6, 10], center = true);
            }

            translate([SLOT_SIZE / 2, 16, 19])
            rotate([90, 0, 0])
                    cylinder(h = 15, r = 2.5, $fn=255);

            translate([SLOT_SIZE / 2, 12, 38])
                    cube(size = [5, 7, BOX_Z], center = true);

            translate([0, 16, 22])
            rotate([90, 0, 0])
                    cylinder(h = 15, r = 15, $fn=255); 

            translate([SLOT_SIZE, 16, 22])
            rotate([90, 0, 0])
                    cylinder(h = 15, r = 15, $fn=255); 
        }



    }
}
