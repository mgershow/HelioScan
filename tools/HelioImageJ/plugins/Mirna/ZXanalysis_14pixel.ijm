//channel 0 
path0 = File.openDialog("Select a File");
dir0=File.directory;
FileNamePath0=File.getName(path0);
FileName0=File.nameWithoutExtension;

//opens XZ image and sums ans saves all the Y slices
run("Raw...", "open=[path0] image=[16-bit Unsigned] width=14 height=256 offset=0 number=256 gap=0");
run("Z Project...", "projection=[Sum Slices]");
SumY0=FileName0+"SUMy";
saveAs("Tiff", dir0+SumY0);
SumY0Tiff=SumY0+".tif";

//gets the XY view 
selectWindow(FileNamePath0);
run("Reslice [/]...", "output=1.000 start=Left rotate avoid");
XYImage0=FileName0+"RESLICED";
saveAs("Tiff", dir0+XYImage0);

//save the sum of XY view
run("Z Project...", "projection=[Sum Slices]");
SumZ0=FileName0+"SUM";
saveAs("Tiff", dir0+SumZ0);
/*close();
close();

XYImagePath0=dir0+XYImage0+".tif";
open(XYImagePath0);
SumZPath0=dir0+SumZ0+".tif";
open(SumZPath0);*/

selectWindow(FileNamePath0);
saveAs("Tiff", dir0+FileName0);


//channel1
path1 = File.openDialog("Select a File");
dir1=File.directory;
FileNamePath1=File.getName(path1);
FileName1=File.nameWithoutExtension;

//opens XZ image and sums ans saves all the Y slices
run("Raw...", "open=[path1] image=[16-bit Unsigned] width=14 height=256 offset=0 number=256 gap=0");
run("Z Project...", "projection=[Sum Slices]");
SumY1=FileName1+"SUMy";
saveAs("Tiff", dir1+SumY1);
SumY1Tiff=SumY1+".tif";

//gets the XY view 
selectWindow(FileNamePath1);
run("Reslice [/]...", "output=1.000 start=Left rotate avoid");
XYImage1=FileName1+"RESLICED";
saveAs("Tiff", dir1+XYImage1);

//save the sum of XY view
run("Z Project...", "projection=[Sum Slices]");
SumZ1=FileName1+"SUM";
saveAs("Tiff", dir1+SumZ1);
/*close();
close();
XYImagePath1=dir1+XYImage1+".tif";
open(XYImagePath1);
SumZPath1=dir1+SumZ1+".tif";
open(SumZPath1);*/

selectWindow(FileNamePath1);
saveAs("Tiff", dir1+FileName1);

close();
close();
close();
close();
close();
close();
close();
close();

SumY0TiffPath=dir0+SumY0Tiff;
open(SumY0TiffPath);
SumY1TiffPath=dir1+SumY1Tiff;
open(SumY1TiffPath);



run("Merge Channels...", "red=[SumY0Tiff] green=[SumY1Tiff] blue=*None* gray=*None* create keep");
ImageMerged = dir1+FileName0+"and 1 Merged";
saveAs("Tiff", ImageMerged);
makeRectangle(0, 33, 28, 101);
run("Crop");
ImageMergedCropped = ImageMerged+"Cropped";
saveAs("PNG",ImageMergedCropped);
close();
close();
close();
