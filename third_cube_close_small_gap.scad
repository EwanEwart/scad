// (width,depth,height)
// a small overlap as a tolerance  
// of about 0.001 - 0.002 units
// using a third cube
/*
When two objects are exactly touching each other, you should always guarantee a small overlap by subtracting or adding a tolerance of 0.001 units. 
*/
cube([60,20,10],center=true);
translate([0, 0, 10])
    cube([30,20,10],center=true);
translate([0,0,10-0.002])
    cube([30,20,0.002],true);
