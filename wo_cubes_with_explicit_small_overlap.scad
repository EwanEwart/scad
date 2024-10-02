// (width,depth,height)
// a small overlap 
// of about 0.001 - 0.002
cube([60,20,10],center=true);
translate([0, 0, 10-0.001])
    cube([30,20,10],center=true);
