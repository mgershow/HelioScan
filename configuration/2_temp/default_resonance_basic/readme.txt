1. TrajectoryAKResonance -- calls FpgaWrapper -- no config
                         -- config parameters may be off
2. SignalReaderDLFpga -- calls FpgaWrapper -- no config
3. Imaging mode -- calls ImageAssemblerDLframe -- no config
                -- calls DataCollectionDLstreming -- doesn't exist
                -- calls DisplayDL -- no config, but should be calling ImageProcessorDLRangeoffset

Analyser?

Crashes -- "configuration empty"
        -- doesn't open the grabber