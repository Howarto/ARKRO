/*
translate([0,0,9])
cube(size=[40.5,40.5,5],center=true); //placa */

difference(){
//frame

  union(){
		color([0,0,1])
		translate([0,0,-3.5])
		union(){
			cube(size=[100,15,7],center=true);
			rotate([0,0,90])
			cube(size=[100,15,7],center=true);
		}

		translate([0,0,3.5])
		color([1,0,0])
		union(){
			cube(size=[100,15,7],center=true);
			rotate([0,0,90])
			cube(size=[100,15,7],center=true);

		}

		//Soporte frame
		color([1,0,0])
		translate([0,0,2])
		cylinder(r=40, h=5);

}

/*
//Agujeros para barras

	union(){
	translate([0,0,0])
	cube(size=[8,1000,8], center=true);
	rotate([0,0,90])
	translate([0,0,0])
	cube(size=[8,1000,8], center=true);
	}
*/
//Guías para barras
	translate([0,0,-17])
	color([0,1,0])	
	union(){

	translate([0,0,20])
	cube(size=[8, 400, 1.3], center=true);
	translate([-3.34,0,16.65])
	rotate([0,90,0])
	cube(size=[8, 400, 1.3], center=true);
	translate([3.34,0,16.65])
	rotate([0,90,0])
	cube(size=[8, 400, 1.3], center=true);

	}
