SET JAVA_HOME="C:\Program Files (x86)\Java\jdk1.8.0_121\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\ferna\Documents\NetBeansProjects\JflexyCupEjemplo\JflexyCupEjemplo\src\Analizadores
java -jar C:\jflex-1.7.0\jflex-1.7.0\lib\java-cup-11b.jar -parser analisis_sintactico -symbols Simbolos A_Sintactico.cup
pause
