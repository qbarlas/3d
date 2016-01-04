module keybase() {
    cube(size = [5, 5 ,0.5], center = false);
}
module character(c) {
    echo("key for char ", c);
    translate([.5,.5,.4]) {
        linear_extrude(height = 0.5) {
            text(c,size=3);
        }
    }
}
module keycap(c){
   difference() {
       keybase();
       character(c);
   } 
}
keycap("N");
