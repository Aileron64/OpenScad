
H = 5;
R = 10.15;

linear_extrude(H)
  text("8",size=16,font="Hobbinton brush",halign="center",valign="center");

difference() {
  cylinder(r=R, h=H, $fn=255);

  translate([0, 0, H - 1])
    cylinder(r=R-1, h=H, $fn=255);
  

  for ( i = [0 : 360 / 4 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, H])
          cube(size = [2, 20, 2], center = true);
  }
}


