<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tcc"; // Nome do seu banco de dados
$table = "cadastro_bomb"; // Nome da tabela de cadastro de bombeiros

// Dados do formulário
$NomeBombeiro = $_POST['NomeBombeiro'];
$Endereco = $_POST['Endereço'];
$Sexo = $_POST['Sexo'];
$Email = $_POST['Email'];
$Telefone = $_POST['Telefone'];
$Cargo = $_POST['Cargo'];
$EstadoCivil = $_POST['Estado_Civil'];
$TipoSanguineo = $_POST['Tipo_Sanguineo'];
$DataNascimento = $_POST['Data_Nascimento'];

// Verifique se todos os campos obrigatórios estão preenchidos
if (empty($NomeBombeiro) || empty($Endereco) || empty($Sexo) || empty($Email) || empty($Telefone) || empty($Cargo) || empty($EstadoCivil) || empty($TipoSanguineo) || empty($DataNascimento)) {
    echo "<script>alert('Por favor, preencha todos os campos.');";
    echo "window.location.href = 'cadastrarBombeiro.html';</script>";
    exit; // Encerre o script se algum campo estiver em branco
}

// Cria a conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Prepara a consulta SQL para inserção
$sql = "INSERT INTO $table (nome_bombeiro, cargo, sexo, endereco, email, telefone, estado_civil, tipo_sanguineo, data_nascimento) VALUES ('$NomeBombeiro', '$Cargo', '$Sexo', '$Endereco', '$Email', '$Telefone', '$EstadoCivil', '$TipoSanguineo', '$DataNascimento')";

if ($conn->query($sql) === TRUE) {
    // Cadastro de bombeiro realizado com sucesso
    echo "<script>alert('Cadastro de bombeiro realizado com sucesso!');";
    echo "window.location.href = 'cadastrarBombeiro.html';</script>";
} else {
    // Erro ao cadastrar o bombeiro
    echo "<script>alert('Erro ao cadastrar o bombeiro: " . $conn->error . "');";
    echo "window.location.href = 'cadastrarBombeiro.html';</script>"; // Redireciona para a página de cadastro de bombeiros em caso de erro
}

// Fecha a conexão com o banco de dados
$conn->close();
?>
