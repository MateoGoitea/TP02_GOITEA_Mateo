private Nave nave;
private Asteroid asteroid;
private Enemy enemy;
private Bala[] bala = new Bala[20];
private Fondo fondo;

public void setup(){
  size(400,600);
  
  fondo = new Fondo();
  nave = new Nave();
  asteroid = new Asteroid();
  enemy = new Enemy();
  
  for (int i=0; i<bala.length;i++){
    bala[i]=new Bala();
  }  
}

public void draw(){
  fondo.display();
  nave.display();
  asteroid.display();
  enemy.display();
  
  for (int i=0; i<bala.length;i++){
    bala[i].display();
  } 
}

public void keyPressed(){
  nave.readCommand();
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
