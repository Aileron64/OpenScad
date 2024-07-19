
H = 1.4;
R = 10.15;

translate([1, 0, H - 1])
  linear_extrude(1)
    text("1",size=15,font="Anironc",halign="center",valign="center");

difference() {
  cylinder(r=R, h=H, $fn=255);

  translate([0, 0, H - 1])
    cylinder(r=R-1.5, h=H, $fn=255);

  for ( i = [22.5 : 360 / 8 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, H])
          cube(size = [1, 20, 1.5], center = true);
  }

  for ( i = [0 : 360 / 32 : 360] ) {
    rotate([0, 0, i + 45])
      translate([0, 10.5, 0.2])
        rotate([-35, 0, 0])
          cube(size = [2, 1, 4], center = true);
  }

  //   for ( i = [0 : 360 / 32 : 360] ) {
  //   rotate([0, 0, i + 45])
  //     translate([0, 10.8, -1])
  //         cylinder(r=1, h=H + 2, $fn=255);
  // }

}

  // for ( i = [0 : 360 / 16 : 360] ) {
  //   rotate([0, 0, i + 45])
  //     translate([0, 5, 0])
  //       rotate([-45, 0, 0])
  //         cube(size = [2, 1, 2], center = true);
  // }

