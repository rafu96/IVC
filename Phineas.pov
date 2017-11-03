#include "colors.inc"
#include "shapes.inc" 
    

#declare c = <0,0,0>;       // Pie izquierdo
#declare proportion = 1;    // Proporci�n



camera{
    location <0,14,-5>
    look_at <-0.5,11,0.2>
}

light_source{
    <50,50,-50>
    color White
}


background{ Orange }









// Head
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone2( <0,0,0>, 1    , <0,2,0>,  0.1, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>*proportion  rotate<60,0,0> translate c+<-1,10,0>
       } // ----------------------------------------------------------- end Round_Cone
       
// Nose       
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone2( <0,0,0>, 1    , <0,2,0>,  0.05, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>*proportion  rotate<-60,0,0> translate c+<-1,10,0>
       } // ----------------------------------------------------------- end Round_Cone

// Neck       
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone2( <0,0,0>, 0.95    , <0,2,0>,  0.1, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>*proportion  rotate<0,0,180> translate c+<-1,9.9,0>
       } // ----------------------------------------------------------- end Round_Cone
       
       

// Left eye
sphere{
    c+<-0.5,10.9,0.2>
    0.5*proportion
    pigment { White }
}

sphere{
    c+<-0.4,11.1,-0.1>
    0.2*proportion
    pigment { Black }
}   
     
// Right eye       
sphere{
    c+<-1.5,10.9,0.2>
    0.5*proportion
    pigment { White }
}

sphere{
    c+<-1.6,11.1,-0.1>
    0.2*proportion
    pigment { Black }
}