//week05_3_atan2_dy_dx_text_radians_degrees
//degrees vs, radians
void setup(){
   size(400,400);
}
void draw(){
   background(128);
   line(200,200,400,200);
   line(200,200,mouseX,mouseY);
   float dx=mouseX-200,dy=mouseY-200;
   float a=atan2(dy,dx);//可找到arc弧的radians
   //atan2 出來的值介於-PI...+PI
   arc(200,200,200,200,0,a,PIE);
   textSize(30);
   text("radians"+a,100,100);// 弧度/弳度
   text("degrees"+degrees(a),100,130);//degrees 度
}
