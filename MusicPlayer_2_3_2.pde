//global variables
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
String path = new File("").getAbsolutePath(); //Exported Program
String directory = "//FS-052/studuser$/Gr11/j.wong59/My Documents/GitHub/Sandbox-Hello-World-P3"; //Not Exported
//reminder: \n is a character escape, change the backward slashes to forward slashes "/n"
//
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[4]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
//
void setup() {
  //
  minim = new Minim (this); //load from data directory
  //
  File anyDirectory = new File(path); //Used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in FileList:", FileListAnyDirectory.length);
  int i = 0; //songs index
  for (File file : FileListAnyDirectory) {
    if ( file.isFile() ) {
      if ( file.toString().endsWith(".mp3") ) {
        println("Any Directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
      }
    }
  }
  //
  //when prototyping songs is not loaded from anyDirectory
  File[] FileListGitHubDir = githubDirectory.listFiles();
  if ( songs[0] == null ) {
    printArray(FileListGitHubDir);
    for ( File file : FileListGitHubDir ) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          println("File Name .mp3 only", file.getName() );
          songs[i] = minim.loadFile(file.getName());
          i+=1;
        }
      }
    }
  } //Catch when Pathway NULL, not exported
  songs[3].loop(0); //Change the index manually
}
//end setup
void draw() {
}//end draw
//
void keyPressed() {
}//end keyPressed
//
void mousePressed() {
}//end mousePressed
//
