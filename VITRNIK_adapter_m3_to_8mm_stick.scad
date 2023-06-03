
$fn=360;


module shape(){
linear_extrude(height = 12, center = true, convexity =10)
{

difference() {
    base_shape();
    
    circle(4.03);
    translate ([4,-2.75,0]) 
    square(5.5);}

}
}



module base_shape()
{
    hull(){
            circle (5); 
            translate ([19.5,0,0])
            circle(2);
    } 
}



translate ([0,0,6.5])
linear_extrude(height = 1, center = true, convexity =10)
{ base_shape();}


difference(){
    shape();
    translate ([25,0,0])
rotate([0,90,180])
cylinder(28,1.52,1.52);
}



