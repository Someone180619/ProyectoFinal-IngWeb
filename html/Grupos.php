<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Tabla de Posiciones</title>
    <link rel="stylesheet" href="../css/bootstrap.grupos.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&amp;display=swap">
    <link rel="stylesheet" href="../css/Gridgrupos.css">
</head>

<body style="background: rgba(80,11,36,0.59);">
    <nav class="navbar navbar-dark navbar-expand-md text-start py-3" style="background: var(--bs-black);">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="#"><img class="d-flex" width="100%" height="80" src="../img/Logo.png"></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-5"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse text-start" id="navcol-5">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link" href="Grupos.html" style="font-family: 'Source Sans Pro', sans-serif;">TABLA DE POSICIONES</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" style="font-family: 'Source Sans Pro', sans-serif;">TABLA DE CLASIFICACIÓN</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div style="height: 600px;background: url(&quot;../img/blob.png&quot;) center / cover no-repeat;">
        <div class="container py-4 py-xl-5">
            <div class="row gy-4 row-cols-1 row-cols-md-2 d-xl-flex justify-content-xl-center">
                <?php
                    $data = simplexml_load_file("../xml/grupos.xml");
                    foreach ($data->grupo as $grupo) {
                        echo '<div class="col-xl-2" style="background: #500b24;border-radius: 10px;">';
                            echo '<div class="d-flex flex-column flex-lg-row">';
                                echo '<div class="text-center d-xl-flex align-content-center justify-content-xl-start align-items-xl-center w-100">';
                                    echo '<div class="table-responsive" style="height: 100%;width: 100%;">';
                                        echo '<table class="table">';

                                        
                                            echo '<thead>';
                                                echo '<tr>';
                                                    echo '<th><a href="../scripts/api_bd/class/read.php?action=infogrupo" style="font-family: "Source Sans Pro", sans-serif;color: var(--bs-white);font-weight: bold;border-color: var(--bs-table-active-bg);">'. $grupo['name'] .'</a></th>';
                                                echo '</tr>';
                                            echo '</thead>';
                                            echo '<tbody>';
                                                foreach ($grupo->equipo as $equipo) {
                                                    echo '<tr>';
                                                        echo '<td><img src="'. $equipo->bandera .'"></td>';
                                                        echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif; color: var(--bs-white);font-weight: bold;">'. $equipo->nombre .'</td>';
                                                    echo '</tr>';
                                                }
                                            echo '</tbody>';
                                        
                                        echo '</table>';
                                    echo '</div>';
                                echo '</div>';
                            echo '</div>';
                        echo '</div>';
                        echo '<div class="col-xl-1">';
                            echo '<div class="d-flex flex-column flex-lg-row">';
                                echo '<div class="w-100"></div>';
                            echo '</div>';
                        echo '</div>';
                    }
                ?>
                <div class="col">
                    <div class="d-flex flex-column flex-lg-row">
                        <div class="py-4 py-lg-0 px-lg-4"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../scripts/bootstrap.min.js"></script>
</body>

</html>