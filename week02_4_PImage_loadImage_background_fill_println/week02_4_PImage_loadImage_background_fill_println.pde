//week02-4_PImage_loadImage_background_fill_println
PImage img;
void setup(){
    size (400,400);
    img=loadImage("cute.png");//圖檔拉進來
}
void draw(){
   background(img); 
   fill(255,mouseX);// 半透明色彩白色,alpha 128
   println(mouseX); //把mouse print 下面小黑
   rect(0,0,400,400);//畫超大四邊形全部蓋住
}
