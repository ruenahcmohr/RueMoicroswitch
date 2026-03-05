

 outline = "main.dxf";
 L0 = 7;
 L1 = 10;
 L2 = 10;
 L5 = 10;
 L6 = 20;
 
 L10 = 20;
 L11 = 3;
 
 L3 = 3;
 L4 = 3;

 
 L20 = 3;
 L21 = 80;
 L22 = 3;
 
 L30 = 100;
 L31 = 20;
 L40 = 8;
 L41 = 10;
 L50 = 2;
 L51 = 30;
 
 L60 = 110;
 L61 = 100;
 
 L70 = 40;

L100 = 11;

difference() {
union() {
   linear_extrude(height=L0, convexity=5) {
       import(file=outline, layer="0", $fn=190);
  } 
  
   translate([0,0,L0-0.005])
     linear_extrude(height=L1, convexity=5) {
       import(file=outline, layer="1", $fn=190);
  } 
  
     translate([0,0,L0-0.005])
     linear_extrude(height=L3, convexity=5) {
       import(file=outline, layer="3", $fn=190);
  } 
  }
  
  translate([0,8,11])
  rotate([90,0,0])   
     linear_extrude(height=L2, convexity=5) {
       import(file=outline, layer="2", $fn=190);
  } 
 }
 //--------------------------------------------------------------

/*
     //2x dovetail
     translate([-40.64,0,L10/2])
     rotate([0,0,0])    
     linear_extrude(height=L20, convexity=5) {
       import(file=outline, layer="20", $fn=188);
     }
 } // end of the union
 
     
     // 3x bolt
     color([1,0,0])
  translate([0,-0.005,50])
  rotate([-90,0,0]) {
     linear_extrude(height=L30, convexity=5) {
       import(file=outline, layer="30", $fn=188);
     }
     
     translate([0,0,L30-0.006])
     linear_extrude(height=L31, convexity=5) {
       import(file=outline, layer="31", $fn=188);
     }
 }
 
  // 4x side bolt
 color([0, 1, 0])
      translate([0,0,57.005])
      linear_extrude(height=L40, convexity=5) {
       import(file=outline, layer="40", $fn=188);
     }
 
     




  translate([0,0,L0+L1])
     linear_extrude(height=L2, convexity=5) {
       import(file=outline, layer="2", $fn=188);
     }




     translate([10, -0, 25/2])
     rotate([0,90,0])
     cylinder(h = 40, r =2.0, $fn=100, center=true);

}
*/
