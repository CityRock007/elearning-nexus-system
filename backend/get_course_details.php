<?php
header("Content-Type: application/json");

$course_id = $_GET['course_id'] ?? null;
$user_id = $_GET['user_id'] ?? 1; // Default for testing

if (!$course_id) {
    echo json_encode(["status" => "error", "message" => "Course ID is required"]);
    exit;
}

// Database Connection
$conn = new mysqli("localhost", "root", "", "elearning_db");

$query = "SELECT l.*, IF(p.is_completed, 1, 0) as completed 
          FROM lessons l 
          LEFT JOIN user_progress p ON l.id = p.lesson_id AND p.user_id = $user_id 
          WHERE l.course_id = ? 
          ORDER BY l.order_index ASC";

$stmt = $conn->prepare($query);
$stmt->bind_param("i", $course_id);
$stmt->execute();
$result = $stmt->get_result();

$lessons = [];
while ($row = $result->fetch_assoc()) {
    $lessons[] = $row;
}

echo json_encode([
    "status" => "success",
    "course_id" => $course_id,
    "lessons" => $lessons
]);
?>
