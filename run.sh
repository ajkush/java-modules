echo creating mods and classes directories...
rm -rf mods
rm -rf classes
mkdir mods


echo compiling 'helloworld' classes
javac -d classes/helloworld $(find helloworld -name '*.java')
echo creating 'helloworld' jar
jar --create --file mods/helloworld.jar -C classes/helloworld .

echo compiling 'helloworld.alpha classes'
javac -d classes/helloworld.alpha $(find helloworld.alpha -name '*.java') --module-path mods
echo creating 'helloworld.alpha' jar
jar --create --file mods/helloworld.alpha.jar -C classes/helloworld.alpha .

echo compiling 'helloworld.beta' classes
javac -d classes/helloworld.beta $(find helloworld.beta -name '*.java') --module-path mods
echo creating 'helloworld.beta jar'
jar --create --file mods/helloworld.beta.jar -C classes/helloworld.beta .

echo compiling 'app' classes
javac -d classes/app $(find app -name '*.java') --module-path mods
echo creating 'app' jar
jar --create --file mods/app.jar --main-class com.yopeso.app.Main -C classes/app .

echo
echo DONE