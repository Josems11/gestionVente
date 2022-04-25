/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import classe.Fournisseur;
import Connection.ConnexionBase;
import java.sql.*;

/**
 *
 * @author K-LynG
 */
    public class Gestion_fournisseur {
        ConnexionBase connexion;

    public Gestion_fournisseur() throws Exception {
        connexion = new ConnexionBase();
    }
    public void insert(Fournisseur f) throws Exception{
        
       String query="INSERT INTO fournisseur (nom_frs,prenom_frs,cin,tel_frs,adresse)values('" + f.getNom_frs() +"','" + f.getPrenom_frs() +"','" + f.getCin() +"','"+ f.getTel_frs() +"','" + f.getAdresse() +"')";
       connexion.executeUpdate(query);
    }
    public void update(String id, Fournisseur f) throws Exception{
        String query="UPDATE fournisseur SET nom_frs='" +f.getNom_frs()+ "',prenom_frs='" +f.getPrenom_frs()+ "',cin='" +f.getCin()+ "',tel_frs='" +f.getTel_frs()+ "',adresse='" +f.getAdresse()+ "' WHERE num_frs='" +id+ "'";
        connexion.executeUpdate(query);
    }
    public void delete(String id) throws Exception{
        String query="DELETE FROM fournisseur WHERE num_frs='"+id+"'";
        connexion.executeUpdate(query);
    }
    public ResultSet getAll() throws Exception{
       String query="SELECT * FROM fournisseur ORDER BY num_frs ASC";
       ResultSet rs=connexion.executeQuery(query);
        return rs;
    }
    public ResultSet getByNumero(String id) throws Exception{
		String query="SELECT * FROM fournisseur WHERE num_frs='"+id+"'";
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
    }
    public ResultSet getRecherche(String id) throws Exception{
        String query="SELECT * FROM fournisseur WHERE num_frs LIKE '"+id+"' OR nom_frs LIKE '%"+id+"%' OR prenom_frs LIKE '%"+id+"%' OR cin LIKE '%"+id+"%' OR tel_frs LIKE '%"+id+"%' OR adresse LIKE '%"+id+"%'";
        ResultSet rs=connexion.executeQuery(query);
        return rs;
    }

}
