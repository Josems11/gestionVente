/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import Connection.ConnexionBase;
import java.sql.*;

/**
 *
 * @author ASUS X75VB
 */
public class Gestion_msg {
    public ConnexionBase connexion;
    
    public Gestion_msg() throws Exception{
    connexion = new ConnexionBase();
    }
    
    public void insert(String num,String receive,String msg) throws Exception{
	String query = "INSERT INTO ozekimessageout (sender,receiver,msg,status,senttime,receivedtime,operator,msgtype,reference,errormsg) values ('"+num+"','"+receive+"','"+msg+"','send','send','now','Vodafone1','SMS:TEXT','ref','erreur')";
        connexion.executeUpdate(query);
   
     }
     public void deletein(String id) throws Exception {
        String query = "DELETE FROM ozekimessagein WHERE id='" + id + "'";
        connexion.executeUpdate(query);

    }
     public void deleteout(String id) throws Exception {
        String query = "DELETE FROM ozekimessageout WHERE id='" + id + "'";
        connexion.executeUpdate(query);
    }
      public ResultSet getAllin() throws Exception {
        String query = "SELECT * FROM ozekimessagein";
        ResultSet res = connexion.executeQuery(query);
        return res;
     }
      public ResultSet getAllout() throws Exception {
        String query = "SELECT * FROM ozekimessageout";
        ResultSet res = connexion.executeQuery(query);
        return res;
     }
    public int getCount() throws Exception{
        int res = 0 ;
        String query="SELECT count(*) FROM ozekimessagein";
        ResultSet rs = connexion.executeQuery(query);
        rs.next() ;
        res = rs.getInt("count(*)") ;
        return res ;		
    }
    
     public int getCountMessageOut() throws Exception{
        int res = 0 ;
        String query="SELECT count(*) FROM ozekimessageout";
        ResultSet rs = connexion.executeQuery(query);
        rs.next() ;
        res = rs.getInt("count(*)") ;
        return res ;		
    }
    public ResultSet getRecherchein(String id) throws Exception{
        String query="SELECT * FROM ozekimessagein WHERE id LIKE '"+id+"' OR sender LIKE '"+id+"' OR receiver LIKE '%"+id+"%' OR msg LIKE '%"+id+"%'OR receivedtime LIKE '%"+id+"%'";
        ResultSet rs=connexion.executeQuery(query);
        return rs;
      }
    public ResultSet getRechercheout(String id) throws Exception{
        String query="SELECT * FROM ozekimessageout WHERE senttime LIKE '"+id+"' OR sender LIKE '"+id+"' OR receiver LIKE '%"+id+"%' OR msg LIKE '%"+id+"%'";
        ResultSet rs=connexion.executeQuery(query);
        return rs;
      }
       
}
