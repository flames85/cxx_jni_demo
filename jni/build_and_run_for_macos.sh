javac *.java

clang++ TestJNI.cpp -o test \
        -I$JAVA_HOME/include/ \
        -I$JAVA_HOME/include/darwin/ \
        -I$JAVA_HOME/server \
        -L$JAVA_HOME/jre/lib/server \
        -ljvm

mv test ..
cd ..

export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/server
./test

