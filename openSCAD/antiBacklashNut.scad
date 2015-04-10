///////////////////////////////////////////////////////////////////////////////////
// Parts for building a 3D Printer with aluminium extrusions an makerslide parts //
//                                                                               //
//  These are simple parts for using with FreeCAD (openscad module needed.       //
//  The parts are refined inside FreeCAD                                         //
//                                                                               //
//  (c) Holger Pasligh                                                           //
//  You can use this parts for your own purpose, as long you did not sell them   //
//                                                                               //
///////////////////////////////////////////////////////////////////////////////////


// Anti Backlash-Nut
// non printed parts: 2 nuts M8 an a spring with at least 8mm inner diameter


//vars
sw = 13;
hn = 6.8;
ds = 11.5;


//output
bottom();
//nut(2);

module bottom(){
difference(){
 //body
	translate([-80/2,-30/2,0])	cube([80,30,10]);
	translate([-45/2,-35/2-1,-1])cube([45,9,12]);
	translate([-45/2,35/2-8,-1])cube([45,9,12]);
 //hole for leadscrew and spring
	translate([-100/2,0,10])rotate([0,90,0])cylinder(r=ds/2, h=100, $fn=20);
 //space for nuts
	translate([-30,0,10])rotate([90,0,90])nut(6.9);
	translate([-20,0,10])rotate([90,0,90])nut(90);
 //mounting holes
	translate([65/2,20/2,-1])cylinder(r=2.5, h=20, $fn=20);
	translate([65/2,-20/2,-1])cylinder(r=2.5, h=20, $fn=20);
	translate([-65/2,20/2,-1])cylinder(r=2.5, h=20, $fn=20);
	translate([-65/2,-20/2,-1])cylinder(r=2.5, h=20, $fn=20);
}
}


module nut(length){
or = sw/sqrt(3);
translate([-or/2,-sw/2,0])union(){
	cube([or,sw,length]);
	translate([or, 0, 0])rotate([0,0,60])cube([or,sw,length]);
	translate([ 0, 0, 0])rotate([0,0,30])cube([sw,or,length]);
}
}


