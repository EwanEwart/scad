// Chapter One

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_1

// Ewan Ewart 2021.11.05
//
// transformation rotate

$fa = 1;
$fs = 0.4;

rotate(-180) cube([60,20,10],center=true);
// trasformation translate
translate([5,0,10]) rotate(-90) cube([30,20,10],center=true);
square([30,60],center=true);