/* Created by Diego Lao Tebar, "Howarto" ==> www.rediok.blogspot.com */


//TAPA
/*
translate([0,0,12])
color([0.5,0.5,0.5])
difference(){
sphere(r=70, $fn=10, center=true);
translate([0,0,-140/2])
cube(size=[140,140,140], center=true);
}
*/

//FRAME
difference(){
	union(){

		//CRUZ INFERIOR
		color([0,0,1])
		translate([0,0,-3.5])
		union(){
			cube(size=[150,15,7],center=true);
			rotate([0,0,90])
			cube(size=[150,15,7],center=true);
		}

		//CRUZ SUPERIOR
		translate([0,0,3.5])
		color([1,0,0])
		union(){
			cube(size=[150,15,7],center=true);
			rotate([0,0,90])
			cube(size=[150,15,7],center=true);
		}

		//CÍRCULO FRAME SUPERIOR
		//Soporte frame
		color([1,0,0])
		translate([0,0,7+2.5])
		cylinder(r=70, h=5, center=true);


		//CÍRCULO FRAME INFERIOR
		color([1,0,0])
		translate([0,0,-7-2.5])
		cylinder(r=70, h=5, center=true);



	}

		//AGUJERO CENTRAL Y PARA QUITAR PESO
		translate([0,0,20-7])
		cylinder(r=38, h=40, center=true);
		translate([0,0,20-20])
		cylinder(r=20, h=40, center=true);


		/*/AGUJERO BATERIA
		translate([35,35,25])
		rotate([0,0,45])
		cube(size=[100,40,50], center=true);
		*/

	//AGUJEROS MÓDULOS

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

		translate([35, 35, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([-35, 35, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([35, -35, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		translate([-35, -35, 0])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);



	}

	//M3 AGUJEROS SOPORTE BATERÍA
	/*
	rotate([0,0,45])
	union(){

		translate([26, 0, 20])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);

		mirror([1,0,0]){
		translate([26, 0, 20])
		cylinder(r=3.5/2, h=100, $fn=100, center=true);
		}	

	}	
	*/

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


//PAREDES DE DENTRO O TOPE
/*
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
*/

//SOPORTE COLA
/*
color([1,0,0])
union(){

	translate([-70, -70, 4.5])
	rotate([0, 90, 45])
	cube(size=[5,40,80], center=true);
}
*/

//SOPORTE CÁMARA
/*
color([1,0,0])
union(){

	translate([60, 60, 4.5])
	rotate([0, 90, 45])
	cube(size=[5,40,50], center=true);
}
*/

//SOPORTE BATERÍA DEBAJO
/*
translate([0,0,-10-4.5])
rotate([0,0,45])
color([0,0.4,1])
cube(size=[80,40,5], center=true);
*/

//MODELO BATERÍA
/*
translate([0, 0, -12-11.9])
color([1,0.5,0])
rotate([0,0,45])
cube(size=[104, 34 ,24], center=true);
*/

//MODELO MOTOR
/*
union(){
	translate([0,220,30])
	color([1,0,1])
	cylinder(r=27.5/2, h=30, center=true);
	translate([0,-220,30])
	color([1,0,1])
	cylinder(r=27.5/2, h=30, center=true);
}

rotate([0,0,90])
union(){
	translate([0,220,30])
	color([1,0,1])
	cylinder(r=27.5/2, h=30, center=true);
	translate([0,-220,30])
	color([1,0,1])
	cylinder(r=27.5/2, h=30, center=true);
}
*/

//MODELO BRAZOS METÁLICOS

translate([0,163,0])
cube(size=[8,250,8], center=true);

translate([0,-163.5,0])
cube(size=[8,250,8], center=true);

rotate([0,0,90])
translate([0,163.5,0])
cube(size=[8,250,8], center=true);

rotate([0,0,90])
translate([0,-163.5,0])
cube(size=[8,250,8], center=true);


//MODELO PLACA
/*
translate([0,0,0])
color([0,1,1])
rotate([0,0,45])
union(){
	difference(){
		cube(size=[50,50,5],center=true); //placa 40,5x40,5

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
