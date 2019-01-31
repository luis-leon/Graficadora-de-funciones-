/*------------  1ra Area: Codigo de Usuario ---------*/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;

/*------------  2da Area: Opciones y Declaraciones ---------*/
%%
%{
    //----> Codigo de usuario en sintaxis java
    public static LinkedList<TError> TablaEL = new LinkedList<TError>(); 
%}

//-------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode

//------> Expresiones Regulares
numero = [0-9]+
eq1=[-]|[0-9][x][^][1]
eq2=[-]|[0-9][x][^][2][+-][0-9][x][^][1]
eq3=[-]|[0-9][x][^][3][+-][0-9][x][^][2][+-][0-9][x][^][1]

//------> Estados

%%
/*------------  3raa Area: Reglas Lexicas ---------*/

//-----> Simbolos
<YYINITIAL> "^"         { System.out.println("Reconocio "+yytext()+" pot"); }
<YYINITIAL> "x"         { System.out.println("Reconocio "+yytext()+" var");  }
<YYINITIAL> "+"         { System.out.println("Reconocio "+yytext()+" mas"); }
<YYINITIAL> "-"         { System.out.println("Reconocio "+yytext()+" menos"); }
<YYINITIAL> "*"         { System.out.println("Reconocio "+yytext()+" por"); }
<YYINITIAL> "/"         { System.out.println("Reconocio "+yytext()+" div"); }
<YYINITIAL> "("         { System.out.println("Reconocio "+yytext()+" para"); }
<YYINITIAL> ")"         { System.out.println("Reconocio "+yytext()+" parc"); }


//-------> Simbolos ER
<YYINITIAL> {eq1}    { System.out.println("Reconocio "+yytext()+" funcion x lineal"); }
<YYINITIAL> {eq2}    { System.out.println("Reconocio "+yytext()+" funcion x cuDRATICA"); }
<YYINITIAL> {eq3}    { System.out.println("Reconocio "+yytext()+" funcion x cubica"); }

//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);
                          TError datos = new TError(yytext(),yyline,yycolumn,"Error Lexico","Simbolo no existe en el lenguaje");
                          TablaEL.add(datos);}