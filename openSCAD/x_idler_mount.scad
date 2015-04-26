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


// idler mount for x-axis
// mounts on makerslide, adjustable by sliding on extrusion

//vars
d_fastener = 4.5;
d_idlerscrew = 5.5;


//output
x_idler_mount();
//mirror([0,0,-1])x_idler_mount();
//translate([0,0,48])mirror([0,0,1])x_idler_mount();

//construction
module x_idler_mount(){
difference(){
	union(){
		cylinder(d=10, h=18.5);
		translate([0,1,0])cube([62.5,10,4]);
		translate([-5,0,0])cube([10,11,4]);
		translate([62.5-6,3,0])cube([6,6,6]);
		translate([26.5,3,0])cube([22,6,6]);
		translate([12.5,3,0])cube([6,6,6]);
	}
	translate([0,0,-1])cylinder(d=d_idlerscrew, h=18.5+2);
	translate([52.5,6,-1])cylinder(d=d_fastener, h=4+2);
	translate([22.5,6,-1])cylinder(d=d_fastener, h=4+2);
}
}
