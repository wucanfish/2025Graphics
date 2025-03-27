//week06_6_push_box_push_TRT_box_push_TRT_box_pop_pop_pop
void setup(){
    size(500,400,P3D);
}
void draw(){
    background(255);
    translate(width/2,height/2);
    sphere(10);
    
    fill(252,131,77);
    pushMatrix();
      box(50,200,25);//STEP03 ARM
      pushMatrix();
        translate(x,y);//STEP03 掛到手臂上關柴到0,-100
        if(mousePressed) rotateZ(radians(frameCount));//step2 把旋轉放入
        translate(100,0);//step01 把手肘移動量放入(100,0)
        box(200,50,25);//手肘
       
        pushMatrix();
          translate(100,0);
          rotateZ(radians(frameCount));
          translate(25,0,0);
          box(50,25,50);// 小手腕
        popMatrix();
      popMatrix();//STEP04新的一組
   popMatrix();
}
float x=0,y=0;// 會動的位置
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("X:"+x+"Y:"+y);
}
