<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
          <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
          
          <script src="./javascript/materialize.js"></script>
          <script src="./javascript/materialize.min.js"></script>
          <link rel ="stylesheet" href="./css/materialize.css"/>
          <link rel ="stylesheet" href="./css/materialize.min.css"/>
          <link rel ="stylesheet" href="./css/test.css"/>
        <title>ProjetWeb2016</title>
        <script>
            $(document).ready(function(){
               $(".button-collapse").sideNav({
                 menuWidth: 200              
               });
            });
             

        </script>
    </head>
    <body>
        <div id="Menu"> 
            <div id="slide-out" class="side-nav fixed" align="center">     
        <h2>Hello</h2>
            <ul >
               <li><!--servlet Jdbc2json-->
                    <ul id="menu">
                       <!-- <li><a href="jdbc2json/TousLesClients">Tous les clients (JSON)</a></li>
                        <li><a href="JQueryClient.html">Un client AJAX JQuery</a></li>
                        <li><a href="JQueryMustacheClient.html">Un client AJAX JQuery + moteur de template Mustache</a></li>
                        <li><a href="categoryEditor.html">Insertion dans la base en mode AJAX</a></li>
                        <li><a href="googlePieChartAjax.jsp">Un client AJAX JQuery + Visualisations Google</a></li>
                        <li><div class="divider"></div></li>-->
                        <li><a href="./test/onglet1.jsp">Vision globale</a></li>
                        <li><a href="./test/Produit.jsp">Produits</a></li>
                        <li><a href="./test/Commande.jsp">Commandes</a></li>
                        <li><a href="./test/Client.jsp">Clients</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        </div>
      
           <nav>
            <div id="enTete"class="nav-wrapper fixed">
                <a href="#" class="brand-logo">Logo</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                  <li><a href="#">Sass</a></li>
                  <li><a href="#">Components</a></li>
                  <li><a href="#">JavaScript</a></li>
                </ul>
            </div>
           </nav>
        
        
        
        
        
 <!--  <ul id="slide-out" class="side-nav">
   <li><div class="userView">
      <img class="background" src="images/office.jpg">
      <a href="#!user"><img class="circle" src="images/yuna.jpg"></a>
      <a href="#!name"><span class="white-text name">John Doe</span></a>
      <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
    </div></li>
    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><a href="#!">Second Link</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
  </ul>-->
  <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">Menu</i></a>
        
    </body>
</html>
