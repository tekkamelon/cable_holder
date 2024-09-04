// 変数の宣言
$fn = 75;

sphere_r = 15;

// 本体の半球部分
module hemisphere(){

	difference(){

		sphere(r = sphere_r);

		translate([-sphere_r, -sphere_r, -sphere_r]){

			cube([sphere_r*2, sphere_r*2, sphere_r], center = false);

		}

	}

}

// 空洞部分
module cavity(){

	translate([0, 0, 12.5]){

		cube([3, sphere_r*2, sphere_r], center = true);

	}

	translate([0, sphere_r, 5]){

		rotate([90, 0, 0]){

		cylinder(h = sphere_r*2, r = 2.5);

		}

	}

}

difference(){

	hemisphere();

	cavity();

}
