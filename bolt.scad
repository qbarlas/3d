module bolt(diam=4,height=2,border=3,center=true,$fn=24) {
	dX = center ? 0 : (diam+border) / 2;
	dY = center ? 0 : (diam+border) / 2;
	dZ = center ? -height/2 : 0;
		
	translate([dX,dY,dZ])
		linear_extrude(height)
			difference(){
				circle((diam+border)/2, $fn=6);
				circle((diam)/2);
			}
}

module bolt_hole(diam=4,height=2,border=3,center=true,$fn=24){

	dX = center ? 0 : (diam+border) / 2;
	dY = center ? 0 : (diam+border) / 2;
	dZ = center ? (height/4) : 0;
	
	width = diam+(2*border);

	translate([dX,dY,dZ])
		difference(){
			translate([0,0,-height])
				cylinder(h=(1.5*height),d1=width,d2=width,$fn=6);
			translate([0,0,-height])
				cylinder(h=(1.5*height),d1=diam,d2=diam);
			bolt(diam,height,border,center=true);
			
		}
	
}

//bolt_hole();