javac *.java

clang++ TestJNI.cpp -o test \
        -I/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/include/ \
        -I/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/include/darwin/ \
        -I/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/jre/lib/server \
        -L/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/jre/lib/server \
        -ljvm

mv test ..
cd ..
./test

