path0 = File.openDialog("Select a File");
dir0=File.directory;
FileNamePath0=File.getName(path0);
FileName0=File.nameWithoutExtension;


run("Raw...", "open=path0] image=[16-bit Unsigned] width=28 height=256 offset=0 number=30000000 gap=0");
setSlice(2295);
run("Delete slices after here");
run("Stack to Hyperstack...", "order=xyczt(default) channels=1 slices=255 frames=9 display=Color");
run("Reslice [/]...", "slice=1.000 start=Left rotate avoid");

