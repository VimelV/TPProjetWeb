<%-- 
    Document   : onglet4
    Created on : 13 sept. 2016, 17:05:15
    Author     : Vimel
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="onglets.Client"%>

<h1>Clients</h1>
<%
    Client c = new Client();
    String s = null ;
    s = c.allCustomers();
%>
  
<p><%=s%></p>
<hr/>
<script>
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
		</script>
		<!-- un CSS pour formatter la table -->
		<link rel="stylesheet" type="text/css" href="css/tableformat.css">
<!-- Le template qui sert à formatter les résultats -->
<script id="customerTemplate" type="text/template">
        <TABLE BORDER="1">
                <!-- On se sert des méta-données pour les en-têtes de colonnes -->				
                <TR> {{#metaData}} <TH> {{label}} </TH> {{/metaData}}</TR>
                <!-- Pour chaque enregistrement -->
                        <!-- Une ligne dans la table -->
                                <!-- Pour chaque colonne dans l'enregistement -->
                                        <!-- Une cellule dans la ligne -->
                {{#records}}
                        <TR>
                                {{#.}}
                                        <TD>{{.}}</TD>
                                {{/.}}
                        </TR>
                {{/records}}
        </TABLE>
</script>
<button type="button" onclick="showResults();">Formatter les données suivant le template</button><br/>
<h2>Le résultat apparaît ici :</h2>
<div id="resultArea"></div>