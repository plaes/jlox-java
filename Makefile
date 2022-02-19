.SUFFIXES: .java .class
.java.class:
	javac $*.java

CLASSES = \
	lox/Lox.java \
	lox/Scanner.java \
	lox/Token.java \
	lox/TokenType.java

TOOLS = \
	tool/GenerateAst.java

default: classes tools

classes: $(CLASSES:.java=.class)
tools: $(TOOLS:.java=.class)

clean:
	rm lox/*.class
	rm tools/*.class
