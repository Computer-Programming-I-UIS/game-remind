final static int normal=0;
final static int derecha=1;
final static int izquierda=2;
final static float der_margen =400;
final static float izq_margen =32;
final static float ver_margen =40;
float view_x=0;
float view_y=0;
PImage [] personaje;
Player player;
void setnivel()
{
  fullScreen();
  personaje= new LeerArchivo (4,12,"sad.jpg").getHoja();
  player=new Player (personaje [0]);
  player.center.x= 65;
  player.center.y = 100;
}

void scroll()
{
  float der_dimension= view_x + width - der_margen;
  if(player.getRight()> der_dimension)
  {
    if(view_x <3700)
    view_x += player.getRight () - der_dimension;
  }
  float izq_dimension = view_x - izq_margen;
  if(player.getLeft() < izq_dimension)
  {
    if(view_x > 0)
    view_x -= izq_dimension - player.getLeft();
  }
  translate(view_x,view_y);
}
boolean tocado(Sprite s1, Sprite s2)
{
  boolean tocarX=s1.getRight() <= s2.getLeft() || s1.getLeft() >= s2.getRight();
  boolean tocarY=s1.getBottom() <= s2.getTop() || s1.getTop() >= s2.getBottom();
}
