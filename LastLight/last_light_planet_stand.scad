
$fn=200;

H = 7;
R = 16.5;
R_MARGIN = 1;

SMALL_R = 8;

CON_R = 10.7;

difference() {
    union() {
        translate([0, 0, -2])
        cylinder(r=R + R_MARGIN, h=H, $fn=255);

        translate([0, 0, H - 2])
            cylinder(h = 1, r1 = R + R_MARGIN, r2 = R, $fn=255);
    }

    translate([0, -R, 2.5])
        cylinder(r=6, h=H + 1, $fn=255);

    translate([0, 0, -1.2])
        cylinder(r=1.6, h=H + 3, $fn=255);

    translate([0, 0, 3])
        cylinder(r=3.1, h=H + 1, $fn=255);

    translate([0, 0, 4])
        difference() {
            cylinder(r=15.75, h=H, $fn=255);

            translate([-50, 0, -1])
                cube([100, 100, 100]);
        }

    translate([0, CON_R, H - 2.2])
        difference() {
            union() {
                cube([17.5, 12.5, 5], center=true);

                translate([0, 4, 0])
                    cube([17.5, 12.5, 5], center=true);
            }
            
            translate([0, 5.8, 0])
                cube([3, 2, 5], center=true);

            translate([0, -5.8, 0])
                cube([3, 2, 5], center=true);
        }
}

color_1();

module color_1() {
    translate([12.2, 3.25, 0])
        color_ball(0.55);

    translate([-12.2, 3.25, 0])
        color_ball(0.55);
}

module color_2() {
    translate([13, 3.2, 0])
        color_ball(0.55);

    translate([11.5, 6.4, 0])
        color_ball(0.55);

    translate([-13, 3.2, 0])
        color_ball(0.55);

    translate([-11.5, 6.4, 0])
        color_ball(0.55);
}

module color_3() {
    translate([13, 2, 0])
        color_ball(0.55);

    translate([12.2, 5.25, 0])
        color_ball(0.55);

    translate([11, 8.4, 0])
        color_ball(0.55);

    translate([-13, 2, 0])
        color_ball(0.55);

    translate([-12.2, 5.25, 0])
        color_ball(0.55);

    translate([-11, 8.4, 0])
        color_ball(0.55);
}

module color_ball(x) {
    translate([0, 0, 4.7])
    scale(x) {
        // difference() {
        //     union() {
        //         cylinder(r=3, h=2, $fn=255);

        //         translate([0, 0, 2])
        //             cylinder(h = 0.5, r1 = 3, r2 = 2.7, $fn=255);
        //     }

        //     translate([0, 0, 2.2])
        //         cylinder(r=2.4, h=2, $fn=255);
        // }

        translate([0, 0, 3])
            sphere(2.8, $fn=25);
    }
}