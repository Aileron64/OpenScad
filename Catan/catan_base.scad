
H = 5;
INNER_RADIUS = 30;

difference() {
  union() {
    cylinder(r=36.525, h=H, $fn=6);

    hex_edge(30);
    hex_edge(90);
    hex_edge(150);
    hex_edge(210);
    hex_edge(270);
    hex_edge(330);
  }
  
  translate([0, 0, H - 2])
    cylinder(r=INNER_RADIUS, h=H, $fn=6);

  corner(0);
  corner(60);
  corner(120);
  corner(180);
  corner(240);
  corner(300);

  magnet(30);
  magnet(90);
  magnet(150);
  magnet(210);
  magnet(270);
  magnet(330);
}


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
    translate([28.5, -5.5, 2]) {
      rotate([90, 355, 180]) {
        cylinder(h = 11, r = 2, $fn=50);

        translate([4, 0, 5.5])
          cube(size=[8, 4, 11], center = true);
      }
    }
  }
}