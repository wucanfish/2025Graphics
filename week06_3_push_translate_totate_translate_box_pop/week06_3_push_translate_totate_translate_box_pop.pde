//week06_3_push_translate_totate_translate_box_pop
//
void setup(){
   size(500,500,P3D);   
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//物件放到中心
  pushMatrix();
    translate(x,y);
    if(mousePressed && mouseButton==RIGHT){
      rotateZ(radians(frameCount));//要按下mouse才會轉
    }
    translate(-50,0,0);//把棒子往左移一半 
    box(100,30,30);
  popMatrix();
}
float x=0,y=0;
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
}
