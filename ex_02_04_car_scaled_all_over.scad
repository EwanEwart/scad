// Chapter Two

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_2

/* Quick quiz
The following script is the model
you created in the first chapter.

Exercise
========

Try rotating the front wheels
by -20 degrees around the Z axis,
as if the car was making a right turn.

In order to make your model more convincing,
try rotating the body of the car (base and top)
by 5 degrees around the X axis
in the opposite direction of the turn.

To turn the wheels,
modify the input parameters
of existing rotate commands,
to turn the body add a new rotate command.

Exercise
========
Try changing the radius of the wheels to 10 units. 

How easily did you find, 
which values to modify? 
- Parameterised !

Did you have to do the same thing four times?
- No.

Note:
If you reassign a different value to wheelRadius 
several times in the script
it is the last assignment 
that will be used all over the script !!!

Exercise
========
Try modifying 
the height of the car’s body base and top 
by defining a baseHeight and a topHeight variable 
and making the appropriate changes 
to the corresponding statements 
that define the base and the top. 

Assign the value 5 to the baseHeight variable 
and the value 8 to the topHeight variable. What do you notice?


Exercise
========
Try parameterizing the translation 
of the body’s top along the Z axis 
using the baseHeight and topHeight variables 
to make it sit on top of the body’s base. 

Try assigning different values 
to the baseBeight and topHeight variables. 

Does the position of the body’s top remain correct?
Yes, it does.

You should remember 
that every time 
you parameterize some aspect of your model 
you should also parameterize 
additional dependent aspects 
to prevent your model from breaking apart.


Exercise
========
Try to parameterise the track 
(lateral distance of the wheels) 
using a new variable named track. 

Try assigning different values to the track variable. 

What do you notice? 
Does any other aspect of your model 
depend on the value of the track variable? 

Yes, front & rear axle

If yes, 
use the track variable 
to parameterize it 
so your model doesn’t break apart.

*/


// resolution settings
// $fa = 1;
// $fs = 0.4;


/* PARAMETERS */
/* PARAMETERS */
/* PARAMETERS */
// turnFrontWheels = [0,0,0]; // degrees
turnFrontWheels = [0,0,-20]; // degrees

// turnBody = [0,0,0];
turnBody = [5,0,0];

// wheel radius
wheelRadius = 7;
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
rotate([ 90, 0, 0 ]+turnFrontWheels)
    cylinder(h = 3, r = wheelRadius, center = true);

// Front right wheel
translate([ -20, track/2, 0 ]) 
rotate([ 90, 0, 0 ]+turnFrontWheels)
    cylinder(h = 3, r = wheelRadius, center = true);

// wheelRadius = 10;

// Rear left wheel
translate([ 20, -track/2, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = 3, r = wheelRadius, center = true);

// Rear right wheel
translate([ 20, track/2, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = 3, r = wheelRadius, center = true);

// wheelRadius = 15;

// Front axle
translate([ -20, 0, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = track, r = axleRadius, center = true);

// Rear axle
translate([ 20, 0, 0 ]) rotate([ 90, 0, 0 ])
    cylinder(h = track, r = axleRadius, center = true);

// wheelRadius = 20;
