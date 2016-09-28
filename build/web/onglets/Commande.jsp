<%-- 
    Document   : onglet3
    Created on : 13 sept. 2016, 17:03:36
    Author     : Vimel
--%>

        <h1>Commandes</h1>


    <script type="text/javascript">
      google.charts.load('upcoming', {'packages':['geochart']});
      google.charts.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {

        var data = google.visualization.arrayToDataTable([
          ['Country', 'Popularity'],
          ['Germany', 200],
          ['United States', 300],
          ['Brazil', 400],
          ['Canada', 500],
          ['France', 600],
          ['RU', 700]
        ]);

        var options = {};

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      }
    </script>
    
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
                'jdbc2json/ToutesLesCommandes?template=FullResult', 
                // La fonction qui traite les résultats
                formatResultWithTemplate)
        .fail( // Quoi faire en cas d'erreur
            function(XMLHttpRequest, textStatus, errorThrown) {
                alert("error: " + textStatus);
            }
        );

    }
    </script>
    
    <script type="text/javascript">
     $(document).ready(function(){
                showResults();
                alert("toto");
            });
   </script>
   
    <div id="resultArea"></div>
    <div id="regions_div" style="width: 900px; height: 500px;"></div>