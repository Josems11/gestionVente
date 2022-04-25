
package gestion;

import classe.Client;
import Connection.ConnexionBase;
import java.sql.*;

/**
 *
 * @author K-LynG
 */
  public class Gestion_client {
    public ConnexionBase connexion;

  public Gestion_client() throws Exception {
      connexion = new ConnexionBase();
    
  }
  public void insert (Client c) throws Exception{
    String query = "INSERT INTO client (nom_cli,prenom_cli,cin_cli,tel_cli,adresse_cli)VALUES('" + c.getNom_cli() + "','" + c.getPrenom_cli() + "','" + c.getCin_cli() + "','" + c.getTel_cli()+ "','" + c.getAdresse_cli() + "')";
    connexion.executeUpdate(query); 
  }
  public void update(String id, Client c) throws Exception {
    String query = "UPDATE client SET nom_cli='" + c.getNom_cli() + "',prenom_cli='" + c.getPrenom_cli() + "', cin_cli='" + c.getCin_cli() + "',tel_cli='"+c.getTel_cli()+ "',adresse_cli='" + c.getAdresse_cli()+ "' WHERE num_cli='" + id + "'";
    connexion.executeUpdate(query);

  }
  public void delete(String id) throws Exception {
    String query = "DELETE FROM client WHERE num_cli='" + id + "'";
    connexion.executeUpdate(query);

  }
  public ResultSet getAll() throws Exception {
    String query = "SELECT * FROM client ORDER BY num_cli";
    ResultSet rs = connexion.executeQuery(query);
    return rs;
  }
  public ResultSet getAll(int limitInf, int limitSup) throws Exception{
		String query="SELECT * FROM client ORDER BY num_cli LIMIT "+limitInf+","+limitSup;
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}
  public ResultSet getByNumero(String id) throws Exception{
		String query="SELECT * FROM client WHERE id='"+id+"'";
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}
      //Recherche par nom
	public ResultSet getByNom(String nom) throws Exception{
		String query="SELECT * FROM client ORDER BY num_cli WHERE nom_cli LIKE'%"+nom+"%'";
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}
        //Recherche par prenom
	public ResultSet getByPrenom(String prenom) throws Exception{
		String query="SELECT * FROM client ORDER BY num_cli WHERE prenom_cli='"+prenom+"'";
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}
	
      
	//nombre client dans la base
	public int getCount() throws Exception{
		int res = 0 ;
		String query="SELECT count(*) FROM client";
		ResultSet rs = connexion.executeQuery(query);
		rs.next() ;
		res = rs.getInt("count(*)") ;
		return res ;		
	}
  public ResultSet getRecherche(String id) throws Exception{
    String query="SELECT * FROM client WHERE num_cli LIKE '"+id+"' OR nom_cli LIKE '%"+id+"%' OR prenom_cli LIKE '%"+id+"%' OR cin_cli LIKE'%"+id+"%' OR adresse_cli LIKE '%"+id+"%' OR tel_cli LIKE'%"+id+"%'";
    ResultSet rs=connexion.executeQuery(query);
    return rs;
  }
}
