//Seed of life windmill - VITRNIK
//Made by Bob Heida in Bystricka, Morava, CZ 
//(C)2023



height=10;
radius=39;
r = radius;
showcircles=true;
weight=.8;


BearingHeight=4.1;
BearingRadius=5.05;
BearingHoleRadius=4;
$fn=180;



difference()
{
    windmill();
   // magnetholes()   ;
    }






module windmill()
{
    linear_extrude(height = height, center = true, convexity = 10, twist = 15)
        {
             
                
            difference()
            {
            Seed();
                tinyhole();
             
               
            circle(r = BearingRadius*1.2);
            }
        }
    // cylinder(h=height, r=BearingRadius*2, center=true);
 
        
  lagerhuijys();
    }
   
       
  


module Seed()
{
//first we set the center of the universe
translate([0,0,0]) 
//And place the core
circle(r = 2);
placeCircle(radius);

for (i=[0:60:360]) {
      translate([((r-weight/2)*cos(i)),(r-weight/2)*sin(i),0])
      placeCircle(radius);  
    }     
}//end of seed module




module placeCircle(size)
{
if(showcircles==true) {
difference(){
circle(r = size);
circle(r = size-(weight));
}
}
}


module tinyhole()
{
     difference()
            {
          
            circle(r = 1);  
    }
}
module lagerhuijys()
{
    difference(){
cylinder(h=height, r=BearingRadius*1.2, center=true);
        cylinder(h=height, r=BearingHoleRadius, center=true);
//BearingHoleRadius=2;
 translate([0,0,(height/2)-BearingHeight])
lager();


 translate([0,0,(-height/2)])
lager();
}
}


module lager()
  translate([0,0,0]){
linear_extrude(height = BearingHeight)
{
  
    {
  
    circle(r = BearingRadius);
   }
}   

}


module magnetholes()
{
    difference()
    {
    


    for (i=[0:15:360]) {
      translate([((radius*2)*cos(i)),(radius*2)*sin(i),0])
        rotate([0,0,i+90])
      magnethole();  
    }   
}  
    
    }

module magnethole()
{
 
       translate ([0,0,2.5])
                 cube([10.05,5.05,45],true);
      
              
    
}
