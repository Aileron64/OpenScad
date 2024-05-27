
// number of points on the star (3 or more makes sense)
_points = 16;
// length of ech point from center.  1/2 the rounding value will be added to the length
_point_len = 10;
// used to adjust width of each point +/-
_adjust = 1;
// point height at end of points (thinkness of objet at thinest part. Should be less than cent_h
_pnt_h = 1.1;
// height at center of star. set equal to pnt_h for flat object
_cent_h = 2.5;
// diameter of rounding at end of point (must be greater than 0).
_rnd=1;

// resolution for rounded point
_fn = 25;

H = 3;
R = 10.15;

translate([1.5, 0, H - 1.5])
  linear_extrude(1.5)
    text("3",size=15,font="Anironc",halign="center",valign="center");

difference() {
  cylinder(r=R, h=H, $fn=255);

  translate([0, 0, H - 1])
    cylinder(r=R-1.5, h=H, $fn=255);

  for ( i = [22.5 : 360 / 8 : 360] ){
    rotate([0, 0, i + 45])
      translate([0, 5, H])
          cube(size = [1, 20, 1.5], center = true);
  }

  // for ( i = [0 : 360 / 32 : 360] ) {
  //   rotate([0, 0, i + 45])
  //     translate([0, 10.5, 1])
  //       rotate([-15, 0, 0])
  //         cube(size = [2, 1, 4], center = true);
  // }

    for ( i = [0 : 360 / 32 : 360] ) {
    rotate([0, 0, i + 45])
      translate([0, 10.8, -1])
          cylinder(r=1, h=H + 2, $fn=255);
  }

  translate([0, 0, -1])
    rotate([0, 0, 22.5])
      star_3d(points = _points,
            point_len = _point_len,
            adjust = _adjust, 
            pnt_h = _pnt_h, 
            cent_h =_cent_h, 
            rnd = _rnd,
            fn = _fn);
}

  // for ( i = [0 : 360 / 16 : 360] ) {
  //   rotate([0, 0, i + 45])
  //     translate([0, 5, 0])
  //       rotate([-45, 0, 0])
  //         cube(size = [2, 1, 2], center = true);
  // }


// modules in library:
module star_3d(points, point_len, adjust=0, pnt_h =1, cent_h=1, rnd=0.1, fn=25)
{
    // star_3d: star with raised center.
    //----------------------------------------------//
    // points = num points on star (should be >3.  
    //          Using 3 may require addisional 
    //          adjust be applied.)
    // point_len = len of point on star 
    //              (actual len of point will add 
    //              1/2 rnd to the length.)
    // adjust = +/- adjust of width of point
    // pnt_h = height of star at end of point
    // cent_h = height of star in center needs to be > pnt_h to have effect.
    // rnd = roundness of end of point (diameter)
    // fn = $fn value for rounded point
    //----------------------------------------------//
    
    point_deg= 360/points;
    point_deg_adjusted = point_deg + (-point_deg/2) +  adjust;
    
    if(points == 3 && adjust == 0)
    {  // make a pyramid (this is to avoid rendering 
       //            issues in this special case)
        hull()
        {
           for(i=[0:2])
           {
               rotate([0,0,i*point_deg])
               translate([point_len,0,0])
                    cylinder(pnt_h, d=rnd, $fn=fn);
           }
           cylinder(cent_h, d=.001);
        }
    }
    else
    { // use algorithm
        for(i=[0:points-1])
        {
            rotate([0,0,i * point_deg]) 
                translate([0,-point_len,0]) 
                point(point_deg_adjusted, 
                      point_len, 
                      rnd, 
                      pnt_h, 
                      cent_h, 
                      fn);
        }
    }

}

module point(deg, leng, rnd, h1, h2, fn=25)
{   // create a point of the star.
    hull()
    {
        cylinder(h1, d=rnd, $fn=fn);
        translate([0,leng,0]) cylinder(h2, d=.001);
        rotate([0,0,-deg/2]) 
            translate([0,leng,0]) cylinder(h1, d=rnd);
        rotate([0,0,deg/2]) 
            translate([0,leng,0]) cylinder(h1, d=rnd);
    }
}