//Expressing visual image using MIC
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim m;
//AudioPlayer player;
FFT fft;
AudioInput in;

void setup() {
  size(700, 400);
  m=new Minim(this);
  in=m.getLineIn();
 // player=m.loadFile("Maroon 5 - Sugar.mp3", 1024);
 // player.play();
 // player.loop();
  fft=new FFT(in.bufferSize(), in.sampleRate());
  

}

void draw() {
  background(0);
  fft.forward(in.mix);
  float f=1.0*width/fft.specSize();  //specSize : the number of 'mixed sound' in a song 
  fill(255);
  for(int i=0;i<fft.specSize();i++){
    float h=fft.getBand(i)*100;
    rect(i*f,height*0.5-(h*0.5+10),f,h+10);
  }
  
}
