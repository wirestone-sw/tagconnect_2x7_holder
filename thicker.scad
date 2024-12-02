



module body(enlarge=3) {
     union() {
            intersection() {  
            translate([0,-enlarge/2,0]) {
                import("Jtag_Clip_Wide.stl", convexity=3);
            };
            translate([0,-30,0]) {
                cube(60, center=true);
            };
         };
         
         intersection() {  
            translate([0,enlarge/2,0]) {
                import("Jtag_Clip_Wide.stl", convexity=3);
            };
            translate([0,30,0]) {
                cube(60, center=true);
            };
        }
     }
 }

module face(thickness=1) {
    rotate([-90,0,0])
        linear_extrude(thickness) {
            projection(cut=true) {
                rotate([90,0,0])
                translate([0,5.5,0])
                import("Jtag_Clip_Wide.stl", convexity=3);
            }
        }
}

union(){
translate([0,-(7+2),0])
face(2);
translate([0,7,0])
face(2);
body(3);
}