 union() {
        intersection() {  
        translate([0,0-3,0]) {
            import("Jtag_Clip_Wide.stl", convexity=3);
        };
        translate([0,-30,0]) {
            cube(60, center=true);
        };
     };
     
     intersection() {  
        translate([0,0,0]) {
            import("Jtag_Clip_Wide.stl", convexity=3);
        };
        translate([0,30,0]) {
            cube(60, center=true);
        };
    }
 }