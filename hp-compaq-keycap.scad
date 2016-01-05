module keybase() {
	difference() {
    cube(size = [18, 18 ,3]);
		translate([1,1.5,0]) cube(size = [16, 15.5 ,1]);
		rotate([60,0,0]) cube([18,5,3]);
		translate([0,18,0])
			rotate([30,0,0]) cube([18,3,5]);
	}
}
module character(c) {
    translate([4,8,2.2]) {
        linear_extrude(height = 0.8) {
            text(c,size=6);
        }
    }
}

module hook(){
	color("blue")
		difference(){
			cube(size=[.85,2.5,1]);
			translate([0,1.25,0.4])
				rotate([0,90,0],$fn=12)
					cylinder(h=1,r1=.6,r2=.6);
		}
}
module thing(){
	color("blue")
		union(){
			cube(size=[.5,1,1]);
			translate([0,1,0]) cube(size=[1,1,1]);
		}
}

module hooks(){
	translate([6.5-.85,14,0]) hook();
	translate([18-6.5,14,0]) hook();
	translate([2,2,0])thing();
	translate([16,2,0]) mirror() thing();
}

module keycap(c){
   difference() {
       keybase();
       *character(c);
   }
	 hooks();
}
keycap("N");
