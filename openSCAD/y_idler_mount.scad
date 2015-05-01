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


// idler mount for y-axis
// mounts on makerslide, adjustable by sliding on extrusion

//vars
d_fastener = 4.5;
d_idlerscrew = 5.5;
x_slide = 20;

//output
y_idler_bottom();

//y_idler_top();

//construction

module y_idler_bottom(){
difference(){
	union(){
		translate([0,0,-4])y_idler_base();
		translate([25,55,0])y_idler_mid();
	}
	translate([0,0,10])cube([40,110,40]);
}
}


module y_idler_top(){
difference(){
	union(){
		translate([0,0,0])y_idler_base();
		translate([25,55,-40])y_idler_mid();
	}
	translate([0,0,-70])cube([40,110,40]);
	translate([0,35,0])cube([40,40,10]);
	translate([20,30,0])cube([10,50,10]);
	translate([25,55-25,-10])cylinder(d=10, h=15);
	translate([25,55+25,-10])cylinder(d=10, h=15);
}
}

module y_idler_base(){
difference(){
	union(){
		translate([0,0,0])cylinder(r=7.5, h=4);
		translate([22.5,5,0])cylinder(r=12.5, h=4);
		translate([22.5,105,0])cylinder(r=12.5, h=4);
		translate([-x_slide,110,0])cylinder(r=7.5, h=4);
		translate([0,-7.5,0])cube([22.5,15,4]);
		translate([10,5,0])cube([25,100,4]);
		translate([-x_slide,102.5,0])cube([x_slide+22.5,15,4]);
	}
	translate([25,55,-1])cylinder(d=d_idlerscrew, h=6);
	translate([25,55-25,-1])cylinder(d=d_fastener, h=6);
	translate([25,55+25,-1])cylinder(d=d_fastener, h=6);
	translate([0,0,-1])cylinder(d=d_fastener, h=6);
	translate([-x_slide,110,-1])cylinder(d=d_fastener, h=6);
	translate([0,110,-1])cylinder(d=d_fastener, h=6);
	translate([-x_slide,110-d_fastener/2,-1])cube([x_slide,d_fastener,6]);
}
}

module y_idler_mid(){
difference(){
	union(){
		translate([-10,-35,0])cylinder(r=5, h=40);
		translate([-10, 35,0])cylinder(r=5, h=40);
		translate([  5,-35,0])cylinder(r=5, h=40);
		translate([  5, 35,0])cylinder(r=5, h=40);
		translate([-15,-35,0])cube([25,70,40]);
		translate([-10,-40,0])cube([15,80,40]);
	}
	translate([0,0,-1])cylinder(d=d_idlerscrew, h=42);
	translate([0,25,-1])cylinder(d=d_fastener, h=30.8);
	translate([0,-25,-1])cylinder(d=d_fastener, h=30.8);
	translate([-4.5,27.5,16.5])cube([4,15,7]);
	translate([-16,32.5,20])rotate([0,90,0])cylinder(d=d_fastener, h=27);
}
}