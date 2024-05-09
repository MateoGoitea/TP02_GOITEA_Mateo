private class Dado extends GameObject {

  private color colorDado;
  private color colorPuntos;
  private int valor;
  private int tamDado;
  private int tamPuntos;
  private float centroX, centroY,
                izqSupX, izqSupY,
                derSupX, derSupY,
                izqInfX, izqInfY,
                derInfX, derInfY,
                izqMidX, izqMidY,
                derMidX, derMidY;
                
  private float d;
  private float resultados[];
  private int c, i, x;
 

  public Dado() {

    colorDado=color(#79FFE3);
    colorPuntos=color(#8179FF);
    
    tamDado= 50;
    tamPuntos= 10;
    posicion = new PVector(width/2-tamDado/2, height/2-tamDado/2);
    
    c=0;
    x=0;
    resultados = new float[12];

    //Posiciones de los puntos-------------------------------------------------------
    centroX=posicion.x+tamDado/2;
    centroY=posicion.y+tamDado/2;

    izqSupX=posicion.x+10;
    izqSupY=posicion.y+10;

    derSupX=posicion.x+tamDado-10;
    derSupY=posicion.y+10;

    izqInfX=posicion.x+10;
    izqInfY=posicion.y+tamDado-10;

    derInfX=posicion.x+tamDado-10;
    derInfY=posicion.y+tamDado-10;

    izqMidX=posicion.x+10;
    izqMidY=posicion.y+tamDado/2;

    derMidX=posicion.x+tamDado-10;
    derMidY=posicion.y+tamDado/2;
  }
  
  public void generarValor(){
    d=random((int)1, 7);
    resultados[c]=d;
    c++;
  }
  
  public void mostrarResultados(){
    println("Resultados obtenidos:");
    for (i=0;i<resultados.length;i++){
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
      fill(colorDado);
      square(posicion.x, posicion.y, tamDado);
      fill(colorPuntos);
      ellipse(centroX, centroY, tamPuntos, tamPuntos);
      break;
    case 2:
      fill(colorDado);
      square (posicion.x, posicion.y, tamDado);
      fill(colorPuntos);
      ellipse(izqSupX, izqSupY, tamPuntos, tamPuntos);
      ellipse(derInfX, derInfY, tamPuntos, tamPuntos);
      break;
    case 3:
      fill(colorDado);
      square (posicion.x, posicion.y, tamDado);
      fill(colorPuntos);
      ellipse(izqSupX, izqSupY, tamPuntos, tamPuntos);
      ellipse(centroX, centroY, tamPuntos, tamPuntos);
      ellipse(derInfX, derInfY, tamPuntos, tamPuntos);
      break;
    case 4:
      fill(colorDado);
      square (posicion.x, posicion.y, tamDado);
      fill(colorPuntos);
      ellipse(izqSupX, izqSupY, tamPuntos, tamPuntos);
      ellipse(derInfX, derInfY, tamPuntos, tamPuntos);
      ellipse(derSupX, derSupY, tamPuntos, tamPuntos);
      ellipse(izqInfX, izqInfY, tamPuntos, tamPuntos);
      break;
    case 5:
      fill(colorDado);
      square (posicion.x, posicion.y, tamDado);
      fill(colorPuntos);
      ellipse(izqSupX, izqSupY, tamPuntos, tamPuntos);
      ellipse(derInfX, derInfY, tamPuntos, tamPuntos);
      ellipse(centroX, centroY, tamPuntos, tamPuntos);
      ellipse(derSupX, derSupY, tamPuntos, tamPuntos);
      ellipse(izqInfX, izqInfY, tamPuntos, tamPuntos);
      break;
    case 6:
      fill(colorDado);
      square (posicion.x, posicion.y, tamDado);
      fill(colorPuntos);
      ellipse(izqSupX, izqSupY, tamPuntos, tamPuntos);
      ellipse(derInfX, derInfY, tamPuntos, tamPuntos);
      ellipse(derSupX, derSupY, tamPuntos, tamPuntos);
      ellipse(izqInfX, izqInfY, tamPuntos, tamPuntos);
      ellipse(izqMidX, izqMidY, tamPuntos, tamPuntos);
      ellipse(derMidX, derMidY, tamPuntos, tamPuntos);
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
