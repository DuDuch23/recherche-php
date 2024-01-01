<?php
include ('./connexion.php');
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recherche</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-12 col-md-8 col-lg-6">
                <div class="form-group">
                    <input class="form-control" type="text" id="search" value="" placeholder="Recherche">
                </div>

                <div styles="margin-top: 20px;">
                    <div id="result-search">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function(){
            $('#search').keyup(function(){
                $('#result-search').html('');

                var recherche = $(this).val();

                if(recherche != ""){
                    $.ajax({
                        type: 'GET',
                        url: 'fonctions/recherche.php',
                        data: 'search=' + encodeURIComponent(recherche),
                        success: function(data){
                            if(data != ""){
                                $('#result-search').append(data);
                            }
                            else    
                            {
                                document.getElementById('result-search').innerHTML = 
                                "<div style='font-size: 20px; text-align: center; margin-top: 10px;'>Aucune info trouvé</div>"
                            }
                        }
                    });
                }
            });
        });
    </script>
</body>
</html>