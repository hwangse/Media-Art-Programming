import ddf.minim.*;
import ddf.minim.analysis.*;

Minim m;
AudioPlayer player;
FFT fft;

circle []c;

void setup() {
  size(500, 500);
  m=new Minim(this);

  player=m.loadFile("Maroon 5 - Sugar.mp3", 1024);
  player.play();
  player.loop();
  fft=new FFT(player.bufferSize(), player.sampleRate());
  
  c=new circle[fft.specSize()];
  for(int i=0;i<c.length;i++){
   c[i]=new circle(random(50,450),random(50,450),random(10,50),color(random(255)*0.3,random(255)*1.1,150)); 
  }
}

void draw() {
  background(0);

  fft.forward(player.mix);
  float f=1.0*width/fft.specSize();  //specSize : the number of 'mixed sound' in a song 
/*
  for (int i=0; i<fft.specSize(); i++) {
    float h=fft.getBand(i)*100;
    rect(i*f,height*0.5-h*0.5,f,h+10);
  }
  */
  for(int i=0;i<c.length;i++){
    float s=fft.getBand(i);
    float s2=map(s,0,100,2,100);
    c[i].updateSize(s2);
    c[i].draw(); 
  }
  
  
}
