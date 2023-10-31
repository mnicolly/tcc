<?php
session_start();

// Destruir todas as sessões existentes
session_destroy();

// Redirecionar de volta para a página de login
header("Location: ../auth.html");
exit();
?>
