//week06_5_push_T_box_push_T_R_T_box_pop_pop
void setup(){
    size(500,400,P3D);
}
void draw(){
    background(255);
    translate(width/2,height/2);
    sphere(10);
    
    fill(252,131,77);
    pushMatrix();//STEP04新的一組
      translate(x,y);
      box(200,50,25);//STEP05手肘
      //step03把程式往右縮排
      pushMatrix();
        translate(100,0);// STEP01 發現放100,0 GOOD
        //if(mousePressed) rotateZ(radians(frameCount));
        rotateZ(radians(frameCount));//STEP02把前面if刪掉。只轉動
        translate(25,0,0);//往又推讓左端放中心
        box(50,25,50);// 小手腕
      popMatrix();
    popMatrix();//STEP04新的一組
}
float x=0,y=0;// 會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("X:"+x+"Y:"+y);
}
