
H = 2;
R = 10.15;


cylinder(r=R, h=H, $fn=255);

translate([0, 0, H])
  cylinder(h = 1, r1 = R, r2 = 9.8, $fn=255);

