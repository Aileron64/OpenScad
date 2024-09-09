
$fn=200;

H = 5;
R = 16;
R_MARGIN = 1;

SMALL_R = 8;

CON_R = 10.7;

difference() {
    union() {
        cylinder(r=R + R_MARGIN, h=H, $fn=255);

        translate([0, 0, H])
            cylinder(h = 1, r1 = R + R_MARGIN, r2 = R, $fn=255);

        // translate([0, CON_R, 0]) {
        //     cylinder(r=SMALL_R + R_MARGIN, h=H, $fn=255);

        //     translate([0, 0, H])
        //         cylinder(h = 1, r1 = SMALL_R + R_MARGIN, r2 = SMALL_R, $fn=255);
        // }
    }

    translate([0, -R, 3])
        cylinder(r=6, h=H + 1, $fn=255);

    translate([0, 0, 1])
        cylinder(r=1.5, h=H + 1, $fn=255);

    translate([0, 0, 4])
        cylinder(r=3, h=H + 1, $fn=255);

    translate([0, 0, 4])
        difference() {
            cylinder(r=15.25, h=H, $fn=255);

            translate([-50, 0, -1])
                cube([100, 100, 100]);
        }

    // translate([0, 0, 5])
    //     color_block_3();

    translate([0, CON_R, H])
        difference() {
            cube([17.5, 12.5, 3], center=true);
        
            translate([0, 5.8, 0])
                cube([3, 1, 4], center=true);

            translate([0, -5.8, 0])
                cube([3, 1, 4], center=true);
        }

}

translate([0, 50, 0])
    color_ball(0.9);

module color_ball(x) {
    scale(x) {
        difference() {
            union() {
                cylinder(r=3, h=2, $fn=255);

                translate([0, 0, 2])
                    cylinder(h = 0.5, r1 = 3, r2 = 2.7, $fn=255);
            }

            translate([0, 0, 2.2])
                cylinder(r=2.4, h=2, $fn=255);
        }

        translate([0, 0, 3])
            sphere(2.3, $fn=255);
    }
}


module color_block() {
    difference() {
        cylinder(r=14, h=5, $fn=255);

        translate([0, 0, -1])
            cylinder(r=5, h=10, $fn=255);

        translate([-50, -98, -50])
            cube([100, 100, 100]);
    }
}

module color_block_2() {
    difference() {
        cylinder(r=14, h=5, $fn=255);

        translate([0, 0, -1])
            cylinder(r=5, h=10, $fn=255);

        translate([-50, -98, -50])
            cube([100, 100, 100]);

        cube([2, 100, 20], center=true);
    }
}

module color_block_3() {
    difference() {
        cylinder(r=14, h=5, $fn=255);

        translate([0, 0, -1])
            cylinder(r=5, h=10, $fn=255);

        translate([-50, -98, -50])
            cube([100, 100, 100]);


        rotate([0, 0, 30])
            cube([2, 100, 20], center=true);

        rotate([0, 0, -30])
            cube([2, 100, 20], center=true);
    }
}
