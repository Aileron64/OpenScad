
$fn=200;

CORE_LENGTH = 88;
SWITCH_LENGTH = 171;

// springThing();

// bottom();

// mainDock();

top();

MAIN_DOCK_X = -33.65;
MAIN_DOCK_Y = 2;
MAIN_DOCK_Z = 12;

module testCrop() {
    translate([-45, 0, 0]) 
        cube(size = [50, 150, 50]);

    translate([0, 30, 0]) 
        cube(size = [150, 150, 50]);

    translate([CORE_LENGTH + 11, 0, 0]) 
        cube(size = [50, 150, 50]);
}

module top() {
    difference() {
        translate([MAIN_DOCK_X, MAIN_DOCK_Y, MAIN_DOCK_Z]) 
            rotate([-10, 0, 0])
                mainDock();

        boardGap();
        //testCrop();
    }


    difference() {
        cube(size = [CORE_LENGTH + 16, 80, 13]);
        boardGap();
            
        translate([MAIN_DOCK_X, MAIN_DOCK_Y, MAIN_DOCK_Z]) 
            rotate([-10, 0, 0])
                mainDockGap();

        translate([7, 63, -1])
            cube(size = [CORE_LENGTH + 1, 43, 11]);

        translate([7, 21, -1]) {
            mirror([0, 1, 0]) {
                rotate([10, 0, 0]) {
                    cube(size = [CORE_LENGTH + 1, 50, 7]);
                }
            
                cube(size = [CORE_LENGTH + 1, 50, 7]);
            }
        }
        
        //testCrop();
    }
}

module boardGap() {
    translate([7, 21, -1]) {
        cube(size = [CORE_LENGTH + 1, 43, 7]);

        translate([5, 5, 5])
            cylinder(h = 8, r = 1.5);

        translate([5, 37.5, 5])
            cylinder(h = 8, r = 1.5);

        translate([CORE_LENGTH - 5, 5, 5])
            cylinder(h = 8, r = 1.5);

        translate([CORE_LENGTH - 5, 37.5, 5])
            cylinder(h = 8, r = 1.5);                
    }
}

module mainDock() {
    difference() {
        cube(size = [SWITCH_LENGTH, 25, 10]);
        mainDockGap();
    }

    translate([81.5, 2, 0]) {
        cube(size = [8, 6, 8]);
    
        translate([4, 0, 8])
            rotate([-90, 0, 0]) 
                cylinder(r=4, h=6);
    }
}

module mainDockGap() {
    translate([-1, 5, 1]) {
        cube(size = [SWITCH_LENGTH + 4, 15, 10]);
    }

    translate([-1, 3, 1]) 
        difference() {
            cube(size = [SWITCH_LENGTH + 4, 19, 10]);

            translate([11, 0, 0]) 
                cube(size = [10, 19, 10]);

            translate([SWITCH_LENGTH - 19, 0, 0]) 
                cube(size = [10, 19, 10]);
        }

    translate([55, 6, -5]) {
        cube(size = [61, 13, 100]);

        translate([0, 6.5, 0])
            cylinder(h = 20, r=6.5);

        translate([61, 6.5, 0])
            cylinder(h = 20, r=6.5);
    }
}

module springThing() {
    difference() {
        cube(size = [60.2, 12.2, 2.5]);

        translate([30.1, 6.1, 0])
            usbC();

        translate([30.1, 6.1, -58.2])
            scale(4)
                usbC();

        translate([25.6, 10, -5])
            cube(size = [9, 10, 10]);

        translate([0, 6.1, 0])
            cylinder(h = 10, r=3);

        translate([60.2, 6.1, 0])
            cylinder(h = 10, r=3);
    }

    translate([0, 6.1, -7.5])
        rotate([0, 0, 180])    
            spring();

    translate([60.2, 6.1, -7.5])
        spring();
        
    translate([50.05, 6.1, 2.5])
        cylinder(h = 2.5, r1 = 2, r2 = 0.5, center=false);

    translate([10.1, 6.1, 2.5])
        cylinder(h = 2.5, r1 = 2, r2 = 0.5, center=false);
}

module spring() {
    difference() {
        union() {
            cylinder(h = 10, r=6.1);

            translate([4, 0, 0])
                cylinder(h = 1, r=6.1);
        }
        
        translate([0, 0, -1.5])
            cylinder(h = 10, r=3);
    }
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
    bridgeBoard([CORE_LENGTH, -0.5, 0], [0, 0, 180]);
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

                translate([13.9, 7.5, 0])
                    rotate([0, 0, 180]) {
                        difference() {
                            union() {
                                cylinder(h = 15, r=7);

                                translate([4, 0, 0])
                                    cylinder(h = 15, r=7);

                                translate([-2, -4, 0])
                                    cylinder(h = 15, r=7);
                            }
                            
                            translate([0, 0, -2])
                                cylinder(h = 10, r=1);
                        }
                    }

                translate([74.1, 7.5, 0]) {
                    difference() {
                        union() {
                            cylinder(h = 15, r=7);

                            translate([4, 0, 0])
                                cylinder(h = 15, r=7);

                            translate([-2, 4, 0])
                                cylinder(h = 15, r=7);
                        }
                        
                        translate([0, 0, -2])
                            cylinder(h = 10, r=1);
                    }
                }
            }
        }
    }
}

module screw() {
    translate([0, 0, -1])
        cylinder(h = 5, r = 3);

    translate([0, 0, 4])
        cylinder(h = 8, r = 1.5);
}

module bridgeBoard(pos, rot) {
    translate(pos) {
        rotate(rot) {
            difference() {
                cube(size = [CORE_LENGTH, 43, 6]);

                translate([34, 7, 2]) {
                    difference() {
                        union() {
                            cube(size = [20.5, 20.5, 10]);

                            translate([14, 7, 0])
                                cube(size = [16.5, 28, 10]);

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

                translate([56.25, 50, 4.8]) 
                    rotate([90, 0, 0])
                        usbC();

                translate([5, 5, 0])
                    screw();

                translate([5, 37.5, 0])
                    screw();

                translate([CORE_LENGTH - 5, 5, 0])
                    screw();

                translate([CORE_LENGTH - 5, 37.5, 0])
                    screw();
            }
        }
    }
}