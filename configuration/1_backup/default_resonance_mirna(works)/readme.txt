1. TrajectoryAKResonance -- calls FpgaWrapper -- added FPGAwrapper configuration
                         -- config parameters may be off
2. SignalReaderDLFpga -- calls FpgaWrapper -- added FPGAwrapper configuration
3. Imaging mode -- calls ImageAssemblerDLframe -- added config
                -- calls DataCollectionDLstreming -- doesn't have config
                -- calls DisplayDL -- added congig
                but should be calling ImageProcessorDLRangeoffset (added config for this first)

I'm not sure if analyser is needed.

Crashes -- works