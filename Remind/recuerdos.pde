
  float _x2=30, _y2=0;
  float velocidad2=2;
  PImage recuerdo2;

void load2(){
  recuerdo2= loadImage("recuerdo.png");
}
 
 void rec()
 {
   load2();
    memory(_x2, _y2);
    memory(_x2+200, _y2);
    memory(_x2+280, _y2);
    memory(_x2+370, _y2);
    memory(_x2+510, _y2);
    memory(_x2+630, _y2);
    memory(_x2+710, _y2);
    memory(_x2+820, _y2);
    memory(_x2+950, _y2);
    memory(_x2+1100, _y2);
    _y2 +=10;

}

void memory(float pos_x2, float pos_y2){
  image(recuerdo2, pos_x2, pos_y2, 30, 30);
  pos_y2 += 3;
}
