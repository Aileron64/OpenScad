
$fn=200;

CORE_LENGTH = 87;

// rotate([90, 0, 0])
//     import("C:/Users/AlexT/Desktop/3D Printing/nintendo-switch-dock-spring-system-internals-model_files/internals assembly - switch internals top.STL");

// translate([12.5, -6.5, 27])
//     springThing();

bottom();

module springThing() {
    difference() {
        cube(size = [50.2, 12.2, 2]);

        translate([25.1, 6.1, 0])
        usbC();
    }

    translate([45.05, 6.1, 2])
        cylinder(h = 3, r1 = 2.4, r2 = 0.5, center=false);

    translate([5.1, 6.1, 2])
        cylinder(h = 3, r1 = 2.4, r2 = 0.5, center=false);
}

R = 1.35;
L = 3.18;

module usbC() {
    translate([-L, 0, -5])
        cylinder(h = 20, r = R);

    translate([-L, -R, -5])
        cube(size = [L * 2, R * 2, 20]);

    translate([L, 0, -5])
        cylinder(h = 20, r = R);
}

module bottom() {
    usbHolder([0, 0, 0]);
    bridgeBoard([CORE_LENGTH, 0, 0], [0, 0, 180]);
}

module usbHolder(pos) {
    translate(pos) {
        difference() {
            translate([0, -1, 0])
                cube(size = [CORE_LENGTH, 21, 9.4]);
                
            rotate([10, 0, 0]) 
            {
                cube(size = [CORE_LENGTH, 20, 60]);

                translate([36, -15, 2]) 
                    cube(size = [15, 24, 10]);
            }
        }

        rotate([10, 0, 0]) {
            difference() {
                cube(size = [CORE_LENGTH, 20, 6]);
            
                translate([27, 2, 2]) 
                    cube(size = [33, 14, 10]);

                translate([24, 6, 2]) 
                    cube(size = [39, 3, 10]);
            
                translate([36, -15, 2]) 
                    cube(size = [15, 24, 10]);
            }
        }
    }
}

module bridgeBoard(pos, rot) {
    translate(pos) {
        rotate(rot) {
            difference() {
                cube(size = [CORE_LENGTH, 42, 6]);

                translate([33, 7, 2]) {
                    difference() {
                        union() {
                            cube(size = [20.5, 20.5, 10]);

                            translate([14, 7, 0])
                                cube(size = [16.5, 36, 10]);

                            translate([3, -10, 0])
                                cube(size = [15, 24, 10]);
                        }

                        translate([27.5, 11, 0])
                            cylinder(h = 12, r = 0.7);
                        
                        translate([27.5, 20.5, 0])
                            cylinder(h = 12, r = 0.8);

                        translate([2.5, 16, 0])
                            cylinder(h = 12, r = 0.7);

                        translate([2.5, 7, 0])
                            cylinder(h = 12, r = 0.8);
                    }
                }  
            }
        }
    }
}