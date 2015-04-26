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


// motormount for x-axis
// mounts on makerslide

//construction
difference(){
	union(){
		translate([-22.5,10,0])motorplate();
		bracket();
		translate([-13,2,0])cube([17,12,15]);
		translate([0,10,0])cube([15,19,4]);
	}
	translate([15,29,-1])cylinder(r=15, h=4+2);
	translate([-13,0,15])rotate([-90,0,0])scale([13/8,1,1])cylinder(r=8,h=15);
}

//modules
module motorplate(){
difference(){
	union(){
		translate([-22.5,-22.5,0])cube([45,45,4]);
		cylinder(d=25, h=7);
	}
	translate([0,0,-1])cylinder(d=18, h=7+2);
	translate([ 15.5, 15.5,-1])cylinder(d=3.5, h=4+2);
	translate([ 15.5,-15.5,-1])cylinder(d=3.5, h=4+2);
	translate([-15.5, 15.5,-1])cylinder(d=3.5, h=4+2);
	translate([-15.5,-15.5,-1])cylinder(d=3.5, h=4+2);
}
}

module bracket(){
difference(){
	union(){
		translate([0,-14-3,0])cube([4,28+3,15]);
		translate([0,-14-3,0])cube([30+4,4+3,15]);
		translate([0, 10,0])cube([50+4,4,15]);
	}
	translate([16,-13,-1])cube([30,4,15+2]);
	translate([10,14+1,10])rotate([90,0,0])cylinder(d=4.5, h=28+3+2);
	translate([28,1-13,10])rotate([90,0,0])cylinder(d=4.5, h=4+2);
	translate([44,10-1,10])rotate([-90,0,0])cylinder(d=4.5, h=4+2);
}
}