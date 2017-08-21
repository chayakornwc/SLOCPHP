<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

 class Line_Counter
{
    private $filepath;
    private $files = array();

    public function __construct($filepath)
    {
        $this->filepath = $filepath;
    }

    public function countLines($extensions = array('php'))
    {
        $it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($this->filepath));
        foreach ($it as $file)
        {
         
           if ($file->isDir() )
            {
                continue;
            }
            $parts = explode('.', $file->getFilename());
            $extension = end($parts);
            if (in_array($extension, $extensions))
            {
                $files[$file->getPathname()] = count(file($file->getPathname()));
            }
        }
        return $files;
    }

    public function showLines()
    {
        echo '<pre>';
        print_r($this->countLines());
        echo '</pre>';
    }

    public function totalLines()
    {
        return array_sum($this->countLines());
    }

}

// Get all files with line count for each into an array
$loc = new Line_Counter('../sourcedir/');
$loc->showLines();

echo '<br><br> Total Lines of code: ';
echo $loc->totalLines();
function CC($path, $extensions = array('php'), $n_name){
    $file = $path;
    $line = 0;
   $counter = fopen($file, "r");
 while (!feof($counter)) {
$simulator = fgets($counter);
if (strpos($simulator, "//") !== false && strpos($simulator, "//") == 0) {
$line++;
} 
}

echo "<br>Files ".$n_name." Has Comment : ".$line." line</p>";

}
//countLines("../sourcedir/LOC.php");


//function countLines($path, $extensions = array('php')) {
//   // chmod($path, 0777);
//    $it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path));
//
// 
//    $files = array();
//    foreach ($it as $file) {
//
//        $parts = explode('.', $file->getFilename());
//        $extension = end($parts);
//        if (in_array($extension, $extensions)) {
//            $files[$file->getPathname()] = count(file($file->getPathname()));
//        }
//    }
//     return $files  ;
//}
// 
?>
<!DOCTYPE html>
<html>
    <body>

        <form action="LOC.php" method="post" enctype="multipart/form-data">
            Allow for PHP:
            <input type="file" name="fileToUpload" id="fileToUpload">
            <input type="submit" value="Upload your File" name="submit">
        </form>

    </body>
</html>
<?php

$filename = $_FILES['fileToUpload']['name'];

    if(!empty($filename)){
       
        $temp = explode(".", $_FILES["fileToUpload"]["name"]);

        $extension = end($temp);
        $pathupload = '../sourcedir/'.$filename;
        
        
       if ($extension =='php'){
           if(move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $pathupload)){
               chmod($pathupload, 0777);
               
               echo(cc($pathupload, null, $filename));
                      
       }else{
           echo"ไม่สามารถอัพโหลดไฟล์ได้".$pathupload;
       }
        
    }else{
        echo('Files is not PHP');
    }

    }
       
?>
