<?php
// Script de inicialização do banco de dados para Railway
$host = getenv('MYSQLHOST') ?: 'localhost';
$user = getenv('MYSQLUSER') ?: 'root';
$pass = getenv('MYSQLPASSWORD') ?: '';
$db   = getenv('MYSQLDATABASE') ?: 'railway';
$port = (int)(getenv('MYSQLPORT') ?: 3306);

echo "Checking database connection to $host:$port (database: $db)...\n";

$max_attempts = 15;
$conn = null;

for ($i = 1; $i <= $max_attempts; $i++) {
    try {
        $conn = @new mysqli($host, $user, $pass, $db, $port);
        if (!$conn->connect_error) {
            echo "Connected to MySQL successfully!\n";
            break;
        }
    } catch (Exception $e) {
        // retry
    }
    echo "Waiting for MySQL (attempt $i/$max_attempts)...\n";
    sleep(2);
}

if (!$conn || $conn->connect_error) {
    echo "Warning: Could not connect to MySQL: " . ($conn ? $conn->connect_error : 'error') . ". Skipping auto-import.\n";
    exit(0);
}

$conn->set_charset("utf8mb4");

// Check if tables already exist
$result = $conn->query("SHOW TABLES LIKE 'usuarios'");
if ($result && $result->num_rows > 0) {
    echo "Database tables already exist. Skipping import.\n";
    $conn->close();
    exit(0);
}

$sql_file = __DIR__ . '/u287514036_csrautomotivo.sql';
if (!file_exists($sql_file)) {
    echo "SQL dump file not found at $sql_file. Skipping.\n";
    $conn->close();
    exit(0);
}

echo "Importing initial database schema and seed data from $sql_file...\n";
$sql_content = file_get_contents($sql_file);

$conn->multi_query($sql_content);
do {
    if ($res = $conn->store_result()) {
        $res->free();
    }
} while ($conn->more_results() && $conn->next_result());

if ($conn->error) {
    echo "Notice during import: " . $conn->error . "\n";
} else {
    echo "Database imported successfully!\n";
}

$conn->close();
exit(0);
