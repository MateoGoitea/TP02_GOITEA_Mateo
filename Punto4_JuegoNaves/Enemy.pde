private class Enemy extends GameObject implements IDisplayable, IMoveable{
  
  private int vel;
  
  public Enemy(){
    posicion = new PVector(width/2,50);
    imagen = loadImage("enemy.png");
    vel = 5;
  }

  public void display(){
    image(imagen,posicion.x,posicion.y);
    this.mover();
  }
  
  public void mover(){
    if(posicion.x > width-100 || posicion.x < 0){
      vel = -vel;
    }
    posicion.x += vel;
  }
}
