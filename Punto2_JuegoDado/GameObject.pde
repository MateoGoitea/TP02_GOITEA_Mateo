abstract class GameObject{
  protected PVector posicion;
  
  abstract void display();
  
  public PVector posicion(){
    return this.posicion;
  }
}
