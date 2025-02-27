//week02_3_setup_void_draw_
void setup(){//一開始設定1次
    size(400,400);
    background(255);
    fill(238);
    noStroke();
    float s=400/14;//格子size
    for(int i=0;i<14;i++){//左手 i對應y座標
       for(int j=0;j<14;j++){// 右手 j 對應 x座標
        // rect(0,i*s*2,s,s);//test
        if((i+j)%2==0)  rect(j*s,i*s,s,s);
       }
    }
}
void draw(){//每秒60次
  stroke(255,0,0);//red line
 if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//if mouse 按下去 draw line,給兩座標:Now mouse and before mouse
