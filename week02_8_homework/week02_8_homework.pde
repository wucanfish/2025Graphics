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
   noFill();
   strokeWeight(5);
   draw1();
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
void draw1(){
  vertex(48,100);
  vertex(48,99);
  vertex(48,98);
  vertex(48,95);
  vertex(48,92);
  vertex(48,90);
  vertex(47,88);
  vertex(47,86);
  vertex(47,83);
  vertex(47,80);
  vertex(47,79);
  vertex(46,77);
  vertex(46,76);
  vertex(46,74);
  vertex(46,72);
  vertex(46,69);
  vertex(46,68);
  vertex(46,67);
  vertex(46,64);
  vertex(46,62);
  vertex(46,61);
  vertex(48,60);
  vertex(50,59);
  vertex(51,58);
  vertex(52,57);
  vertex(52,56);
  vertex(53,54);
  vertex(53,53);
  vertex(55,52);
  vertex(55,50);
  vertex(56,49);
  vertex(56,48);
  vertex(56,47);
  vertex(57,45);
  vertex(58,43);
  vertex(60,41);
  vertex(60,40);
  vertex(62,38);
  vertex(63,37);
  vertex(64,36);
  vertex(64,35);
  vertex(65,34);
  vertex(65,33);
  vertex(67,32);
  vertex(68,32);
  vertex(70,32);
  vertex(71,32);
  vertex(72,32);
  vertex(75,32);
  vertex(76,32);
  vertex(78,32);
  vertex(79,32);
  vertex(80,32);
  vertex(83,33);
  vertex(84,34);
  vertex(85,36);
  vertex(86,36);
  vertex(87,37);
  vertex(88,38);
  vertex(90,39);
  vertex(92,41);
  vertex(93,42);
  vertex(95,42);
  vertex(95,43);
  vertex(96,44);
  vertex(97,45);
  vertex(98,45);
  vertex(99,45);
  vertex(100,46);
  vertex(102,47);
  vertex(103,48);
  vertex(105,48);
  vertex(105,49);
  vertex(106,50);
  vertex(108,51);
  vertex(109,52);
  vertex(110,54);
  vertex(111,55);
  vertex(112,55);
  vertex(112,57);
  vertex(113,58);
  vertex(114,60);
  vertex(115,61)
;
}
