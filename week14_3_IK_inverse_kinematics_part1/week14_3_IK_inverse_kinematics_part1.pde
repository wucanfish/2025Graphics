//week14_3_IK_inverse_kinematics_part1
void setup(){
 size(400,400); 
}
float [] angle =new float[5];
void draw(){
   background(255);
   translate(200,350);
   ellipse(0,0,12,12);//(0,0) 放元
   
   pushMatrix();
     rotate(radians(angle[0]));//2D對Z軸轉
     rect(0,-5,50,10);
   popMatrix();
}
void mouseDragged(){
   angle[0]+=mouseX-pmouseX; 
}
