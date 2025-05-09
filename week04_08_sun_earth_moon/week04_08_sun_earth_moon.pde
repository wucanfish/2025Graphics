//week04_08_sun_earth_moon
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  sphere(50);//sun
  rotateY(radians(frameCount));
  pushMatrix();
    translate(150,0);
    rotate(radians(frameCount));
    sphere(30);//earth
    pushMatrix();
      translate(50,0);
      rotateY(radians(frameCount));
      sphere(10);//moon
    popMatrix();
  popMatrix();
}
