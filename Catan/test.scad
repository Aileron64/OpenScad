

INNER_RADIUS = 29.567;


// scale([0.8, 0.8, 0.8]) 
//   import("C:/Users/AlexT/Desktop/3D Printing/CATAN/catan-style boardgame 2.0 (magnetic & multicolor) - 2525047/files/desert.stl");




difference() {
  cylinder(r=INNER_RADIUS, h=2.4, $fn=6);

  translate([7.2, 12, 1.92])
    cylinder(r=11.15, h=10, $fn=255); 

}


    

