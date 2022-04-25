
package gestion;

import classe.Utilisateur;
import Connection.ConnexionBase;
import java.sql.*;

/**
 *
 * @author K-LynG
 */
public class Gestion_utilisateur {
    public ConnexionBase connexion;

    public Gestion_utilisateur() throws Exception {
        connexion = new ConnexionBase();

    }
    public void insert (Utilisateur c) throws Exception{
        String query = "INSERT INTO compte (nom, prenom, utilisateur, motpasse, tel, adresse)VALUES('" + c.getNom() + "','" + c.getPrenom()+ "','" + c.getUtilisateur()+ "','" + c.getMotpasse()+ "','" + c.getTel()+ "','" + c.getAdresse()+ "')";
        connexion.executeUpdate(query); 
    }
    public void update(String id, Utilisateur c) throws Exception {
        String query = "UPDATE compte SET nom='" + c.getNom()+ "', prenom='" + c.getPrenom()+ "', utilisateur='" + c.getUtilisateur()+ "', motpasse='"+c.getMotpasse()+ "', tel='" + c.getTel()+ "', adresse='" + c.getAdresse()+ "' WHERE id='" + id + "'";
        connexion.executeUpdate(query);

    }
    public void delete(String id) throws Exception {
        String query = "DELETE FROM compte WHERE id='" + id + "'";
        connexion.executeUpdate(query);

    }
    public ResultSet login(String user,String password)throws Exception{
        ResultSet rs=null;
        String query="SELECT utilisateur,motpasse FROM compte WHERE utilisateur='"+user+"' AND motpasse='"+password+"'";
        rs=connexion.executeQuery(query);
        return rs;
     }
    public ResultSet getAll() throws Exception {
        String query = "SELECT * FROM compte ORDER BY id";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getDetail(String users) throws Exception{
        String query="SELECT * FROM compte WHERE utilisateur='"+users+"'";
        ResultSet rs=connexion.executeQuery(query);
        return rs;
    }
}
