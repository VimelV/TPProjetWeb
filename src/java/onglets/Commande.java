/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package onglets;

import java.util.Date;

/**
 *
 * @author Vimel
 */
public class Commande {
    private int numero = 0;
    private String client = null;
    private Date saisie_le = null;
    private Date envoyee_le = null;
    private Float port = null;
    private String destinataire = null;
    private String adresse_livraison = null;
    private String ville_livraison = null;
    private String region_livraison = null;
    private String code_postal_livraison = null;
    private String pays_livraison = null; 
    private Float remise = null; 

    //Constructeur par défaut
    public Commande() {
    }

    public Commande(int pNum, String pClient, Date dteSaisie, Date dteEnvoie,
            Float pPort, String pDest, String pAdresseLivaison, String pVilleLivraison,
            String pRegionLivraison, String pCodePostalLivraison,
            String pPaysLivraison, Float pRemise) {
        
        this.numero = pNum;
        this.client = pClient;
        this.saisie_le = dteSaisie;
        this.envoyee_le = dteEnvoie;
        this.port = pPort;
        this.destinataire = pDest;
        this.adresse_livraison = pAdresseLivaison;
        this.ville_livraison = pVilleLivraison;
        this.region_livraison = pRegionLivraison;
        this.code_postal_livraison = pCodePostalLivraison;   
        this.pays_livraison = pPaysLivraison;   
        this.remise = pRemise;  
        
    }
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public Date getSaisie_le() {
        return saisie_le;
    }

    public void setSaisie_le(Date saisie_le) {
        this.saisie_le = saisie_le;
    }

    public Date getEnvoyee_le() {
        return envoyee_le;
    }

    public void setEnvoyee_le(Date envoyee_le) {
        this.envoyee_le = envoyee_le;
    }

    public Float getPort() {
        return port;
    }

    public void setPort(Float port) {
        this.port = port;
    }

    public String getDestinataire() {
        return destinataire;
    }

    public void setDestinataire(String destinataire) {
        this.destinataire = destinataire;
    }

    public String getAdresse_livraison() {
        return adresse_livraison;
    }

    public void setAdresse_livraison(String adresse_livraison) {
        this.adresse_livraison = adresse_livraison;
    }

    public String getVille_livraison() {
        return ville_livraison;
    }

    public void setVille_livraison(String ville_livraison) {
        this.ville_livraison = ville_livraison;
    }

    public String getRegion_livraison() {
        return region_livraison;
    }

    public void setRegion_livraison(String region_livraison) {
        this.region_livraison = region_livraison;
    }

    public String getCode_postal_livraison() {
        return code_postal_livraison;
    }

    public void setCode_postal_livraison(String code_postale_livraison) {
        this.code_postal_livraison = code_postale_livraison;
    }

    public String getPays_livraison() {
        return pays_livraison;
    }

    public void setPays_livraison(String pays_livraison) {
        this.pays_livraison = pays_livraison;
    }

    public Float getRemise() {
        return remise;
    }

    public void setRemise(Float remise) {
        this.remise = remise;
    }
    
    
    
}
