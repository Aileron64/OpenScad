

MAGNET_RAD = 31;

// difference() {
//   scale([0.8, 0.8, 0.8]) 
//     import("C:/Users/AlexT/Desktop/3D Printing/settlers catan style (magnetic) - 1238980/files/catan_main_landscape_wood1_newbase.stl");

//    translate([-50, -50, -7])
//     cube(size=[100, 100, 5]);
// }



difference() {
translate([0, 0, -7])
  cylinder(r=36.525, h=5, $fn=6);

  all_magnets();
}

// difference() {
//   scale([0.8, 0.8, 0.8]) 
//     import("C:/Users/AlexT/Desktop/3D Printing/Settlers of Catan 3D Board - 2416602/files/catan_wood2.stl");

//    translate([-50, -50, -7])
//     cube(size=[100, 100, 5]);
// }


module all_magnets() {
  magnet_row(0);
  magnet_row(60);
  magnet_row(120);
  magnet_row(180);
  magnet_row(240);
  magnet_row(300);
}


module magnet_row(rot) {
  rotate([0, 0, rot]) {
    magnet(0, MAGNET_RAD);
    magnet(10, MAGNET_RAD);
    magnet(-10, MAGNET_RAD);

    // magnet(4, MAGNET_RAD);
    // magnet(12, MAGNET_RAD);
    // magnet(-4, MAGNET_RAD);
    // magnet(-12, MAGNET_RAD);
  }
}

module magnet(x, y) {
  translate([x, y, -4.9]) {
    rotate([90, 0, 0]) {
      cylinder(h = 2.4, r = 2.1, $fn=50);
      
      translate([0, -1.2, 1.2]) 
        cube(size=[4.2, 2.4, 2.4], center = true);
    }
  }
}