/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *ConnexionBase
 *@author K-LynG
 *15 juin 2018
 */
public class ConnexionBase {
  public Connection con;
    public Statement stat;
	
	public ConnexionBase() {
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            System.out.println("pilote reussie");
        } catch (ClassNotFoundException ex) {
            System.out.println("erruer");
            Logger.getLogger(ConnexionBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bd_vitre", "root", "");
            System.out.println("base reussie");
            stat = con.createStatement();
        } catch (SQLException e) {
            System.out.println("erreur de base ");
            Logger.getLogger(ConnexionBase.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    public int executeUpdate(String query) throws SQLException {

        int res = 0;
        res = stat.executeUpdate(query);
        return res;

    }

    public ResultSet executeQuery(String query) throws SQLException {
        ResultSet res = null;
        res = stat.executeQuery(query);
        return res;


    }
}
