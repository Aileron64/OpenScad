
$fn=200;



rotate([90, 0, 0])
    import("C:/Users/AlexT/Desktop/3D Printing/nintendo-switch-dock-spring-system-internals-model_files/internals assembly - switch internals top.STL");

translate([12.5, -16.5, 27])
    springThing();

module springThing() {
    difference() {
        cube(size = [50.2, 12.2, 2]);

        translate([25.1, 6.1, 0])
        usbC();
    }
}

R = 1.3;
L = 3.13;

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
    bridgeBoard([49, 0, 0], [0, 0, 180]);
}

module usbHolder(pos) {
    translate(pos) {
        difference() {
            translate([0, -1, 0])
                cube(size = [49, 21, 9.4]);
                
            rotate([10, 0, 0]) 
            {
                cube(size = [49, 20, 60]);

                translate([17, -15, 2]) 
                    cube(size = [15, 24, 10]);
            }
        }

        rotate([10, 0, 0]) {
            difference() {
                cube(size = [49, 20, 6]);
            
                translate([8, 2, 2]) 
                    cube(size = [33, 14, 10]);

                translate([5, 6, 2]) 
                    cube(size = [39, 3, 10]);
            
                translate([17, -15, 2]) 
                    cube(size = [15, 24, 10]);
            }
        }
    }
}

module bridgeBoard(pos, rot) {
    translate(pos) {
        rotate(rot) {
            difference() {
                cube(size = [49, 40, 4]);

                translate([14, 7, 2]) {
                    difference() {
                        union() {
                            cube(size = [20.5, 20.5, 10]);

                            translate([14, 7, 0])
                                cube(size = [16.5, 26, 10]);

                            translate([3, -10, 0])
                                cube(size = [15, 24, 10]);
                        }

                        translate([28, 10, 0])
                            cylinder(h = 12, r = 0.7);
                        
                        translate([28, 20.5, 0])
                            cylinder(h = 12, r = 0.8);

                        translate([2, 17, 0])
                            cylinder(h = 12, r = 0.7);

                        translate([2, 7, 0])
                            cylinder(h = 12, r = 0.8);
                    }
                }  
            }
        }
    }
}