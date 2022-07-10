sourceFiles=`ls src/*.shar`
STD=/path/to/STD.sharm
Srem=/path/to/Srem.sharm
sexy=/path/to/sexy.o

sharc -t -o tests.ll -m ../Sheriff.sharm $STD $Srem -s $sourceFiles main.shar &&
llc -O1 --filetype=obj --relocation-model=dynamic-no-pic -o tests.o tests.ll &&
clang -O1 -lm -ldl -pthread tests.o $sexy -o tests
