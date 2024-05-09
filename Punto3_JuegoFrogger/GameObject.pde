abstract class GameObject{
  protected PVector posicion;
  protected PVector velocidad;
  protected PImage imagen;
  
  abstract void display();
  
  abstract void mover();
  
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
