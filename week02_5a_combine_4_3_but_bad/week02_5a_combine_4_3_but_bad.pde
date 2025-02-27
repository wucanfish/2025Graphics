//week02_5a_combine_4_3_but_bad
//苗突出錯
PImage img;
void setup(){
    size (400,400);
    img=loadImage("cute.png");//圖檔拉進來
}
void draw(){
   background(img); 
   fill(255,200);// 半透明色彩白色,alpha 128
   println(mouseX); //把mouse print 下面小黑
   rect(0,0,400,400);//畫超大四邊形全部蓋住
   //上4下3 
   stroke(255,0,0);//red line
   if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
