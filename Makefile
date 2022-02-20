.SUFFIXES: .java .class
.java.class:
	javac $*.java

CLASSES = \
	lox/Expr.java \
	lox/Lox.java \
	lox/Scanner.java \
	lox/Token.java \
	lox/TokenType.java

TOOLS = \
	tool/GenerateAst.java


default: tools classes

classes: lox/Expr.class $(CLASSES:.java=.class)
tools: $(TOOLS:.java=.class)

lox/Expr.java: tools
	java tool.GenerateAst lox

clean:
	rm -f lox/*.class
	rm -f tool/*.class
