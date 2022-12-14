<?php
session_start();

$info = array();
$info = $_SESSION['info'];
?>

<!DOCTYPE html>
<html lang="en" style="background: rgba(80,11,36,0.71);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Tabla de Posiciones</title>
    <link rel="stylesheet" href="../css/bootstrap.grupos.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&amp;display=swap">
    <link rel="stylesheet" href="../css/Gridgrupos.css">
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-md text-start py-3" style="background: var(--bs-black);">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="#"><img class="d-flex"
                    width="100%" height="80" src="../img/Logo.png"></a><button data-bs-toggle="collapse"
                class="navbar-toggler" data-bs-target="#navcol-5"><span class="visually-hidden">Toggle
                    navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse text-start" id="navcol-5">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link" href="Grupos.html"
                            style="font-family: 'Source Sans Pro', sans-serif;">TABLA DE POSICIONES</a></li>
                    <li class="nav-item"><a class="nav-link" href="Clasificacion.html"
                            style="font-family: 'Source Sans Pro', sans-serif;">TABLA DE CLASIFICACIÓN</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div style="height: 600px;background: url(&quot;../img/blob.png&quot;) center / cover no-repeat;">
        <div class="container py-4 py-xl-5">
            <div class="row gy-4 row-cols-1 row-cols-md-2 d-xl-flex justify-content-xl-center">
                <div class="col"
                    style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;text-align: center;font-weight: bold;background: #500b24;border-radius: 20px;">
                    <?php

                    echo '<h1>' . $_SESSION['name'] . '</h1>';
                    ?>
                </div>
                <div class="col-xl-12" style="background: #500b24;border-radius: 10px;">
                    <div class="d-flex flex-column flex-lg-row">
                        <div
                            class="text-center d-xl-flex align-content-center justify-content-xl-start align-items-xl-center w-100">
                            <div class="table-responsive" style="width: 100%;">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th
                                                style="font-family: 'Source Sans Pro', sans-serif;color: var(--bs-white);">
                                                Bandera</th>
                                            <th
                                                style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                                Nombre</th>
                                            <th
                                                style="font-family: 'Source Sans Pro', sans-serif;color: var(--bs-white);">
                                                P.J</th>
                                            <th
                                                style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;">
                                                P.G</th>
                                            <th
                                                style="font-family: 'Source Sans Pro', sans-serif;color: var(--bs-white);">
                                                P.E</th>
                                            <th
                                                style="font-family: 'Source Sans Pro', sans-serif;color: var(--bs-white);">
                                                P.P</th>
                                            <th
                                                style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;">
                                                G.F</th>
                                            <th
                                                style="font-family: 'Source Sans Pro', sans-serif;color: var(--bs-white);">
                                                G.C</th>
                                            <th
                                                style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;">
                                                DIF</th>
                                            <th
                                                style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;">
                                                Puntos</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $grupos = simplexml_load_file('../xml/grupos.xml');

                                        foreach ($info as $data) {
                                            echo '<tr>';
                                            foreach ($grupos->grupo->equipo as $equipo) {
                                                if ($equipo->nombre == $data['equipos']) {
                                                    echo '<td><img src="' . $equipo->bandera . '"></td>';
                                                    echo $equipo->nombre;
                                                }
                                            }
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['equipos'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['pj'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['pg'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['pe'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['pp'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['ga'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['gc'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['DifGol'] . '</td>';
                                            echo '<td class="text-center text-white" style="font-family: "Source Sans Pro", sans-serif;font-weight: bold;">' . $data['puntos'] . '</td>';

                                            echo '</tr>';
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-5" style="width: 510px;background: #500b24;border-radius: 20px;">
                    <div class="table-responsive" style="background: #500b24;">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center text-white">RONDA 1</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="../img/blob-1.png" width="50" height="34"></td>
                                    <td class="text-center text-white"
                                        style="font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">Qatar</td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                        Ecuador</td>
                                    <td><img src="../img/blob-2.png"></td>
                                </tr>
                                <tr>
                                    <td><img src="../img/blob-3.png"></td>
                                    <td class="text-white"
                                        style="font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">Senegal
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                        Países Bajos</td>
                                    <td><img src="../img/blob-4.png"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-xl-1" style="width: 120px;">
                    <div class="d-flex flex-column flex-lg-row">
                        <div class="py-4 py-lg-0 px-lg-4"></div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-5" style="width: 510px;background: #500b24;border-radius: 20px;">
                    <div class="table-responsive" style="background: #500b24;">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center text-white">RONDA 2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="../img/blob-1.png" width="50" height="34"></td>
                                    <td class="text-center text-white"
                                        style="font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">Qatar</td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                        Senegal</td>
                                    <td><img src="../img/blob-3.png"></td>
                                </tr>
                                <tr>
                                    <td><img src="../img/blob-4.png"></td>
                                    <td class="text-white"
                                        style="font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">Países
                                        Bajos</td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                        Ecuador</td>
                                    <td><img src="../img/blob-2.png"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="background: transparent;height: 20px;">
                    <div></div>
                </div>
            </div>
            <div class="row d-xl-flex justify-content-xl-center">
                <div class="col-md-12" style="background: #500b24;width: 510px;border-radius: 20px;">
                    <div class="table-responsive" style="background: #500b24;">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center text-white">RONDA 3</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="../img/blob-1.png" width="50" height="34"></td>
                                    <td class="text-center text-white"
                                        style="font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">Qatar</td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                        Países Bajos</td>
                                    <td><img src="../img/blob-4.png"></td>
                                </tr>
                                <tr>
                                    <td><img src="../img/blob-3.png"></td>
                                    <td class="text-white"
                                        style="font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">Senegal
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-style: italic;">
                                    </td>
                                    <td
                                        style="color: var(--bs-white);font-family: 'Source Sans Pro', sans-serif;font-weight: bold;">
                                        Ecuador</td>
                                    <td><img src="../img/blob-2.png"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../scripts/JS/bootstrap.min.js"></script>
</body>

</html>