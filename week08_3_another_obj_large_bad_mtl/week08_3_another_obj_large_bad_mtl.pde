//week08_3_another_obj_large_bad_mtl
PShape gundam;
void setup(){
  size(400,400,P3D);
  gundam=loadShape("FinalBaseMesh.obj");//1.讀入3D模型
}
void draw(){
  background(128);
  lights();
  translate(width/2,height/2+100);
  pushMatrix();
    scale(10,-10,10);//3.把模型放大 但上下倒過來(Y*-10)
    rotateY(radians(frameCount));
    shape(gundam ,0,0);//2.畫出3D模型
  popMatrix();
}
