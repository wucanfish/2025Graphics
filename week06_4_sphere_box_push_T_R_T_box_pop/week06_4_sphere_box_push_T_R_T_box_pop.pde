//week06_4_sphere_box_push_T_R_T_box_pop
//組合出機器手臂
void setup(){
    size(500,400,P3D);
}
void draw(){
    background(255);
    translate(width/2,height/2);
    sphere(10);//STEP04 放圓球用來參考座標中心
    
    box(200,50,25);//STEP05手肘
    
    fill(252,131,77);
  pushMatrix();//STEP03
    translate(x,y);//STEP 06 發現放100,0 GOOD
    if(mousePressed) rotateZ(radians(frameCount));//STEP03
    translate(25,0,0);//STEP2往又推讓左端放中心
    box(50,25,50);//STEP01 小手腕
  popMatrix();//STEP03
}
float x=0,y=0;//STEP06 會動的位置
void mouseDragged(){//STEP06
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("X:"+x+"Y:"+y);//STEP07 印出來
}
