
H = 3;
R = 10.15;

linear_extrude(H)
  text("3",size=16,font="PartyBusiness",halign="center",valign="center");

difference() {
  cylinder(r=R, h=H, $fn=255);

  translate([0, 0, H - 1])
    cylinder(r=R-1, h=H, $fn=255);

  translate([0, 0, -1])
    cylinder(r=R-1, h=2, $fn=255);
}


