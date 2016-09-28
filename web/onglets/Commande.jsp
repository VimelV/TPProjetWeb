<%-- 
    Document   : onglet3
    Created on : 13 sept. 2016, 17:03:36
    Author     : Vimel
--%>

        <h1>Commandes</h1>


    <script type="text/javascript">
      google.charts.load('upcoming', {'packages':['geochart']});
      


    </script>
    
    <script>

    function showResults() {
        $.getJSON(
                // L'URL du service qui fournit les résultats
                'jdbc2json/CommandesParPays?template=AllRecordsAsArray', 
                // La fonction qui traite les résultats
                drawRegionsMap)
        .fail( // Quoi faire en cas d'erreur
            function(XMLHttpRequest, textStatus, errorThrown) {
                alert("error: " + textStatus);
            }
        );

    }
    
        function drawRegionsMap( result ) {

        alert (result);

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pays');
        data.addColumn('number', 'Nombre de commande');
        for (var prop in result) {
    
               
                data.addRow([result[prop][0], result[prop][1]]);  
                
                //alert(tabTemp);
            }


    

        var options = {};

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      }
      
    </script>
    
    <script type="text/javascript">
     $(document).ready(function(){
                showResults();
            });
   </script>
   
    <div id="resultArea"></div>
    <div id="regions_div" style="width: 900px; height: 500px;"></div>