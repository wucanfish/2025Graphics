//week05_6_pushMatrix_popMatrix_GOOD
//因為有多個移動、旋轉會亂掉所以用"分階層"做事
void setup(){
   size(400,400); 
}
void draw(){
    background(204);
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(frameCount)*10);
    rect(-50,-5,100,10);//好的
    popMatrix();
    
    pushMatrix();
    translate(width/2-100,height/2);
    rotate(radians(frameCount)*10);
    rect(-50,-5,100,10);
    popMatrix();
}
