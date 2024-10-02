// Chapter Two

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_2

// Challendge 

/*

Exercise
========
Try using a wheelWidth variable 
to parameterise the width of the wheels, 

a wheelsTurn variable 
to parameterise the rotation of the front wheels 
around the Z axis 

and a bodyRoll or turnBody variable 
to parameterise the rotation of the body 
around the X axis. 

Experiment with assigning different values to 
wheelRadius, 
baseHeight, 
topHeight, 
track, 
wheelWidth, 
wheelsTurn and 
bodyRoll / turnBody 

to create a version of the car 
that you like.

By now it should be clear to you 
that parameterising your models 
unlocks the power of 
reusing, customising and iterating your designs 
as well as that of 
effortlessly exploring different possibilities.

*/



// resolution settings
// $fa = 1;
// $fs = 0.4;


/* PARAMETERS */
/* PARAMETERS */
/* PARAMETERS */
wheelsTurn = [0,0,-20]; // z [degrees]

// turnBody = [0,0,0];
turnBody = [-wheelsTurn.z/4,0,0]; // x [degrees]

// wheel radius
wheelRadius = 8;
// wheel width
wheelWidth = 7;
// axel radius
axleRadius = 2;

// baseHeight = 10;
// topHeight = 10;
baseHeight = 8;
topHeight = 14;

track = 35; // wheel distance

// Car body base
rotate(turnBody) {
    cube([ 60, 20, baseHeight ], center = true);

    // Car body top
    translate([ 5, 0, (baseHeight+topHeight)/2 - 0.001 ]) 
        cube([ 30, 20, topHeight ], center = true);
}

// Front left wheel
translate([ -20, -track/2, 0 ]) 
rotate([ 90, 0, 0 ]+wheelsTurn)
    cylinder(h = wheelWidth, r = wheelRadius, center = true);

// Front right wheel
translate([ -20, track/2, 0 ]) 
rotate([ 90, 0, 0 ]+wheelsTurn)
    cylinder(h = wheelWidth, r = wheelRadius, center = true);

// wheelRadius = 10;

// Rear left wheel
translate([ 20, -track/2, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = wheelWidth, r = wheelRadius, center = true);

// Rear right wheel
translate([ 20, track/2, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = wheelWidth, r = wheelRadius, center = true);

// wheelRadius = 15;

// Front axle
translate([ -20, 0, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = track, r = axleRadius, center = true);

// Rear axle
translate([ 20, 0, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = track, r = axleRadius, center = true);

// wheelRadius = 20;
