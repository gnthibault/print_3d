
difference() {
    scale (1.15) {
        import("./sphere-hollow-sphere1-thread-inner.stl", convexity = 5);
    }
    translate([-43.2,0,0]) {
        rotate([0,90,0]) {
            linear_extrude(height=13.5, scale=[2.2,2.2],slices=20, twist=0) {
                circle(r=6.5, $fn=6);
            }
        }
    }
}
/*translate([10,0,0]) {
    rotate([0,-90,0]) {
        cylinder(r=6, h=200, $fn=6);
    }
}*/