class Mover{
  float x;
  float y;
  float vx;
  float vy;
  float ax;
  float ay;
  float fx;
  float fy;
  float rad;
  float masa;
  
  Mover(float masa_temp, float x_temp, float y_temp,float vx_temp,float vy_temp){
    masa = masa_temp;
    
    x = x_temp;
    y = y_temp;
    
    vx = vx_temp;
    vy = vy_temp;
  }
  
  void update(float fx,float fy){
    ax = fx / masa;
    ay = fy /masa;
    
    vx = vx + ax;
    vy = vy + ay;
    
    x = x + vx;
    y = y + vy;
  }
  
  void show(){
  noStroke();
  fill(50);
  rad = masa * 2;
  ellipse(x,y,rad,rad);
  }
  
}
