path0 = File.openDialog("Select a File");
dir = File.directory;
path1 = replace(path0,"channel_0","channel_1")
fileNamePath0=File.getName(path0);
fileNamePath1=File.getName(path1);


run("Raw...", "open=[path0] image=[16-bit Unsigned] width=28 height=256 offset=0 number=30000000 gap=0");
setSlice(2295);
run("Delete slices after here");
run("Stack to Hyperstack...", "order=xyczt(default) channels=1 slices=255 frames=9 display=Color");
run("Z Project...", "start=1 stop=255 projection=[Sum Slices] all");
run("Z Project...", "start=1 stop=9 projection=[Sum Slices]");

summed0FN = fileName0+"SUMyt.tiff";
saveAs("Tiff", summed0FN);

run("Raw...", "open=[path1] image=[16-bit Unsigned] width=28 height=256 offset=0 number=30000000 gap=0");
setSlice(2295);
run("Delete slices after here");
run("Stack to Hyperstack...", "order=xyczt(default) channels=1 slices=255 frames=9 display=Color");
run("Z Project...", "start=1 stop=255 projection=[Sum Slices] all");
run("Z Project...", "start=1 stop=9 projection=[Sum Slices]");

summed1FN = fileName1+"SUMyt.tiff";
saveAs("Tiff", summed1FN);
