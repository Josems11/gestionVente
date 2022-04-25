/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import static Connection.Constants.BASE;
import static Connection.Constants.HOST;

/**
 *
 * @author K-LynG
 */
public class Constants {
    
	public static final String HOST="localhost";
    public static final String BASE="bd_vitre";
    public static final String USER="root";
    public static final String PASSWD="";
    public static final String URL="jdbc:mysql://"+HOST+"/"+BASE;    
}
