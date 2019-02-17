PImage map;
Table table;

float s_lon;
float s_lat;

//location array
float lon[];  
float lat[];

void setup(){
 size(1350,675);
 map = loadImage("world32k.jpg");
 table=loadTable("location.csv","header");   //"header" : delete the very first row
 /*
 for(int i=0;i<table.getRowCount();i++){
    println(table.getRow(i).getString("city"));  //TEST THIS! 
 }*/

 int num=table.getRowCount();
 lon=new float[num];
 lat=new float[num];
 for(int i=0;i<table.getRowCount();i++){
   lon[i]=table.getRow(i).getFloat("lon");
   lat[i]=table.getRow(i).getFloat("lat");
 }
}

void draw(){
  background(map);

  for(int i=0;i<table.getRowCount();i++){
    float screen_x=map(lon[i],-180,180,0,width);
    float screen_y=map(lat[i],90,-90,0,height);
    fill(255,0,0);
    ellipse(screen_x,screen_y,10,10);
  }
}
