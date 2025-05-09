//week04_14_sun_earth_moon_setTexture
PShape sun,earth,moon;
//from week04_8 and week04_11,12,13
void setup(){
 size(400,400,P3D);
 earth=createShape(SPHERE,30);
 PImage img =loadImage("earth.jpg");
 earth.setTexture(img);
 
 sun=createShape(SPHERE,50);
 img =loadImage("sun.jpg");
 sun.setTexture(img);
 
 moon=createShape(SPHERE,10);
 img =loadImage("moon.jpg");
 moon.setTexture(img);
 
}
void draw(){
  background(128);
  translate(width/2,height/2);
  shape(sun);//sun
  rotateY(radians(frameCount));
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount));
    shape(earth);//earth
    pushMatrix();
      translate(50,0);
      rotateY(radians(frameCount));
      shape(moon);//moon
    popMatrix();
  popMatrix();
}
