sourceFiles=`ls src/*.shar`
STD=/path/to/STD.sharm
Srem=/path/to/Srem.sharm

sharc -o Sheriff.sharm -m $STD $Srem -s $sourceFiles
