/**
@Author:  Ammar Hakim
*/  

//Pre Code Setup for Variables...

//Sky Mods
  int sky= #77B0F5; //Sky Colourss
  int n= #FAF600; //Sun/Moon Colours
  float stars=#77B0F5; //Stars Colours
//Car Mods
  int ws= #3eb9c7;//Wind Sheild Colours
  int rl = #590c0c; //Rear Lights Colours
  float st=1; //Rear Light Stroke on Brakes
  float rightX=0; //Car Movement Right
  float leftX=0; //Car Movement Left
  float speed=3; //Car Movement Speed of Movement
//Helicopter Mods
  float hl=0; //Helicopter movement variable
  float txt=255; //text colour on helicopter
  //Rgb for Body  
    float xx1= 255;
    float xx2= 162;
    float xx3= 0;
  float xc2=100;
//Cactus Mods
  float cm=0;
  float cm2=0;
  float cm3=0;
  float xx=0.25;

void setup (){                       
  size (1280,720);
 //frameRate(1);
}
float xl=280;
float xchange=20;

void draw() {
  
//Active/Colour Changing Background
    fill(sky);
    rect(0,0,width,height);
    quad(540, 320, 740, 320, 500, 720, 600, 720);
    fill(0);
      fill (#ffd000);
  noStroke();
      rect(0,320,1280,1200);
    fill(100);
    quad(400, 320, 880, 320, 920, 720, 360, 800);
//Stars 
  noStroke();
  fill(stars);
    ellipse(random(width), random(320), 4, 4);

 //Road Details
  float c=0;
  c+=50;
   fill(c);
   xl+=50;
   xchange+=+2;
    c+=50;
   rect(620,xl, xchange, 30);
   
//Car Frame Code
  quad(500+rightX+leftX,340,780+rightX+leftX,340,830+rightX+leftX,420,450+rightX+leftX,420); //Top of Car
  quad(445+rightX+leftX,420,835+rightX+leftX,420,887+rightX+leftX,470,392+rightX+leftX,470); //Middle Frame of Car
  quad(392+rightX+leftX,470,887+rightX+leftX,470,881+rightX+leftX,613,400+rightX+leftX,613); //Rear/Bumper of Car
  
  fill(ws);                         //Rear Windsheild Colours
  quad(507+rightX+leftX,347,773+rightX+leftX,347,820+rightX+leftX,420,460+rightX+leftX,420); //Rear Windsheild
  
//Car Details
fill(0);
  rect(382+rightX+leftX, 440, 520, 15);
  rect(420+rightX+leftX, 450, 20, 25);//Spoiler arms
  rect(840+rightX+leftX, 450, 20, 25);//Spoiler arms
  rect(410+rightX+leftX,611,80,45);   //Tire Left
  rect(790+rightX+leftX,611,80,45);   //Tire Right
 
 fill(rl);
 stroke(255,10,10);
 strokeWeight(st);
  quad(425+rightX+leftX,485,526+rightX+leftX,495,533+rightX+leftX,524,427+rightX+leftX,522); //Rear Lights Left
  quad(754+rightX+leftX,495,854+rightX+leftX,485,852+rightX+leftX,522,747+rightX+leftX,524); //Rear Lights Right

//Skyline Silhouette
noStroke();
fill(0);
  //Left Side
    rect(0,254,46,66);
    rect(23,195,40,125);
    rect(59,234,35,86);
    rect(90,186,58,134);
    rect(138,219,47,101);
    rect(185,239,41,81);
    rect(226,231,16,89);
    rect(242,272,8,48);
    rect(250,237,28,83);
    rect(278,186,58,134);
    rect(322,274,46,46);
    rect(368,250,36,70);
  //Right Side
    rect(884,223,31,97);  
    rect(915,186,48,134);
    rect(963,238,32,82);
    rect(995,259,28,61);
    rect(1022,250,27,70);
    rect(1048,231,21,89);
    rect(1068,272,8,48);
    rect(1075,251,29,69); 
    rect(1103,237,44,83);
    rect(1068,272,8,48);
    rect(1146,274,17,46); 
    rect(1163,264,26,56);
    rect(1187,216,37,104);
    rect(1224,248,31,72); 
    rect(1254,210,22,110); 
    rect(1275,259,8,61);
    
//Sun Circle
  noStroke();
  fill(n);
  arc(640, 320, 210, 210, PI, TWO_PI);

//Helicopter
 if (hl<1190) {
        hl=hl+1  ;
    } else {
      hl = -180;
    }
fill(xc2);
 rect(1121-hl,110,55,5); //Rear Arm
fill(xx1,xx2,0);
 ellipse(1100-hl,113,80,25); // Main Body
fill(xc2);
 rect(1081-hl,130,60,5); //Legs
fill(xc2);
 triangle(1170-hl,115, 1178-hl, 100, 1178-hl, 115); //Rear 
fill(xc2);   
   rect(1178-hl,100,7,4); //Rear Finish
fill(xc2);  
  rect(1051-hl,90,97,3); //Top Blade
  rect(1095-hl,90,10,10);//Blade conector
fill(0);   
    rect(1185-hl,100,90,20); //Rear Flag
  textSize(18);
  fill(txt);
  text("Ammar", 1196-hl, 116); 
  fill(255);

  
//Cactai Setup
   if (cm<random(500,900)) {  //Returns to original Value at random point to create different gaps
        cm=cm+speed  ;
      } else {
        cm = -80;
    }
   if (cm2>0) {
        cm2=cm2+xx  ;
      } else {
        cm2 = 0;
    }
  if (cm3<random(500,800)) {   //Returns to original Value at random point to create different gaps
        cm3=cm3+speed;
      } else {
        cm3 = -176;
    }  
//Left Cactus
fill(#2a8530);
  rect(72-cm2,400+cm,45,50); //Cactus Base
  ellipse(95-cm2,350+cm,50,160); //Main Branch
  ellipse(55-cm2,330+cm,30,100); //Left Brach
  ellipse(135-cm2,360+cm,30,60); //Right Branch
//Right Cactus
fill(#2a8530);
  rect(1123+cm2,538+cm3,45,50); //Cactus Base
  ellipse(1146+cm2,495+cm3,50,160); //Main Branch
  ellipse(1105+cm2,468+cm3,30,100); //Left Brach
  ellipse(1186+cm2,496+cm3,30,60); //Right Branch
 
  //placement reference
  frame.setTitle(mouseX + ", " + mouseY);
}

void mouseClicked() {
  //Sky Time
      if (sky == #77B0F5) {
        sky = #202166;
      } else {
        sky = #77B0F5;
  }
 //Rear Lights Colour Change
      if (rl == #590c0c) {
        rl = #d11b1b ;
    } else {
      rl = #590c0c;
  }
 //Windsheild Colour Change
      if (ws == #3eb9c7) {
        ws = #34349e ;
    } else {
      ws = #3eb9c7;
  }
 //Sun/Moon Colour Change
      if (n == #FAF600) {
        n = 255;
    } else {
      n = #FAF600;
}
 //Text Colour Change
      if (txt == 255) {
        txt = 0;
    } else {
      txt = 255;
}
 //Heli Body Colour Change
      if (xx1 == 255) {
        xx1 = 0;
    } else {
      xx1 = 255;
    }
    if (xx2 == 162) {
        xx2 = 0;
    } else {
      xx2 = 162;
    }

 //Heli parts Colour Change
      if (xc2 ==100) {
        xc2 = 0;
    } else {
      xc2 = 100;
}
 //Stars Colour Change
      if (stars ==#77B0F5) {
        stars = 255;
    } else {
      stars = #77B0F5;
}
}

void keyPressed(){ //All Movement or Key-Trigger Actions (car,speed,brake lights)
if(rightX>-1){
  if(keyCode==CODED){
  }else if (keyCode==RIGHT){
      rightX +=2;
  }else if (keyCode==LEFT){
      leftX -=2;
  }
}
if((speed>=3) && (speed<30)){
  if(keyCode==CODED){
    }else if (keyCode==UP){
      speed +=1;
    }else if (keyCode==DOWN){
      speed -=1;
    }
    }else if (keyCode==DOWN){
      st =3;
    }
    else if (keyCode==UP){
      st =1;
    }
}
