//week14_1_PFont_createFont_textSize_text
//PImage PVector
size(300,300);
textSize(50);
text("Hello",10,50);//預設自行
PFont font = createFont("Times New Roman",50);
textFont(font);//換自型
text("Hello",10,100);
//print(PFont.list());//列出現在所有可用自行
//改用for 回全印出所有字型
for(String name: PFont.list()) println(name);
