$fn=24;
translate([-5,0,0])
difference(){
	union(){
		cylinder(d1 = 3, d2 = 3, h = 3);
		cylinder(d1 = 5, d2 = 5, h = 2);
	}
	cylinder(d1=1, d2=1, h=3);
}

translate([5,0,1])
rotate([0,180,0])
union(){
	difference(){
		cylinder(d1 = 10, d2 = 10, h = 1);
		// just for seeing where to glue the 2 parts together
		translate([0, 0, .9]) cylinder(d1 = 5, d2 = 5, h = .1);
	}
	translate([0, 0, .9]) cylinder(d1 = 1, d2 = 1, h = .1);
	translate([3, 0, -5]) cylinder(d1 = 2, d2 = 2, h = 5);
	
}