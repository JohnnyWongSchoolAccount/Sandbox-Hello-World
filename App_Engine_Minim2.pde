import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
String Path = new File(""). GetAbsolutePath(); 
String directory = ""

//
void setup(){
  File dir = new File(Path);// Null if not export
  File[] Filelist;
  if ( dir == null ) else {
    dir = new File(directory);
    Filelist = dir.listFiles;
    for (File file : FileList){
      if (file.isfile() ){
        if (file.toString().endsWith(".mp3")){
          songs = minim.loadFile(file.getName());
        }
      }
    }
  } else {
    File[] FileList = dir.listFiles(); //Exported Folder
  }//Catch Null, when not exported
  
}
//end setup
void draw(){
}
//
void keyPressed(){}
//
void mousePressed(){}
//
