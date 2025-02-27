//week02_2_for_for_if_rect
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
