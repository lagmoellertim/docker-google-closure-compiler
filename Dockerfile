FROM java
WORKDIR /tmp
ADD https://dl.google.com/closure-compiler/compiler-latest.zip compiler.zip
RUN unzip compiler.zip
RUN mkdir /compiler
RUN mv closure-compiler-*.jar /compiler/clojure-compiler.jar
RUN rm -rf /tmp
WORKDIR /usr/bin
COPY compile compile
RUN chmod +x compile
WORKDIR /workdir