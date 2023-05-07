/*code not finished
  also see music subprogram
*/
//Global Variables
String path = new File("").getAbsolutePath(); //Exported Program
String directory = "//FS-052/studuser$/Gr11/j.wong59/My Documents/GitHub/Sandbox-Hello-World-P3"; //Not Exported
//reminder: '\' = character escape, change the backward slashes to forward slashes "/n"
//
void setupOS() {
  File anyDirectory = new File(path); //used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory);
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
  }
}// end setupOS
//
//End OperatingSystem Subprogram
