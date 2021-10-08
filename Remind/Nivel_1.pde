final static int normal = 0;
final static int derecha = 1;
final static int izquierda=2;
final static float der_margen =400;
final static float izq_margen =32;
final static float ver_margen =40;
final static float gravedad =0.6;
final static float salto = 14;
final static float vel= 5;
final static float size_sprite1=32;
int x=0, y=0;
float view_x=0;
float view_y=0;

PImage [] personaje;
ArrayList <Sprite1> plataforma;

Fondo lv1;

void setnivel()
{
  personaje= new LeerArchivo (4,12,"sad.jpg").getHoja();

  lv1 = new Fondo ("Libro1.csv","Tileset32.png",32);
}
/*void draw()
{
  background(178,245,100);
  jugar();
}
*/
void jugar()
{
  lv1.mostrar();

}
