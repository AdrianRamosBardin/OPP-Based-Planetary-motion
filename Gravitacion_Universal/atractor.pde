class Atractor{
  float x;
  float y;
  float rad;
  float masa;
  float intense = 1;
  
  Atractor(float masa_temp,float x_temp, float y_temp){
    masa = masa_temp;
    x = x_temp;
    y = y_temp;
  }
  float atraccionx(Mover other){
    float d = dist(x,y,other.x,other.y);
    float f = ((masa* other.masa)/(d*d)) * intense;
    
    float varx = x - other.x;
    float vary = y - other.y;
    
    float fx = varx * f;
    float fy = vary * f;
    
    return fx;
  }
  
  float atracciony(Mover other){
    float d = dist(x,y,other.x,other.y);
    float f = ((masa* other.masa)/(d*d)) * intense;
    
    float varx = x - other.x;
    float vary = y - other.y;
    
    float fx = varx * f;
    float fy = vary * f;
    
    return fy;
    
  }
  
  void show(){
  noStroke();
  fill(200,0,0);
  rad = masa * 2;
  ellipse(x,y,rad,rad);
  }
}
