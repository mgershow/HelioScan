//channel 0 
path0 = File.openDialog("Select a File");
dir0=File.directory;
FileNamePath0=File.getName(path0);
FileName0=File.nameWithoutExtension;

//opens XZ image and sums ans saves all the Y slices
run("Raw...", "open=[path0] image=[16-bit Unsigned] width=28 height=256 offset=0 number=2560 gap=0");
run("Z Project...", "projection=[Sum Slices]");
SumY=FileName0+"SUMy";
saveAs("Tiff", dir0+SumY);

//gets the XY view 
selectWindow(FileNamePath0);
run("Reslice [/]...", "output=1.000 start=Left rotate avoid");
ImageName0=FileName0+"RESLICED";
saveAs("Tiff", dir0+ImageName0);

//save the sum of XY view
run("Z Project...", "projection=[Sum Slices]");
SumName0=FileName0+"SUM";
saveAs("Tiff", dir0+SumName0);
/*close();
close();

ImagePath0=dir0+ImageName0+".tif";
open(ImagePath0);
SumPath0=dir0+SumName0+".tif";
open(SumPath0);*/

