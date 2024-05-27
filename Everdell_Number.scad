
H = 3;
R = 10.15;

translate([1.5, 0, H - 1.5])
  linear_extrude(1.5)
    text("3",size=15,font="Anironc",halign="center",valign="center");

translate([-1.5, 0, 1.5])
  rotate([0, 180, 0])
    linear_extrude(1.5)
      text("3",size=15,font="Anironc",halign="center",valign="center");

difference() {
  rotate([0, 0, 11.25])
    cylinder(r=R, h=H, $fn=16);

  translate([0, 0, H - 1])
    cylinder(r=R-1.5, h=H, $fn=255);

  translate([0, 0, -1])
    cylinder(r=R-1.5, h=2, $fn=255);

  for ( i = [22.5 : 360 / 8 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, 0])
          cube(size = [1, 20, 1], center = true);
  }

  for ( i = [22.5 : 360 / 8 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, H])
          cube(size = [1, 20, 1], center = true);
  }

  // for ( i = [0 : 360 / 32 : 360] ) {
  //   rotate([0, 0, i + 45])
  //     translate([0, 10.8, -1])
  //         cylinder(r=1, h=H + 2, $fn=255);
  // }

}

// for ( i = [0 : 360 / 32 : 360] ) {
//   rotate([0, 0, i + 45])
//     translate([0, 7.8, 2.5])
//       rotate([-65, 0, 0])
//         cube(size = [2, 0.1, 2], center = true);
// }
