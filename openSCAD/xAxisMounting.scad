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


// X-Axis Mounting
// connects makerslide and universal plate small (myhobby-cnc.de)


//vars
l1 = 30;		//makerslide side
l2 = 25;		//universal plate side
h  = 40;		//heigth of part
wall = 2;	//wall thickness

sd = 5;		//diameter for screwholes
l_ms = 20;	//space between the mounting grooves makerslide
w_ms = (l1-wall)/2+wall; //mounting hole to edge makerslide side
l_up = 20;	//space between mounting holes universal plate small
w_up = 12.75;	//distance to mounting holes to edge universal plate


//construction
difference(){
translate([0,0,-h/2])cube([l1,l2,h]);
translate([wall,wall,-(h/2-wall)])cube([l1,l2,h-2*wall]);
translate([l1,l2,0])scale([l1-2*wall,l2-2*wall,1])cylinder(r=1, h=h+2, center = true, $fn=100);
translate([w_ms,0,l_ms/2])rotate([90,0,0])cylinder(r=sd/2, h=3*wall, center = true, $fn=20);
translate([w_ms,0,-l_ms/2])rotate([90,0,0])cylinder(r=sd/2, h=3*wall, center = true, $fn=20);
translate([0,w_up,l_up/2])rotate([0,90,0])cylinder(r=sd/2, h=3*wall, center = true, $fn=20);
translate([0,w_up,-l_up/2])rotate([0,90,0])cylinder(r=sd/2, h=3*wall, center = true, $fn=20);
}
