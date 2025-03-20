//week05_5_rotate_radians_frameCount_translate_mouseX_mouseY
//比較roate and translate 順序
void setup(){
   size(400,400); 
}
void draw(){
  background(204);
  //test: 下面兩行調順序
  //會發現化東西前的translate()才有效
  //在電腦圖學畫圖時會照著"之前累積的移動量和旋轉來放東西"
  rotate(radians(frameCount));//一秒有60radians 轉60 度,要變radians
  translate(mouseX,mouseY);//移動到滑鼠所在位置
  rect(-50,-5,100,10);//width 100 rect 放左上角
}
