/* Created by Diego Lao Tebar, "Howarto" ==> www.rediok.blogspot.com */



scale([]){ //Código para variar el tamaño al gusto

//TAPA
/*
difference(){

sphere(r=70, $fn= 10);
translate([0,0,-45])
cube(size=[1000,1000,100], center=true);

}
*/

//FRAME
difference(){
	%union(){
		
	//SOPORTE INFERIOR
		color([0,0,1])
		translate([0,0,-3.5])
		union(){
			cube(size=[150,15,7],center=true);
			rotate([0,0,90])
			cube(size=[150,15,7],center=true);
		}

		//SOPORTE SUPERIOR
		translate([0,0,3.5])
		color([1,0,0])
		union(){
			cube(size=[150,15,7],center=true);
			rotate([0,0,90])
			cube(size=[150,15,7],center=true);

		}

		//Soporte frame
		color([1,0,0])
		translate([0,0,2])
		cylinder(r=70, h=5);

	}


	//AGUJEROS MÓDULOS

	//LIGEREZA



	//M1 PLACA
	
	rotate([0,0,45])
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

	//M2 EXTRA
	union(){

		translate([26, 26, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([-26, 26, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([26,- 26, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([-26,- 26, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		

	}



	//AGUJEROS SOPORTE BRAZOS

	union(){

		translate([40, 0, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
		translate([-40, 0, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		mirror([1,1,0]){
			translate([-40, 0, 0])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
			translate([40, 0, 0])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
		}	

	}
	union(){

		translate([65, 0, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
		translate([-65, 0, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
	
		mirror([1,1,0]){
			translate([-65, 0, 0])
			cylinder(r=3.5/2, h=100, $fn=100, center=true);
			translate([65, 0, 0])
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

//SOPORTE CÁMARA

union(){
	
	translate([60, 60, 4.5])
	rotate([0, 90, 45])
	cube(size=[5,40,50], center=true);
	cube();

}

//MODELO BATERÍA

color([1,0.5,0])
translate([0,0,-40])
cube(size=[104, 34 ,24], center=true);

//MODELO BRAZOS METÁLICOS

translate([0,132.5,0])
cube(size=[8,250,8], center=true);

translate([0,-132.5,0])
cube(size=[8,250,8], center=true);

rotate([0,0,90])
translate([0,132.5,0])
cube(size=[8,250,8], center=true);

rotate([0,0,90])
translate([0,-132.5,0])
cube(size=[8,250,8], center=true);


//MODELO PLACA
/*
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
*/

}
	