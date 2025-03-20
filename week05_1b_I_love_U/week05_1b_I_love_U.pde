//week05_1b_I_love_U
size(300,300);
stroke(255,0,0);
translate(150,150);//translate(widh/2,height/2);
for(int xx=-150;xx<150;xx++){//大的X 0-300
   for(int yy=-150;yy<150;yy++){//大的Y 0-300
      float x=xx/100.0;
      float y=-yy/100.0;
      float d=x*x+y*y-1;
      if(d*d*d-x*x*y*y*y<0){
        point(xx,yy);
      }
   }
}
