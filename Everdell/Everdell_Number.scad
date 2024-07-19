
H = 3;
R = 10.15;

translate([1, -0.4, H - 1.5])
  linear_extrude(1.5)
    text("5",size=14,font="Anironc",halign="center",valign="center");

translate([-1, -0.4, 1.5])
  rotate([0, 180, 0])
    linear_extrude(1.5)
      text("5",size=14,font="Anironc",halign="center",valign="center");

difference() {
  rotate([0, 0, 0])
    cylinder(r=R, h=H, $fn=10);

  translate([0, 0, H - 1])
    cylinder(r=R-1.5, h=H, $fn=10);

  translate([0, 0, -1])
    cylinder(r=R-1.5, h=2, $fn=10);

  for ( i = [9 : 360 / 10 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, 0])
          cube(size = [1, 20, 1], center = true);
  }

  for ( i = [9 : 360 / 10 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, H])
          cube(size = [1, 20, 1], center = true);
  }

  translate([0, -10, 0])
    rotate([65, 0, 0])
      cube(size = [6, 1, 5], center = true);

  translate([0, -10, H])
    rotate([-65, 0, 0])
      cube(size = [6, 1, 5], center = true);

  translate([-3, -9.8, 2])
    rotate([25, 90, 0])
      cube(size = [6, 1, 5], center = true);

  translate([3, -9.8, 2])
    rotate([25, 270, 0])
      cube(size = [6, 1, 5], center = true);
}

