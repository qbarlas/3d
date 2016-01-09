//can't have a 3D printer without printing at least one of these !

$fn=32;
rotate([88.5,0,0])
scale(.7)
{
translate([0,5,-12])
union(){
	hull(){
		translate([-3,5,0])
			union(){
				sphere(5);
				translate([6,0,0]) sphere(5);
			}

		translate([0,0,3]) sphere(5);
	}
	translate([0,0,2])
		cylinder(h=20,r1=4.9,r2=5.5);

	translate([0,0,22])
		cylinder(h=1,r2=4.9,r1=5.5);

	hull(){

	translate([0,0,20])
		cylinder(h=5,r1=4,r2=4);
	translate([0,0,26])
		sphere(5.5);
	}
}
}