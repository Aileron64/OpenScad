
H = 5;
R = 10.15;

translate([-4, 3, 0])
  linear_extrude(H)
    text("2",size=8,font="Ringbearer",halign="center",valign="center");

translate([-0.7, 0, 0])
  linear_extrude(H)
    text("/",size=12,font="PartyBusiness",halign="center",valign="center");

translate([1.5, -2.5, 0])
  linear_extrude(H)
    text("1",size=7,font="PartyBusiness",halign="center",valign="center");

translate([5.3, -2.2, 0])
  linear_extrude(H)
    text("2",size=8,font="Ringbearer",halign="center",valign="center");

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


