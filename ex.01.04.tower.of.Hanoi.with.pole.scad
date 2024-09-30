// Chapter One

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_1

// Exercise 
// Creating a second model
// Tower of Hanoi with middle pole

$fa = 1;
$fs = 0.4;

// named parameters
//cylinder(h=2,r=4);
//cylinder(h=4,r=2);

// botton slice
translate([0,0,0])
cylinder(r=20,h=4);
// second slice
translate([0,0,4])
cylinder(r=16,h=4);
// third slice
translate([0,0,8])
cylinder(r=12,h=4);
// fourth slice
translate([0,0,12])
cylinder(r=8,h=4);
// pole through all of the slices
//translate([0,0,12])
cylinder(r=4,h=28);

