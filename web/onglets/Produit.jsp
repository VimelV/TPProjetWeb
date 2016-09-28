<%-- 
    Document   : onglet2
    Created on : 13 sept. 2016, 17:03:27
    Author     : Vimel
--%>

<h1 style="text-align: center ">Produit</h1>
      
        <div class="container z-depth-2">
            <p>Veuillez selectionner une cat�gories de produits</p>
            <form id="listeForm">
                <div class="input-field">
                    <select id="listeCat" onChange="choixListeCat()">                
                     </select>
                </div>
            </form>
           <div id="table_sort_div" ></div>
        </div>
       
        
        
        
        
        <script type="text/javascript">
             $(document).ready(function(){
                showResults();
                choixListeCat();
            });
             google.charts.load("current", {packages:["corechart", "table"]});
            function showResults() {
                $.getJSON(
                        // L'URL du service qui fournit les r�sultats
                        'jdbc2json/ListeCategorie?template=AllRecordsAsArray',
                        // La fonction qui traite les r�sultats
                        creationListeCat)
                .fail( // Quoi faire en cas d'erreur
                    function(XMLHttpRequest, textStatus, errorThrown) {
                        alert("error: " + textStatus);
                    }
                );
            }
            
            // Cette fonction permet la cr�ation de liste des cat�gories
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
                   url : 'jdbc2json/ProduitParCategorie?template=AllRecordsAsArray',
                   data : 'code=' + event
                }).success(function (data){
                    afficherTab(data);
                });
                // penser �  mettre un code d'erreur
            }
        
        function afficherTab(result){
            var data =  new google.visualization.DataTable();
            data.addColumn('string', 'Nom');
            data.addColumn('string', 'Quantit� par unit�');
            data.addColumn('number', 'Prix unitaire');
            data.addColumn('number', 'Unit� en stock');
           
            for (var prop in result) {
                tabTemp = [result[prop][1], result[prop][4], result[prop][5], result[prop][6]];
                data.addRow(tabTemp);  
                //alert(tabTemp);
            }
           
            var formatter = new google.visualization.NumberFormat({suffix : ' $'});
            formatter.format(data, 2); // Apply formatter to third column

            var view = new google.visualization.DataView(data);
            view.setColumns([0,1,2,3]);

            var table = new google.visualization.Table(document.getElementById('table_sort_div'));
            table.draw(view, {width: '100%', height: '100%'});
        }
        </script>
            