
H = 5;
INNER_RADIUS = 30;

magnet(30);
magnet(90);
magnet(150);
magnet(210);
magnet(270);
magnet(330);





module hex_edge(rot) {
    rotate([0, 0, rot]) 
      translate([INNER_RADIUS - 3, 0, H + 1])
        difference() {
          cube(size=[2, 30.5, 2], center = true);

          translate([0, 0, 0.9])
            cube(size=[3, 50, 2], center = true);

          rotate([0, 25, 0]) 
            translate([1, 0, 0.7])
              cube(size=[5, 50, 2], center = true);
        }
}

module corner(rot) {
  rotate([0, 0, rot]) 
    translate([36.525, 0, H - 1.5])
      cylinder(h = 3, r = 6.25, $fn=50);
}

module magnet(rot) {
  rotate([0, 0, rot]) {
    translate([21, 0, 2.45]) {

      rotate([90, 0, 90]) {
        translate([-7, 0, 0])
          cylinder(h = 9.7, r = 3, $fn=50);

        translate([7, 0, 0])
          cylinder(h = 9.7, r = 3, $fn=50);
      }
    }

    
  }
}