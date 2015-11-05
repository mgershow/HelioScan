10/8/2015
I'm using FPGA trajectory.

You have to adjust just number of frames.

I'm using "fake_read.vi" to create an image of rectangle.

Important: Image assembler -- cutoffs=0
           Trajectory x cutoffs = 0.1, 0.1 and 0.9

--- this way both saved image and HS images look good.

Another thing -- 
It seems that HS is not saving last two frames (z scan)
                 
It stops at 154/156. Maybe that number of frames -1 cuttoff in FPGA/generate dac voltages.vi had something to do with it

