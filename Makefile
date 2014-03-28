
all :
	rm -rf classes
	mkdir classes
	javac -d classes src/net/bismith/javaclientserver/*.java

test: all
	java -cp classes net.bismith.javaclientserver.KnockKnockServer 18851 &
	java -cp classes net.bismith.javaclientserver.KnockKnockClient localhost 18851

clean:
	rm -rf classes

