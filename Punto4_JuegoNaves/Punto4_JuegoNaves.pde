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

public void keyPressed(){
  if (keyCode==UP){
      nave.setUpPressed(true);
    }
    if (keyCode==DOWN){
      nave.setDownPressed(true);
    }
    if (keyCode==RIGHT){
      nave.setRightPressed(true);
    }
    if (keyCode==LEFT){
      nave.setLeftPressed(true);
    }
}

public void keyReleased(){
  if (keyCode==UP){
      nave.setUpPressed(false);
    }
    if (keyCode==DOWN){
      nave.setDownPressed(false);
    }
    if (keyCode==RIGHT){
      nave.setRightPressed(false);
    }
    if (keyCode==LEFT){
      nave.setLeftPressed(false);
    }
}
