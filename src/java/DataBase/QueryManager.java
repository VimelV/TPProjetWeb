/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author Vimel
 */
public class QueryManager  {
  private String url = "jdbc:derby://localhost:1527/sample";
  private String user = "app";
  private String passwd = "app";
  private Connection con;     
  
    public QueryManager() {       
    }
                
   public Connection connection() {
        try {
            this.con = DriverManager.getConnection(this.url, this.user, this.passwd);
        } catch (SQLException ex) {
            Logger.getLogger(QueryManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    return this.con;
    }
    
    public ResultSet executeQuery(String query) throws SQLException{
        ResultSet rs = null;
        Statement state=null;
        try{
            state = this.connection().createStatement();
            rs = state.executeQuery(query);
            System.err.println("On est dans la servlet :"+rs);
        } catch(SQLException e){
             Logger.getLogger(QueryManager.class.getName()).log(Level.SEVERE, null, e);
        } finally{
            //close(rs,state);
        }
        
    return rs;
    }
    
    public void close(ResultSet rs, Statement st) throws SQLException{
        rs.close();
        st.close();
    }
}
