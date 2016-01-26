$fn=12;
difference(){
union(){
translate([0,0,10]) cylinder(r1=4,r2=4,h=15,$fn=32);
cylinder(r1=48,r2=48,h=8,$fn=64);
translate([0,0,8])cylinder(r1=53,r2=53,h=2);
}

	hole();
	rotate([0,0,72])
		hole();
	rotate([0,0,2*72])
		hole();
	rotate([0,0,3*72])
		hole();
	rotate([0,0,4*72])
		hole();
}

module hole(){
	w=16;
	linear_extrude(h=16)
		translate([12,0,0])
			minkowski(){
				circle(r=3);
				polygon(points=[[0,0],[22,w],[22,-w]],path=[0,1,2]);
			}
}