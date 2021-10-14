Minim minim;
AudioPlayer musicafondo;
class musica{


}
void inicio()
{
  minim= new Minim(this);
  musicafondo= minim.loadFile("sonido/audio.mpeg");
  
if (mousePressed) {
      if (mouseX >((width/2)-80) && mouseX<((width/2)-80)+182 && mouseY> height/2 && mouseY <height/2+21) {
        press=!press;
      }
    }
    if (press==false) {
      boton5.sounds();
      musicafondo.pause();
    }
    if (press==true) {
      boton5.sound();
      musicafondo.loop();
    }
    break;
  }
}
