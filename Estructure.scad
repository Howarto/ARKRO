

//FRAME
difference(){
	union(){

		color([0,0,1])
		translate([0,0,-3.5])
		union(){
			cube(size=[100,15,7],center=true);
			rotate([0,0,90])
			cube(size=[100,15,7],center=true);
		}
/*
		//Soporte superior
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

*/
	}
	
	//AGUJEROS MÓDULOS
	
	//M1
	union(){

		translate([17.5, 17.5, 20])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
		translate([17.5, -17.5, 20])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		mirror([1,0,0]){
			translate([17.5, 17.5, 20])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
			translate([17.5, -17.5, 20])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
		}	

	}	

	//M2
	union(){

		translate([23, 23, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([-23, 23, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([23,- 23, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([-23,- 23, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		

	}



	//AGUJEROS SOPORTE BRAZOS

	union(){

		translate([45, 0, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
		translate([-45, 0, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		mirror([1,1,0]){
			translate([-45, 0, 0])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
			translate([45, 0, 0])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
		}	

	}
	/*
	//AGUJEROS PARA BARRAS
	union(){
		translate([0,0,0])
		cube(size=[8,1000,8], center=true);
		rotate([0,0,90])
		translate([0,0,0])
		cube(size=[8,1000,8], center=true);
	}

	*/
	//GUÍAS PARA BARRAS

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

	translate([0,0,-17])
	rotate([0,0,90])
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

}


//PAREDES DE DENTRO
union(){
	rotate([0,0,90])
	translate([6,0,-3.5])
	cube(size=[3.5,10,7], center=true);
	
	mirror([0,1,0]){
	rotate([0,0,90])
	translate([6,0,-3.5])
	cube(size=[3.5,10,7], center=true);
	}
	}

union(){
	rotate([0,0,0])
	translate([6,0,-3.5])
	cube(size=[3.5,10,7], center=true);
	
	mirror([1,0,0]){
	rotate([0,0,0])
	translate([6,0,-3.5])
	cube(size=[3.5,10,7], center=true);
	}
	}

//SOPORTE BATERÍAS

rotate([0,0,90])
translate([0,0,-9.5])
cube(size=[20,46.6,5], center=true);

//MODELO BATERÍA

color([1,0.5,0])
translate([0,0,-40])
cube(size=[135, 46.6,24], center=true);

//MODELO BRAZOS METÁLICOS

translate([0,132.5,0])
cube(size=[8,250,8], center=true);

//MODELO PLACA
difference(){
translate([0,0,20])
cube(size=[40.5,40.5,5],center=true); //placa 40,5x40,5

//Agujeros en la placa de muestra
	union(){

		translate([17.5, 17.5, 20])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
		translate([17.5, -17.5, 20])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		mirror([1,0,0]){
			translate([17.5, 17.5, 20])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
			translate([17.5, -17.5, 20])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
		}	

	}

}


	


