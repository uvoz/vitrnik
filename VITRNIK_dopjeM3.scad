$fn=360;

difference(){
cylinder(h = 4, r1 = 11/2, r2 = 11/2, center = true);
    translate([0,0,1])
cylinder(h = 3, r1 = 5.6/2, r2 = 5.55/2, center = true);
}