.SUFFIXES: .java .class
.java.class:
	javac $*.java

AST_CLASSES = \
	lox/Expr.java \
	lox/Stmt.java

CLASSES = \
	lox/AstPrinter.java \
	lox/Interpreter.java \
	lox/Lox.java \
	lox/Parser.java \
	lox/RuntimeError.java \
	lox/Scanner.java \
	lox/Token.java \
	lox/TokenType.java

TOOLS = \
	tool/GenerateAst.java


default: tools classes

classes: $(AST_CLASSES:.java=.class) $(CLASSES:.java=.class)
tools: $(TOOLS:.java=.class)

$(AST_CLASSES):
	java tool.GenerateAst lox

clean:
	rm -f lox/*.class
	rm -f tool/*.class
	rm -r $(AST_CLASSES)
