difference() {
	union() {
		color([0, 0, 1])
			translate([0, 0, (-3.5)])
				union() {
					cube(size = [150, 15, 7], center = true);
					rotate([0, 0, 90])
						cube(size = [150, 15, 7], center = true);
				}
		translate([0, 0, 3.5])
			color([1, 0, 0])
				union() {
					cube(size = [150, 15, 7], center = true);
					rotate([0, 0, 90])
						cube(size = [150, 15, 7], center = true);
				}
		color([1, 0, 0])
			translate([0, 0, (7 + 2.5)])
				cylinder(r = 70, h = 5, center = true);
		color([1, 0, 0])
			translate([0, 0, ((-7) - 2.5)])
				cylinder(r = 70, h = 5, center = true);
	}
	translate([0, 0, (20 - 7)])
		cylinder(r = 38, h = 40, center = true);
	translate([0, 0, (20 - 20)])
		cylinder(r = 20, h = 40, center = true);
	rotate([0, 0, 45])
		union() {
			translate([17.5, 17.5, 20])
				cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
			translate([17.5, (-17.5), 20])
				cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
			mirror([1, 0, 0]) {
				translate([17.5, 17.5, 20])
					cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
				translate([17.5, (-17.5), 20])
					cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
			}
		}
	union() {
		translate([35, 35, 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		translate([(-35), 35, 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		translate([35, (-35), 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		translate([(-35), (-35), 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
	}
	union() {
		translate([45, 0, 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		translate([(-45), 0, 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		mirror([1, 1, 0]) {
			translate([(-45), 0, 0])
				cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
			translate([45, 0, 0])
				cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		}
	}
	union() {
		translate([65, 0, 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		translate([(-65), 0, 0])
			cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		mirror([1, 1, 0]) {
			translate([(-65), 0, 0])
				cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
			translate([65, 0, 0])
				cylinder(r = (3.5 / 2), h = 100, $fn = 100, center = true);
		}
	}
	translate([0, 0, (-17)])
		color([0, 1, 0])
			union() {
				translate([0, 0, 20])
					cube(size = [8, 400, 1.3], center = true);
				translate([(-3.34), 0, 16.65])
					rotate([0, 90, 0])
						cube(size = [8, 400, 1.3], center = true);
				translate([3.34, 0, 16.65])
					rotate([0, 90, 0])
						cube(size = [8, 400, 1.3], center = true);
			}
	translate([0, 0, (-17)])
		rotate([0, 0, 90])
			union() {
				translate([0, 0, 20])
					cube(size = [8, 400, 1.3], center = true);
				translate([(-3.34), 0, 16.65])
					rotate([0, 90, 0])
						cube(size = [8, 400, 1.3], center = true);
				translate([3.34, 0, 16.65])
					rotate([0, 90, 0])
						cube(size = [8, 400, 1.3], center = true);
			}
}
translate([0, 163, 0])
	cube(size = [8, 250, 8], center = true);
translate([0, (-163.5), 0])
	cube(size = [8, 250, 8], center = true);
rotate([0, 0, 90])
	translate([0, 163.5, 0])
		cube(size = [8, 250, 8], center = true);
rotate([0, 0, 90])
	translate([0, (-163.5), 0])
		cube(size = [8, 250, 8], center = true);
