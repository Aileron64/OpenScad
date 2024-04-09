$fn=200;

length = 86;
width= 46;
height = 19;
radius = 10;

translate([10, 10, 0]){ 
    roundedBox(length, width, height, radius);
}
module roundedBox(length, width, height, radius)
{
    dRadius = 2*radius;

    //cube bottom right
    translate([width-dRadius,-radius,0]) {
        cube(size=[radius,radius,height+0.01]);
    }

    //cube top left
    translate([-radius,length-dRadius,0]) {
        cube(size=[radius,radius,height+0.01]);
    }

    //base rounded shape
    minkowski() {
        cube(size=[width-dRadius,length-dRadius, height]);
        cylinder(r=radius, h=0.01);
    }
  
    
  
}