
difference(){
	cube([16,130,15]);
	translate([8,120,0]) cylinder(r1=4.2, r2=4.2, h= 16);
}
translate([16,-30,0]) cube([12,30,15]);
translate([-12,-30,0]) cube([12,30,15]);
translate([8,0,0]) 
	linear_extrude(height=15)
		polygon(points=[[-20,0],[0,36],[20,0]],path=[0,1,2]);

translate([16,0,15])
rotate([0,-90,0])
linear_extrude(height=16)
		polygon(points=[[0,0],[0,22],[16,0]],path=[0,1,2]);
