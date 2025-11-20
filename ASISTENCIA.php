<?php
$conn = new mysqli("localhost", "root", "Gr4e1Y00", "Asistencia");

// Procesar asistencia si se recibe info del QR
if (isset($_POST['info'])) {
    $info = $_POST['info'];
    preg_match("/Matricula: (\d+)\nNombre: (.+)\nGrupo: (.+)/", $info, $matches);

    if (count($matches) === 4) {
        $matricula = $matches[1];
        $nombre = $matches[2];
        $grupo = $matches[3];

        // Verificar si ya registró asistencia hoy
        $hoy = date('Y-m-d');
        $check = $conn->prepare("SELECT * FROM asistencias WHERE matricula = ? AND DATE(fecha) = ?");
        $check->bind_param("ss", $matricula, $hoy);
        $check->execute();
        $result = $check->get_result();

        if ($result->num_rows > 0) {
            echo "⚠️ Ya se registró asistencia hoy para matrícula $matricula<br>";
        } else {
            // Insertar en tabla asistencias
            $stmt = $conn->prepare("INSERT INTO asistencias (matricula, nombre, grupo) VALUES (?, ?, ?)");
            $stmt->bind_param("sss", $matricula, $nombre, $grupo);
            $stmt->execute();

            // Actualizar campo 'asistio' en tabla lista
            $update = $conn->prepare("UPDATE lista SET asistio = NOW() WHERE matricula = ?");
            $update->bind_param("s", $matricula);
            $update->execute();

            echo "✅ Asistencia registrada para matrícula $matricula<br>";
        }
    } else {
        echo "❌ Formato de QR inválido<br>";
    }
}

// Obtener registros de asistencias
$result = $conn->query("SELECT * FROM asistencias ORDER BY fecha DESC");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Asistencias</title>
    <style>
        body { font-family: Arial; background: #f4f4f4; padding: 20px; }
        table { width: 100%; border-collapse: collapse; background: white; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
        th { background-color: #0cb225; color: white; }
    </style>
</head>
<body>
    <h2>📋 Registro de Asistencias</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Matrícula</th>
            <th>Nombre</th>
            <th>Grupo</th>
            <th>Fecha</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
            <td><?= $row['id'] ?></td>
            <td><?= $row['matricula'] ?></td>
            <td><?= $row['nombre'] ?></td>
            <td><?= $row['grupo'] ?></td>
            <td><?= $row['fecha'] ?></td>
        </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>