.SUFFIXES: .java .class
.java.class:
	javac $*.java

CLASSES = \
	lox/Lox.java \
	lox/Scanner.java \
	lox/Token.java \
	lox/TokenType.java
default: classes

classes: $(CLASSES:.java=.class)

clean:
	rm lox/*.class
