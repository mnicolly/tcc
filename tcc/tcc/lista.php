<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Lista de Bombeiros</title>
    <style>
        body {
            background-image: -webkit-linear-gradient(150deg, #c00606 45%, #a20000 45%);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            background-position: 50% 90%;
        }

        .header {
            background-color: #AB0909;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
        }

        .header a {
            color: white;
            text-decoration: none;
            font-size: 24px;
        }

        h1 {
            text-align: center;
            margin: 20px 0;
            color: white;
        }

        .bombeiro-lista {
            max-width: 800px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>

<body>
    <header class="header">
        <a href="index.html">SOS Bombeiros</a>
        <nav>
            <a href="cadastrarBombeiro.html"><img src="imagem/voltar.png" width="30" class="rounded float-left"></a>
        </nav>
    </header>
    <h1>Lista de Bombeiros Cadastrados</h1>
    <div class="bombeiro-lista">
        <?php
        // Configuração do banco de dados
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "tcc";
        $table = "cadastro_bomb";

        // Conexão com o banco de dados
        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Falha na conexão: " . $conn->connect_error);
        }

        // Consulta para obter a lista de bombeiros
        $sql = "SELECT * FROM $table";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr><th>ID</th><th>Nome</th><th>Cargo</th><th>Email</th></tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["id"] . "</td>";
                echo "<td>" . $row["Nome_Bombeiro"] . "</td>";
                echo "<td>" . $row["Cargo"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "</tr>";
            }

            echo "</table>";
        } else {
            echo "Nenhum bombeiro cadastrado.";
        }

        $conn->close();
        ?>
    </div>
</body>

</html>
