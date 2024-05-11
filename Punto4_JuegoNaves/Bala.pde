private class Bala extends GameObject implements IDisplayable, IMoveable{
  
  private int vel;
  private float posX;
  private float posY;
  
  public Bala(){
    posicion = new PVector(0,0);
    posX = nave.getPosicionX()+50;
    posY = nave.getPosicionY();
    vel = 50;
  }
  
  public void display(){
    fill(#ffffff);
    stroke(#DBFA77);
    strokeWeight(3);
    ellipse(posX,posY,10,20);
    
    this.mover(); 
  }
  
  public void mover(){
    if(posY<0){
          posY=nave.getPosicionY();
          posX=nave.getPosicionX()+50;
    }
    posY-=vel;
  }

}
