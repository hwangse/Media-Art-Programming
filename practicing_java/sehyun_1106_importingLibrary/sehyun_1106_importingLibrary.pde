import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim m;
AudioPlayer g1,g2,g3,g4;
int play_flag=0;
int music_num=0;
float rec_size=100;
void setup(){
  size(400,400);

  m=new Minim(this);
  g1=m.loadFile("J Rabbit.mp3",2048);
  g2=m.loadFile("Keira Knightley - Lost Stars.mp3",2048);
  g3=m.loadFile("Ed Sheeran - Thinking Out Loud.mp3",2048);
  g4=m.loadFile("Maroon 5 - Sugar.mp3",2048);
  //g.loop(); //keep looping my file over and over
  //g1.play();
  
}

void draw(){
  background(255);
  rectMode(CENTER);

  noStroke();
  
  fill(180,100,100);
  if(music_num==1)
    fill(240,100,100);
  rect(0.3*width,0.3*height,rec_size,rec_size);
  fill(180,100,100);
   if(music_num==2)
    fill(240,100,100);
  rect(0.7*width,0.3*height,rec_size,rec_size);
  fill(180,100,100);
   if(music_num==3)
    fill(240,100,100);
  rect(0.3*width,0.7*height,rec_size,rec_size);
  fill(180,100,100);
   if(music_num==4)
    fill(240,100,100);
  rect(0.7*width,0.7*height,rec_size,rec_size);
}
void mouseReleased(){
  float s=rec_size/2;
  
  if(play_flag==1){
    g1.pause();g2.pause();g3.pause();g4.pause();
    
  }
  
    if(mouseX>=0.3*width-s && mouseX<=0.3*width+s && mouseY>=0.3*height-s && mouseY<=0.3*height+s){
      g1.play();music_num=1;
    }
    else if(mouseX>=0.7*width-s && mouseX<=0.7*width+s && mouseY>=0.3*height-s && mouseY<=0.3*height+s){
      g2.play();music_num=2;
    }
    else if(mouseX>=0.3*width-s && mouseX<=0.3*width+s && mouseY>=0.7*height-s && mouseY<=0.7*height+s){
      g3.play();music_num=3;
    }
    else if(mouseX>=0.7*width-s && mouseX<=0.7*width+s && mouseY>=0.7*height-s && mouseY<=0.7*height+s){
      g4.play();music_num=4;
    }
      
      play_flag=1;
  
 
}
void keyPressed(){
 if(key=='A'){
  g1.play(); 
 }
 else if(key=='S'){
  g1.pause(); 
 }
}
