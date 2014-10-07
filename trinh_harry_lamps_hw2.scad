

//model of vintage lamp hopefully have open tube in the middle to have cord goe through
//base
difference(){
union(){
intersection(){
translate(0,0,-1);
cylinder(h=30,r=20);
resize(newsize=[30,30,20])
sphere(r=20 ,center = false);
}//difference_ends

//base

//main shaft
//**textured shaft 
translate(0,0,20);
cylinder(h=40,r=4,$fn=15);
//textured shaft ends

//bottom_detail_groove



translate([0,0,10])
hull(){
resize(newsize=[10,10,3])
sphere(r= 10, center = true);

translate([0,0,2])
resize(newsize=[7,7,2])
sphere(r= 7,center = true);

}//end of hull

//end_bottom_detail_groove


//top_detail_shaft

translate([0,0,40])
hull(){
resize(newsize=[11,11,3])
sphere(r= 15, center = true);

translate([0,0,3])
resize(newsize=[7,7,2])
sphere(r= 8,center = true);

}//end of hull

//end_top_detail_shaft

//main_shaft

translate([0,0,40])
cylinder(h=30,r=3.5,$fn=75);


//main_shaft_end
}//end_union
translate([0,0,-2])
cylinder(h=80,r=2.8);
}//end_difference