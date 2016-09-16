/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function choixOnglet(){
    $("#onglet1").click(function(){
         $("#corps").load("./onglets/VisionGlobale.jsp");
    });
    
    $("#onglet2").click(function(){
        $("#corps").load("./onglets/Produit.jsp");
    });
    
    $("#onglet3").click(function(){
        $("#corps").load("./onglets/Commande.jsp");
    });
    
    $("#onglet4").click(function(){
        $("#corps").load("./onglets/Client.jsp");
    });
}