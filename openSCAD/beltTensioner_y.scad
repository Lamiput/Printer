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


// belt tensioner for y-axis
// mounts on aluminum extrusion, adjustable
// additional parts: screws, nuts, washers and bearing 624

//vars
m_w = 10;
m_l = 65;
m_h = 13.5;
m_f = 20;

//output
translate([0,20,0])mounting();
idlerHolder();
translate([0,55,1.8])idler();
translate([0,55,5])washer_bearing();

//construction
module mounting(){
difference(){
translate([-m_l/2,0,0])cube([m_l,m_w,m_h]);
translate([m_l/2-m_f,-1,3])cube([m_f+1,m_w+2,m_h]);
translate([-m_l/2-1,-1,3])cube([m_f+1,m_w+2,m_h]);
translate([-2.5-5,-1,-3])cube([5,m_w+2,m_h]);
translate([2.5,-1,-3])cube([5,m_w+2,m_h]);
}
}

module idlerHolder(){
difference(){
union(){
translate([-14/2,0,0])cube([14,43,10]);
translate([-14/2,0,0])cube([14,55,1]);
translate([0,55,0])cylinder(r=7,h=1);
translate([0,55,0])cylinder(r=5,h=5);
}
translate([-7.5/2,5,-1])cube([7.5,3.5,12]);
translate([-6/2,13.5,-1])cube([6,20,12]);
translate([0,-10,5])rotate([-90,0,0])cylinder(r=2.5, h=30);
translate([0,38,4.5])cylinder(r=2.5, h=30);
translate([0,38,-1])cylinder(r=4, h=5);
translate([0,55,4.5])cylinder(r=2.5, h=30);
translate([0,55,-1])cylinder(r=4, h=5);
}
}

module idler(){
difference(){
union(){
cylinder(r=10,h=1);
cylinder(r=8.5,h=10);
translate([0,0,9])cylinder(r=10,h=1);
}
translate([0,0,-1])cylinder(r=6.5,h=10);
translate([0,0,1])cylinder(r=6,h=10);
}
}

module washer_bearing(){
union(){
	translate([0,0,0.8])difference(){
		cylinder(r=6.5,h=5);
		translate([0,0,-1])cylinder(r=2,h=7);
	}
	difference(){
		cylinder(r=4.5,h=0.8);
		translate([0,0,-1])cylinder(r=2.15,h=2.8);
	}
}
}