//week14_5_ik_inverse_inematics_part3
//用簡單的線段來解ID運算
void setup(){
   size(400,400); 
   for (int i=0;i<2;i++){//把頂點從下到上放好
      p[i]=new PVector(200,350-50*i); 
   }
}
PVector [] p=new PVector[6];//有六個頂點
void draw(){
   background(255); 
   for(int i=0; i<2 ;i++){//用迴圈畫點AND字
      if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);//前一個頂點與現在頂點連起來
      fill(255,0,0);//紅色圓圈
      ellipse(p[i].x,p[i].y,8,8); 
      fill(0);//黑色的字
      text("p:"+i,p[i].x+10,p[i].y);
  }
  
  ellipse(mouseX,mouseY,6,6);//滑鼠也有一個小點 要控制座標移動
  line(p[0].x,p[0].y,mouseX,mouseY);
}
