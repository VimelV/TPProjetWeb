/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package onglets;

import DataBase.QueryManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Vimel
 */
public class Client {
    private String code = null;
    private String societe = null;
    private String contact = null;
    private String adresse = null;
    private String fonction = null;
    private String ville = null;
    private String region = null;
    private String code_postal = null;
    private String pays = null;
    private String telephone = null;
    private String fax = null;
    private QueryManager q = null;
    
    // Constructeur pqr défaut   
    public Client() {
        this.q = new QueryManager();
    }
    
     public Client(String pCode, String pSociete, String pContact, String pAdresse,
             String pFonction, String pVille , String pRegion, String pCodePostal,
             String pPays, String pTelephone, String pFax) {
         
        this.code = pCode;
        this.societe = pSociete;
        this.contact = pContact;
        this.adresse = pAdresse;
        this.fonction = pFonction;
        this.ville = pVille;
        this.region = pRegion;
        this.code_postal = pCodePostal;
        this.pays = pPays;
        this.telephone = pTelephone;   
        this.fax = pFax;         
        this.q = new QueryManager();
    }
    
    //Requetes SQL
    public String allCustomers(){    
        String s="";
        ResultSet rs = null;
        try {     
            rs  = this.q.executeQuery("select ville from client" );
            while(rs.next()){      
             s += rs.getString("ville") + "\n";
            }
        } catch (SQLException e) {
            //Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
     
     
    // Getter and Setter
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getSociete() {
        return societe;
    }

    public void setSociete(String societe) {
        this.societe = societe;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getFonction() {
        return fonction;
    }

    public void setFonction(String fonction) {
        this.fonction = fonction;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getCode_postal() {
        return code_postal;
    }

    public void setCode_postal(String code_postal) {
        this.code_postal = code_postal;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }
    
 
    
}
