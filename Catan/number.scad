
H = 5;
R = 10.15;

// linear_extrude(H)
//   translate([0, 0, 0 ])
//     text("9",size=14,font="Hobbiton Brushhand",halign="center",valign="center");

difference() {
  cylinder(r=R, h=H, $fn=255);

  translate([0, 0, H - 1])
    cylinder(r=R-1, h=H, $fn=255);
  

  for ( i = [0 : 360 / 2 : 360] ){
    rotate([0, 0, i])
      translate([0, 5, H])
          cube(size = [2, 20, 2], center = true);
  }
}


