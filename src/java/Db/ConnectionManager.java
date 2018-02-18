/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db;

import java.io.*;
import java.sql.*;
import java.util.Properties;
/**
 *
 * @author kazi
 */
public class ConnectionManager {
    
        private static Connection con;
        
    //private static String url = "jdbc:postgresql://localhost:5432/rohan";    
    //private static String driverName = "org.postgresql.Driver";   
    //private static String username = "postgres";   
    //private static String password = "syspass";
    

    public static Connection dbconnect() throws FileNotFoundException, IOException {
        try ( //attach the file to FileInputStream
            FileInputStream fin = new FileInputStream("E:/Rohan/WebRawn/web/WEB-INF/Openbravo.properties")) {
            
            Properties prop = new Properties();
            
            prop.load(fin);
            
            String oUser = prop.getProperty("bbdd.systemUser");
            
            String oPass = prop.getProperty("bbdd.systemPassword");
            
            String durl = prop.getProperty("bbdd.url");
            
            String oSid = prop.getProperty("bbdd.sid");
            
            String oUrl = durl +"/"+ oSid;
            
            String driverName = prop.getProperty("bbdd.driver");
        
            
            Class.forName(driverName);
            
            try {
                con = DriverManager.getConnection(oUrl, oUser, oPass);
            } catch (SQLException ex) {
                
                System.out.println("Failed to create the database connection."); 
            }
        } catch (ClassNotFoundException ex) {
           
            System.out.println("Driver not found."); 
        }
        return con;
    }
}

