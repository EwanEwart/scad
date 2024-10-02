// Chapter One

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_1


$fa = 1;
$fs = 0.4;

cube([60,20,10],center=true);
translate([0,0,10-0.001]) cube([30,20,10], center=true);
