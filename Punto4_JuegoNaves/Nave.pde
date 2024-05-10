private class Nave extends GameObject implements IDisplayable, IMoveable, IControler{
  
  private int vel;
  private boolean upPressed;
  private boolean downPressed;
  private boolean rightPressed;
  private boolean leftPressed;

  public Nave(){
    posicion = new PVector(width/2,500);
    imagen = loadImage("nave.png");
    vel = 5;
  }
  
  public void display(){
    image(imagen,posicion.x,posicion.y);
    
    this.mover();
  }
  
  public void mover(){
    if (rightPressed==true){
      posicion.x=posicion.x+vel; 
    }
    if (leftPressed==true){
      posicion.x=posicion.x-vel; 
    }
    if (upPressed==true){
      posicion.y=posicion.y-vel; 
    }
    if (downPressed==true){
      posicion.y=posicion.y+vel; 
    }
  }
  
  public void readCommand(){
    if (keyCode==UP){
      upPressed=true;
    }
    if (keyCode==DOWN){
      downPressed=true;
    }
    if (keyCode==RIGHT){
      rightPressed=true;
    }
    if (keyCode==LEFT){
      leftPressed=true;
    }
    
    
  }
  
  public boolean getUpPressed(){
    return this.upPressed;
  }
  public void setUpPressed(boolean upPressed){
    this.upPressed=upPressed;
  }
  
  public boolean getDownPressed(){
    return this.downPressed;
  }
  public void setDownPressed(boolean downPressed){
    this.downPressed=downPressed;
  }
  
  public boolean getRightPressed(){
    return this.rightPressed;
  }
  public void setRightPressed(boolean rightPressed){
    this.rightPressed=rightPressed;
  }
  
  public boolean getLeftPressed(){
    return this.leftPressed;
  }
  public void setLeftPressed(boolean leftPressed){
    this.leftPressed=leftPressed;
  }
  
  
  public float getPosicionX(){
    return this.posicion.x;
  }
  
  public float getPosicionY(){
    return this.posicion.y;
  }
}
