
difference() {
    scale (1.15) {
        import("./sphere-hollow-sphere1-thread-inner.stl", convexity = 5);
    }
    translate([10,0,0]) {
        rotate([0,-90,0]) {
            cylinder(r=6, h=200, $fn=6);
        }
    }
}