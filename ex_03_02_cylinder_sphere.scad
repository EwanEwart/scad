// Chapter Two

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_2

// Challendge 

/*


Exercise
========
Try making the wheels of your car ---spherical---. 

To do so 
replace the appropriate cylinder commands 
with ---sphere--- commands. 

1.
Is there still a need 
to rotate the wheels around the X axis? 

2.
Is the wheel_width variable still required? 

3.
Is there any visible change to your model 
when you modify the value of wheelsTurn variable?
*/



// resolution settings
// $fa = 1;
// $fs = 0.4;


/* PARAMETERS */
/* PARAMETERS */
/* PARAMETERS */
wheelsTurn = [0,0,-30]; // z [degrees]

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

track = 40; // wheel distance/ axle length

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
    sphere(h = wheelWidth, r = wheelRadius, center = true);

// Front right wheel
translate([ -20, track/2, 0 ]) 
rotate([ 90, 0, 0 ]+wheelsTurn)
    sphere(h = wheelWidth, r = wheelRadius, center = true);

// wheelRadius = 10;

// Rear left wheel
translate([ 20, -track/2, 0 ]) rotate([ 90, 0, 0 ])
    sphere(h = wheelWidth, r = wheelRadius, center = true);

// Rear right wheel
translate([ 20, track/2, 0 ]) rotate([ 90, 0, 0 ])
    sphere(h = wheelWidth, r = wheelRadius, center = true);

// wheelRadius = 15;

// Front axle
translate([ -20, 0, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = track, r = axleRadius, center = true);

// Rear axle
translate([ 20, 0, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = track, r = axleRadius, center = true);

// wheelRadius = 20;
