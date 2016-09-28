<%-- 
    Document   : onglet1
    Created on : 13 sept. 2016, 17:03:14
    Author     : Vimel
--%>


   <h1>Vision globale </h1>

<button type="button" onclick="showResults();">Clic</button><br/>
<div id="table_sort_div" style="width: 900px; height: 500px;" ></div>
<div id="barchart_values" style="width: 900px; height: 2000px;"></div>

 <script type="text/javascript">
    google.charts.load("current", {packages:["corechart", "table"]});
    function showResults() {
        $.getJSON(
                // L'URL du service qui fournit les résultats
                'jdbc2json/SalesByCustomer?template=AllRecordsAsArray',
                // La fonction qui traite les résultats
                drawChart)
        .fail( // Quoi faire en cas d'erreur
            function(XMLHttpRequest, textStatus, errorThrown) {
                alert("error: " + textStatus);
            }
        );
}

function extraction(result){
  var data =  new google.visualization.DataTable();
     data.addColumn('string', 'Société');
     data.addColumn('number', 'Salary');
    for (key in result ){
      tabTemp = [result[key][0], result[key][1]];
      data.addRow(tabTemp);
    }
   return data;
}
    function drawChart(result) { 
        array = extraction(result);
        var formatter = new google.visualization.NumberFormat({suffix : ' $'});
        formatter.format(array, 1); // Apply formatter to second column

        var view = new google.visualization.DataView(array);
        view.setColumns([0, 1]);

        var table = new google.visualization.Table(document.getElementById('table_sort_div'));
        table.draw(view, {width: '100%', height: '100%'});

       /* var chart = new google.visualization.BarChart(document.getElementById('barchart_values'));
        chart.draw(view);*/
 }
  </script>