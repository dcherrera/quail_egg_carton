//egg();
//carton_single();
//carton_six();
//carton();
//stump();
//single_mold_bottom();
bottom_mold();
module egg(){ 
    sphere(17.5,$fn=8);
    }
    
module egg2(){ 
    sphere(18.5,$fn=8);
    }
    
module carton_single(){
    difference(){

    rotate(22.5)egg2();
    rotate(22.5)egg();
    linear_extrude(17.1)square([31.6,31.6],center=true);
    }
}
module carton_single_mold(){
    difference(){

    rotate(22.5)egg2();
    //rotate(22.5)egg();
    linear_extrude(17.1)square([31.6,31.6],center=true);
    }
}
module single_mold_bottom(){
  difference(){

      translate([0,0,-27.2])linear_extrude(27.1)square([31,31],center=true);
          carton_single_mold();
  }
}
module carton_six(){
    carton_single();
    translate([15.5,15.5,0])rotate(45)stump();
    translate([31,0,0])carton_single();
    translate([46.5,15.5,0])rotate(45)stump();
    translate([62,0,0])carton_single();
    translate([77.5,15.5,0])rotate(45)stump();
    translate([93,0,0])carton_single();
    translate([108.5,15.5,0])rotate(45)stump();
    translate([124,0,0])carton_single();
    translate([139.5,15.5,0])rotate(45)stump();
    translate([155,0,0])carton_single();
}
module carton_six_wo(){
    carton_single();
    translate([31,0,0])carton_single();
    translate([62,0,0])carton_single();
    translate([93,0,0])carton_single();
    translate([124,0,0])carton_single();
    translate([155,0,0])carton_single();
}
module carton_mold_six(){
    single_mold_bottom();
    translate([15.5,15.5,0])rotate(45)mold_stump();
    translate([31,0,0])single_mold_bottom();
    translate([46.5,15.5,0])rotate(45)mold_stump();
    translate([62,0,0])single_mold_bottom();
    translate([77.5,15.5,0])rotate(45)mold_stump();
    translate([93,0,0])single_mold_bottom();
    translate([108.5,15.5,0])rotate(45)mold_stump();
    translate([124,0,0])single_mold_bottom();
    translate([139.5,15.5,0])rotate(45)mold_stump();
    translate([155,0,0])single_mold_bottom();
}
module carton_mold_six_wo(){
    single_mold_bottom();
    translate([31,0,0])single_mold_bottom();
    translate([62,0,0])single_mold_bottom();
    translate([93,0,0])single_mold_bottom();
    translate([124,0,0])single_mold_bottom();
    translate([155,0,0])single_mold_bottom();
}
module carton(){
    carton_six();
    translate([0,31,0])carton_six();
    translate([0,62,0])carton_six();
    translate([0,93,0])carton_six();
    translate([0,124,0])carton_six_wo();
}
module stump(){
    difference(){
linear_extrude(14.5,scale=0.5)square([13.5,13.5],center=true);
linear_extrude(6,scale=0.5)square([10,10],center=true);
    }
}
module mold_stump(){
    difference(){
//linear_extrude(14.5,scale=0.5)square([13.5,13.5],center=true);
linear_extrude(10,scale=0.5)square([10,10],center=true);
    }
}
module bottom_mold(){
        carton_mold_six();
    translate([0,31,0])carton_mold_six();
    translate([0,62,0])carton_mold_six();
    translate([0,93,0])carton_mold_six();
    translate([0,124,0])carton_mold_six_wo();
    translate([-25,-16,-27.2])linear_extrude(44)square([10,160]);//side
    translate([170,-16,-27.2])linear_extrude(44)square([10,160]);//side
    translate([-25,-25,-27.2])linear_extrude(44)square([205,10]);//side
    translate([-25,139,-27.2])linear_extrude(44)square([205,10]);//side
}
