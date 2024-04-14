package org.example;

import java.sql.Connection;
import java.sql.DriverManager;

public class Main {
    public static void main(String[] args) {

        String url = "jdbc:postgresql://localhost:5432/3005project2";
        String user = "postgres";
        String password = "comp3005";

        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(url, user, password);
            if (connection != null) {System.out.println("Connected");}
            else {System.out.println("Connection failed");}



        } catch (Exception e) {System.out.println(e);}

    }
}
