//week08_4_gumdam_body_head
PShape head,body;
void setup(){
  size(400,400,P3D);
  body=loadShape("body.obj");
  head=loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100);
  sphere(10);//基準點
  scale(10,-10,10);
  pushMatrix();
    translate(0,22.5);//3.掛回原來的地方
    rotate(radians(x));//2.
    //translate(x/10,y/10);
    //println(x/10,y/10);//印出座標
    translate(0,-22.5);//1.投的中心
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
   x+=mouseX-pmouseX;
   y-=mouseY-pmouseY;
}
