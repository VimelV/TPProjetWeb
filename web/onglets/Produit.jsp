<%-- 
    Document   : onglet2
    Created on : 13 sept. 2016, 17:03:27
    Author     : Vimel
--%>

        <h1>Produit</h1>

        <p>Veuillez selectionner une catégories de produits sfrdg</p>
       <div class="input-field">
            <select id="listeCat">                
            </select>
       </div>
       
        <script type="text/javascript">
             $(document).ready(function(){
                showResults();
            });
             google.charts.load("current", {packages:["corechart", "table"]});
            function showResults() {
                $.getJSON(
                        // L'URL du service qui fournit les résultats
                        'jdbc2json/ListeCategorie?template=AllRecordsAsArray',
                        // La fonction qui traite les résultats
                        toto)
                .fail( // Quoi faire en cas d'erreur
                    function(XMLHttpRequest, textStatus, errorThrown) {
                        alert("error: " + textStatus);
                    }
                );
            }
            function toto(data){
                $.each(data, function(i, option){
                    $("#listeCat").append($('<option/>').attr("value", option[0]).text(option[1]));                   
                });
                 $('select').material_select();
            }
            
        </script>
            