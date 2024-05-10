private Nave nave;
private Asteroid asteroid;
private Enemy enemy;
private DisparadorBalas disparador;
private Fondo fondo;

public void setup(){
  size(400,600);
  
  nave = new Nave();
  asteroid = new Asteroid();
  enemy = new Enemy();
  disparador = new DisparadorBalas();
  fondo = new Fondo();
  
}

public void draw(){
  fondo.display();
  nave.display();
  enemy.display();
}
