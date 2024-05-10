private class Bala extends GameObject implements IDisplayable, IMoveable{
  
  private int vel;
  private float posX;
  private float posY;
  
  public Bala(){
    posicion = new PVector(0,0);
  }
  
  public Bala(float temposX,float temposY,int tempVel){
    vel = tempVel;
    posX = temposX;
    posY = temposY;
  }
  
  public void display(){
    posicion.x=posX+50;
    this.mover();
    
    
    fill(#ffffff);
    stroke(#DBFA77);
    strokeWeight(3);
    ellipse(posicion.x,posicion.y,10,20);
    
  }
  
  public void mover(){

  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
}
