Atractor [] atractores = new Atractor[2];
Mover [] movers = new Mover[4];

float fx;
float fy;
float ftx;
float fty;

void setup() {
  size(1200,900);
  for(int i = 0; i<atractores.length; i++){
    atractores[i] = new Atractor(random(10,80),random(200,width-200),random(200,height-200));
  }
  for(int i = 0; i<movers.length; i++){
    movers[i] = new Mover(random(10,80),random(200,width-200),random(200,height-200),random(1,5),random(1,5));
  }
}

void draw() {
  background(250);
  calculo();
  for(int i = 0; i<atractores.length; i++){
    atractores[i].show();
  }
  for(int i = 0; i<movers.length; i++){
    movers[i].show();
  }
}

void calculo(){
  for(int i = 0; i<atractores.length; i++){
    for(int j = 0; j<movers.length; j++){
      fx = atractores[i].atraccionx(movers[j]);
      fy = atractores[i].atracciony(movers[j]);
      ftx = ftx + fx;
      fty = fty + fy;
      movers[j].update(ftx,fty);
      ftx = 0;
      fty = 0;
    }
  }
  
}
