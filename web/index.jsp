
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
          <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
          
          <script src="./javascript/materialize.js"></script>
          <script src="./javascript/materialize.min.js"></script>
           <script src="./javascript/index.js"></script>
           <script src="http://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>
           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
          
           <script type="text/javascript" src="https://www.google.com/jsapi"></script>
         
          <link rel ="stylesheet" href="./css/materialize.css"/>
          <link rel ="stylesheet" href="./css/materialize.min.css"/>
          <link rel ="stylesheet" href="./css/test.css"/>
          
        <title>ProjetWeb2016</title>
        <script type="text/javascript">
            $(document).ready(function(){
               $(".button-collapse").sideNav({
                 menuWidth: 200              
               });
               choixOnglet();  
               
            });
        </script>
    </head>
    <body>
        <div id="Menu"> 
            <div id="slide-out" class="side-nav fixed grey darken-3" align="center" >     
                <h2 style="color: white;">Hello</h2>
            <ul >
               <li><!--servlet Jdbc2json-->
                    <ul id="menu">
                       <!-- <li><a href="jdbc2json/TousLesClients">Tous les clients (JSON)</a></li>
                        <li><a href="JQueryClient.html">Un client AJAX JQuery</a></li>
                        <li><a href="JQueryMustacheClient.html">Un client AJAX JQuery + moteur de template Mustache</a></li>
                        <li><a href="categoryEditor.html">Insertion dans la base en mode AJAX</a></li>
                        <li><a href="googlePieChartAjax.jsp">Un client AJAX JQuery + Visualisations Google</a></li>
                        <li><div class="divider"></div></li>-->
                        <li > <a id ="onglet1" >Vision globale</a></li>
                        <li><div class="divider"></div></li>
                        <li > <a id ="onglet2">Produits</a></li>
                        <li><div class="divider"></div></li>
                        <li > <a id ="onglet3">Commandes</a></li>
                        <li><div class="divider"></div></li>
                        <li > <a id ="onglet4">Clients</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        </div>
      
           <nav>
            <div id="enTete"class="nav-wrapper fixed">
                <a href="#" class="brand-logo center">Tableau de bord</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                  <li><a href="#">Sass</a></li>
                  <li><a href="#">Components</a></li>
                  <li><a href="#">JavaScript</a></li>
                </ul>
            </div>
           </nav>
        
        <div id="corps"></div>
       

  <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">Menu</i></a>
  
    </body>
</html>
