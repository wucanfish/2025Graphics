//week08_1_loadShape_shape
size(400,400,P3D);
PShape gundam=loadShape("Gundam.obj");//1.讀入3D模型
translate(width/2,height/2);
pushMatrix();
  translate(0,100);
  scale(10,-10,10);//3.把模型放大 但上下倒過來(Y*-10)
  shape(gundam ,0,0);//2.畫出3D模型
popMatrix();
