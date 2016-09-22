/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function formatResultWithTemplate(result) {
    // Le code source du template est dans la page
    var template = $('#customerTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, result);
    // On affiche le résultat dans la page
    $('#resultArea').html(processedTemplate);				
}

function showResults() {
    $.getJSON(
            // L'URL du service qui fournit les résultats
            'jdbc2json/TousLesClients?template=FullResult', 
            // La fonction qui traite les résultats
            formatResultWithTemplate)
    .fail( // Quoi faire en cas d'erreur
        function(XMLHttpRequest, textStatus, errorThrown) {
            alert("error: " + textStatus);
        }
    );
}