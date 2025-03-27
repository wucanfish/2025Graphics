//week06_7_push_RRT_many_TRT_inside_pop
void setup(){
    size(500,800,P3D);//step00
}
void draw(){
    background(255);
    translate(width/2,height/2);
    sphere(10);
    
    fill(252,131,77);
    pushMatrix();
      if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount));//step03 向右旋轉 
      if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount));//step02 向右旋轉
       translate(0,-100);
      //translate(x,y);//step01 往上抬升到中心
      box(50,200,25);// ARM
      pushMatrix();
        translate(0,-100);//STEP00 掛到手臂上關柴到0,-100
        //if(mousePressed) //刪掉 
        rotateZ(radians(frameCount));// 把旋轉放入
        translate(100,0);
        box(200,50,25);//手肘
       
        pushMatrix();
          translate(100,0);
          rotateZ(radians(frameCount));
          translate(25,0,0);
          box(50,25,50);// 小手腕
        popMatrix();
      popMatrix();
   popMatrix();
}
float x=0,y=0;
void mouseDragged(){
   x+=mouseX-pmouseX;
   y+=mouseY-pmouseY;
   println("X:"+x+"Y:"+y);
}
