/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package onglets;

/**
 *
 * @author Vimel
 */
public class Produit {
    private int reference = 0;
    private String nom = null;
    private int fournisseur = 0;
    private int categorie = 0;
    private String qte_par_unite = null;
    private Float prix_unitaire = null;
    private int unites_en_stock = 0;
    private int unites_commande = 0;
    private int niveau_de_reappro = 0;
    private int indisponible = 0;

    public Produit() {
    }

    public Produit(int pRef, String pNom, int pFournisseur, int pCat, String pQte_uni,
            Float pPrixUnitaire, int pUnitesStock, int pUnitesCommande, 
            int pNiveauReappro, int pIndispo ) {
        
        this.reference = pRef;
        this.nom = pNom;
        this.fournisseur = pFournisseur;
        this.categorie = pCat;
        this.qte_par_unite = pQte_uni;
        this.prix_unitaire = pPrixUnitaire;
        this.unites_en_stock = pUnitesStock;
        this.unites_commande = pUnitesCommande;
        this.niveau_de_reappro = pNiveauReappro;
        this.indisponible = pIndispo;
        
    }

    
    
    
    public int getReference() {
        return reference;
    }

    public void setReference(int reference) {
        this.reference = reference;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getFournisseur() {
        return fournisseur;
    }

    public void setFournisseur(int fournisseur) {
        this.fournisseur = fournisseur;
    }

    public int getCategorie() {
        return categorie;
    }

    public void setCategorie(int categorie) {
        this.categorie = categorie;
    }

    public String getQte_par_unite() {
        return qte_par_unite;
    }

    public void setQte_par_unite(String qte_par_unite) {
        this.qte_par_unite = qte_par_unite;
    }

    public Float getPrix_unitaire() {
        return prix_unitaire;
    }

    public void setPrix_unitaire(Float prix_unitaire) {
        this.prix_unitaire = prix_unitaire;
    }

    public int getUnites_en_stock() {
        return unites_en_stock;
    }

    public void setUnites_en_stock(int unites_en_stock) {
        this.unites_en_stock = unites_en_stock;
    }

    public int getUnites_commande() {
        return unites_commande;
    }

    public void setUnites_commande(int unites_commande) {
        this.unites_commande = unites_commande;
    }

    public int getNiveau_de_reappro() {
        return niveau_de_reappro;
    }

    public void setNiveau_de_reappro(int niveau_de_reappro) {
        this.niveau_de_reappro = niveau_de_reappro;
    }

    public int getIndisponible() {
        return indisponible;
    }

    public void setIndisponible(int indisponible) {
        this.indisponible = indisponible;
    }
    
    
    
    
    
    
    
}
