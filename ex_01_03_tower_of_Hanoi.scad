// Chapter One

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_1

// Exercise 
// Creating a second model
// Tower of Hanoi w/o middle pole

$fa = 1;
$fs = 0.4;


//$fa = 1;
//$fs = 0.4;
//s1 = [1,1,1];
//s1 = [1.2,1.2,1.2];
s1 = [1,1.2,1.2];

// named parameters
//cylinder(h=2,r=4);
//cylinder(h=4,r=2);

translate([0,0,0]) 
scale(s1)  
cylinder(r=16,h=4);

translate([0,0,4])
scale(s1) 
cylinder(r=12,h=4);

translate([0,0,8])
scale(s1) 
cylinder(r=8,h=4);

translate([0,0,12])
scale(s1) 
cylinder(r=4,h=4);

