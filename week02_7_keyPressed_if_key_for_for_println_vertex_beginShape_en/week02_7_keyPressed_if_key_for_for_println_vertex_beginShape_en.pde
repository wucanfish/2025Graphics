//week02-7_keyPressed_if_key_for_for_println_vertex_beginShape_endShape
ArrayList<Integer> x,y;//先有兩個還沒準備好的
ArrayList<ArrayList<Integer>> xx=new ArrayList<ArrayList<Integer>>(); //大的資料結構
ArrayList<ArrayList<Integer>> yy=new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
    size (400,400);
    img=loadImage("cute.png");//圖檔拉進來
}
void draw(){
   background(img); 
   fill(255,200);// 半透明色彩白色,alpha 128
   rect(0,0,400,400);//畫超大四邊形全部蓋住
   for(int I=0;I<xx.size();I++){
     ArrayList<Integer> x=xx.get(I);
     ArrayList<Integer> y=yy.get(I);
      for(int i=1;i<x.size();i++){
         line(x.get(i),y.get(i),x.get(i-1),y.get(i-1)); 
      }
   }
}
void keyPressed(){
   if(key=='s'||key=='S'){//if 按下s or S->save
       for(int I=0;I<xx.size();I++){
         ArrayList<Integer> x=xx.get(I);
         ArrayList<Integer> y=yy.get(I);
         println("beginShape()");
         for(int i=1;i<x.size();i++){
           println("vertex("+x.get(i)+","+y.get(i)+")");
        }//改在keypressed()按下S or s 再全部印
        println("endShape()");
    }
  }
}
void mouseDragged(){
  //println(vertex(mouseX,mouseY));
   //println("vertex("+mouseX+","+mouseY+");");不要在這印
   x.add(mouseX);
   y.add(mouseY);
}
void mousePressed(){
   x= new ArrayList<Integer>(); xx.add(x);
   y= new ArrayList<Integer>(); yy.add(y);
}
