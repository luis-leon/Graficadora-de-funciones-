/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizadores;

import java.io.File;

/**
 *
 * @author ferna
 */
public class Main {
    
    public static void main(String[] args) {
        //
       String path= ("C:\\Users\\ferna\\Documents\\NetBeansProjects\\JflexyCupEjemplo\\JflexyCupEjemplo\\src\\Analizadores\\A_Lexico.jflex");
       generarLexer(path);
       
    }
    
    
    public static void generarLexer (String path)
    {
    File file= new File(path);
    jflex.Main.generate(file);
    
    }
    
}
