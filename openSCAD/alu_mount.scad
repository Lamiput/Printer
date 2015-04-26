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


//alu mounting part
// source myhobby-cnc.de

difference(){
translate([0,-17,0])cube([20,34,20]);
translate([3,-18,3])cube([20,36,20]);
translate([15,-10,-1])cylinder(d=5.5, h=5);
translate([15,10,-1])cylinder(d=5.5, h=5);
translate([-1,-10,10])rotate([0,90,0])cylinder(d=5.5, h=5);
translate([-1,10,10])rotate([0,90,0])cylinder(d=5.5, h=5);
}