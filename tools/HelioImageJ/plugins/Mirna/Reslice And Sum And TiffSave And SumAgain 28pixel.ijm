path = File.openDialog("Select a File");
dir=File.directory;
name=File.getName(path);
name2=File.nameWithoutExtension;

run("Raw...", "open=[path] image=[16-bit Unsigned] width=28 height=256 offset=0 number=256 gap=0");
run("Z Project...", "projection=[Sum Slices]");
Sum1=name2+"SUMy";
saveAs("Tiff", dir+Sum1);
selectWindow(name);

run("Reslice [/]...", "output=1.000 start=Left rotate avoid");

ImageName=name2+"RESLICED";
saveAs("Tiff", dir+ImageName);

run("Z Project...", "projection=[Sum Slices]");
SumName=name2+"SUM";
saveAs("Tiff", dir+SumName);
close();
close();

ImagePath=dir+ImageName+".tif";
open(ImagePath);
SumPath=dir+SumName+".tif";
open(SumPath);
