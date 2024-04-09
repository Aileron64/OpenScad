
translate([0, 0, 0])
  cylinder(h = 3, r = 5.75, $fn=100);

difference() {
  translate([0, 0, 2])
    cylinder(h = 6, r = 9, $fn=100);


  for ( i = [0 : 10 : 360] ){
    rotate([0, 0, i])
      translate([-10.25, 0, 4])
        rotate([0, 35, 0]) 
          cube(size=[10, 50, 2], center = true);
  }
}



