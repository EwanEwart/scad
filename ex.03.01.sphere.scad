// Chapter Three

// https://openscad.org/documentation.html#tutorial
// https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_3

// OpenSCAD Tutorial/Chapter 3

/*
The sphere primitive and resizing objects
You showed the car to your friends 
and they were quite impressed with your new skills. 

One of them even challenged you 
to come up with different futuristic wheel designs. 

It’s time to put your creativity to work 
and learn more OpenSCAD features!

So far you have been using 
the 
- cube and 
- cylinder primitives. 

Another 3D primitive 
that is available in OpenSCAD is the 

- sphere. 

You can create a sphere using the following command.

*/


// resolution settings
$fa = 1;
$fs = 0.4;


cube([5,1,10]);
cylinder(h=5,r=2);
sphere(r=3);

/*
You should notice 
that the sphere is created 
centred on the origin. 

The input parameter r 
corresponds to the radius of the sphere

One idea that might have crossed your mind
could have been 
to replace the cylindrical wheels 
with spheres ...

*/