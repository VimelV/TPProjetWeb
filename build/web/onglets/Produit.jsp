<%-- 
    Document   : onglet2
    Created on : 13 sept. 2016, 17:03:27
    Author     : Vimel
--%>

        <h1>Produit</h1>

        <p>Veuillez selectionner une catégories de produits sfrdg</p>
        <form id="listeForm">
            <div class="input-field">
                <select id="listeCat" onChange="choixListeCat()">                
                 </select>
            </div>
       </form>
        <script type="text/javascript">
             $(document).ready(function(){
                showResults();
                choixListeCat();
            });
             google.charts.load("current", {packages:["corechart", "table"]});
            function showResults() {
                $.getJSON(
                        // L'URL du service qui fournit les résultats
                        'jdbc2json/ListeCategorie?template=AllRecordsAsArray',
                        // La fonction qui traite les résultats
                        creationListeCat)
                .fail( // Quoi faire en cas d'erreur
                    function(XMLHttpRequest, textStatus, errorThrown) {
                        alert("error: " + textStatus);
                    }
                );
            }
            
            // Cette fonction permet la création de liste des catégories
            function creationListeCat(data){
                $.each(data, function(i, option){
                    $("#listeCat").append($('<option/>').attr("value", option[0]).text(option[1]));                   
                });
                 $('select').material_select();                 
            }
            
            function choixListeCat(){
                var codeCat = $("#listeCat").val();
                if (codeCat != null || codeCat != "" || typeof(codeCat) != undefined){
                    creerTable(codeCat);   
                }else{
                    alert('try again');
                }                    
            }
            
            function creerTable(result){ 
                    //alert(result);
                    addCode(result);                   
               
            }
             function showError(XMLHttpRequest, textStatus, errorThrown) {
                   alert(errorThrown + ": " + XMLHttpRequest.responseText);
            }
            function addCode(event) {
                $.ajax({
                   url : 'jdbc2json/ProduitParCategorie',
                   data : 'code=' + event
                }).success(function (data){
                    console.log(data);
                   for (var i = 0; i<data.length; i++){
                    alert(data[i]);
                 }
                });
                
              /*  $.getJSON(
                    // L'url du web service
                    'jdbc2json/ProduitParCategorie',
                    // Les paramètres à transmettre
                    event,
                    // La fonction qui traite les résultats
                    function(result) {
                        //alert("res : "+result);
                        afficherTab();
                    }
                ).fail( showError );*/
            }
        
        function afficherTab(data){
            alert('Creation fini');
           for (var i = 0; i<data.length; i++){
               console.log(data[i]);
           }
        }
        </script>
            