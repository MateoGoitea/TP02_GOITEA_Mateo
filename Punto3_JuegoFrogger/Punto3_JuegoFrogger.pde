private JoyPad joyPad;
private Jugador jugador;
private Calle calle;
private Lago lago;
private Objetivo objetivo;
private SpawnerVehiculos spawnerVehiculos;
private SpawnerObstaculos spawnerObstaculos;

public void setup(){
  
  joyPad = new JoyPad();
  
  jugador = new Jugador();
  jugador.setPosicion(new PVector());
  jugador.setVelocidad(new PVector());
  
  calle = new Calle();
  calle.setPosicion(new PVector());
  
  lago = new Lago();
  lago.setPosicion(new PVector());
  
  objetivo = new Objetivo();
  objetivo.setPosicion(new PVector());
  
  spawnerVehiculos = new SpawnerVehiculos();
  spawnerVehiculos.generarVehiculos(calle);
  
  spawnerObstaculos = new SpawnerObstaculos();
  spawnerObstaculos.generarObstaculos(lago);
  
}

public void draw(){
  jugador.display();
  vehiculo.display();
  obstaculo.display();
  calle.display();
  lago.display();
  objetivo.display();
}

public void keyPressed(){
}

public void keyReleased(){
}
