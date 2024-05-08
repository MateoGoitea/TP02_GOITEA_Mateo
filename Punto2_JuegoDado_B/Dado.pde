private class Dado extends GameObject {

  private int valor;
  private int tamDado;
  
  private PImage dado1;
  private PImage dado2;
  private PImage dado3;
  private PImage dado4;
  private PImage dado5;
  private PImage dado6;
                
  private float d;
  private float resultados[];
  private int c, i, x;
 

  public Dado() {
    
    tamDado= 50;
    posicion = new PVector(width/2-tamDado, height/2-tamDado);
    
    dado1 = loadImage("dado01.png");
    dado2 = loadImage("dado02.png");
    dado3 = loadImage("dado03.png");
    dado4 = loadImage("dado04.png");
    dado5 = loadImage("dado05.png");
    dado6 = loadImage("dado06.png");
    
    c=0;
    x=0;
    resultados = new float[12];

  }
  
  public void generarValor(){
    d=random((int)1, 7);
    resultados[c]=d;
    c++;
  }
  
  public void mostrarResultados(){
    println("Resultados obtenidos:");
    for (i=0;i<12;i++){
      print((int)resultados[i]+"  ");
      x++;
      if (x==4){
        println();
        x=0;
      }
    }
    x=0;
    println();
  }

  public void display() {
    valor=(int)d;
    
    
    switch (valor) {
    case 1:
      image(dado1,posicion.x,posicion.y);
      break;
    case 2:
      image(dado2,posicion.x,posicion.y);
      break;
    case 3:
      image(dado3,posicion.x,posicion.y);
      break;
    case 4:
      image(dado4,posicion.x,posicion.y);
      break;
    case 5:
      image(dado5,posicion.x,posicion.y);
      break;
    case 6:
      image(dado6,posicion.x,posicion.y);
      break;
    }
  }
  
  public int getValor(){
    return this.valor;
  }
  
  public int getCont(){
    return this.c;
  }
}
