// Chapter Two

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_2

// The cylinder primitive and rotating objects

// resolution settings
$fa = 1;
$fs = 0.4;

wheel=8;//whell radius
axel=3;//axel radius

// car chassis
cube(
    [60,20,10],
    center=true
    );

translate([5,0,10-1E-3]) 
    cube(
        [30,20,10],
        center=true
        );

// front wheel left
translate([-15,-15,0]) 
rotate([90,0,0])
    cylinder(h=3,r=wheel,,center=true);
// front axel left
translate([-15,-10,0]) 
rotate([90,0,0])
    cylinder(h=7,r=axel,,center=true);
// front wheel right
translate([-15,15,0]) 
rotate([90,0,0])
    cylinder(h=3,r=wheel,center=true);
// front axel right
translate([-15,10,0]) 
rotate([90,0,0])
    cylinder(h=7,r=axel,,center=true);
// back wheel left
translate([25,-15,0]) 
rotate([90,0,0])
    cylinder(h=3,r=wheel,center=true);
// back axel left
translate([25,-10,0]) 
rotate([90,0,0])
    cylinder(h=7,r=axel,,center=true);
// back wheel right
translate([25,15,0]) 
rotate([90,0,0])
    cylinder(h=3,r=wheel,center=true);
// back axel right
translate([25,10,0]) 
rotate([90,0,0])
    cylinder(h=7,r=axel,,center=true);

