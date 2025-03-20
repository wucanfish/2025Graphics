//week05_1_I_love_U
size(300,300);
stroke(255,0,0);
for(int xx=0;xx<300;xx++){//大的X 0-300
   for(int yy=0;yy<300;yy++){//大的Y 0-300
      float x=(xx-150)/100.0;//0...300 --> -150...300 再變成 -1.5...1.5
      float y=-(yy-150)/100.0;
      float d=x*x+y*y-1;
      if(d*d*d-x*x*y*y*y<0){
        point(xx,yy);
      }
   }
}
