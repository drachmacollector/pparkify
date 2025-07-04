<?php
// ── AUTO‑SEED SLOTS FOR TODAY + NEXT WEEK ──────────────────────────────────────

// 1. Connect to the database
$conn = new mysqli(
    "sql105.infinityfree.com",
    "if0_39017725",
    "jeZyqYSlUAhhmM",
    "if0_39017725_parkify_db"
);
if ($conn->connect_error) {
    die("DB Connection failed: " . $conn->connect_error);
}

// 2. Helper function: seed slots for a single date
function seedSlotsForDate($conn, $date) {
    // Set the user variable in MySQL
    $set = $conn->prepare("SET @d = ?");
    $set->bind_param("s", $date);
    $set->execute();
    $set->close();

    // Insert new rows for any parkingspot that doesn't already have them on that date
    $insert = $conn->prepare("
        INSERT INTO daily_slot_availability (
            area_id, date,
            slot1, slot2, slot3, slot4, slot5, slot6,
            slot7, slot8, slot9, slot10, slot11
        )
        SELECT
            id, @d,
            total_slots, total_slots, total_slots, total_slots, total_slots, total_slots,
            total_slots, total_slots, total_slots, total_slots, total_slots
        FROM parkingspots
        WHERE id NOT IN (
            SELECT area_id FROM daily_slot_availability WHERE date = @d
        )
    ");
    $insert->execute();
    $insert->close();
}

// 3. Seed for today + next 6 days
$today = new DateTime('today');
for ($i = 0; $i < 7; $i++) {
    seedSlotsForDate($conn, $today->format('Y-m-d'));
    $today->modify('+1 day');
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Parkify</title>
  <link rel="stylesheet" href="reg.css" />
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@700&family=Michroma&family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
      <link rel="shortcut icon" href="car.ico" type="image/x-icon">

</head>
<body>

  
  <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
  <df-messenger
    intent="WELCOME"
    chat-title="SPARKY"
    agent-id="15538dd3-8130-4a97-a1dc-26b4854c4880"
    language-code="en"
  ></df-messenger>
  
    <div class="top">
      <header class="hero">
        <div class="logo-container">
          <img src="logo.png" class="logo-img" alt="Parkify Logo" />
          <div class="logo-glow"></div>
          <div class="logo-pulse"></div>
        </div>
        <h2 class="hero-subtitle">SMART, EFFORTLESS & SECURE PARKING, ANYTIME</h2>
      </header>
    </div>
    
    <form action="ifok.php" method="POST" class="login-form">
      <div class="form-container">
        <div class="input-group">
          <input type="text" name="userName" id="userName" required />
          <label for="userName">USERNAME</label>
          <div class="input-highlight"></div>
        </div>
        
        <div class="input-group">
          <input type="password" name="password" id="password" required />
          <label for="password">PASSWORD</label>
          <div class="input-highlight"></div>
        </div>
        
        <p class="forgot-password"><a href="..\forgetpassword page\fg.php">Forgot Password?</a></p>
        
        <button id="submit" class="cyber-button">
          <span class="cyber-button-text">SUBMIT</span>
        </button>
      </div>
      
      <div class="signup-section">
        <p class="signup">
          <span class="new">NEW USER?</span>
          <a href="..\userName\userName.php" class="signup-link">SIGN UP HERE</a>
        </p>
        
        <span class="or">OR LOGIN USING</span>
        
        <div class="social-icons">
          <a href="https://google.com/" target="_blank" class="social-icon"><i class="fa-brands fa-google"></i></a>
          <a href="https://facebook.com/" target="_blank" class="social-icon"><i class="fa-brands fa-facebook-f"></i></a>
          <a href="https://apple.com/" target="_blank" class="social-icon"><i class="fa-brands fa-apple"></i></a>
        </div>
      </div>
    </form>
    
    <a href="../admin/admin_login.php" class="admin-button">
      <button id="admin" class="cyber-button small">
        <span class="cyber-button-text">ADMIN</span>
      </button>
    </a>

  
  <div class="corner-decoration top-left"></div>
  <div class="corner-decoration top-right"></div>
  <div class="corner-decoration bottom-left"></div>
  <div class="corner-decoration bottom-right"></div>
  
    <!-- Canvas background moved to top of body -->
  <canvas id="particles"></canvas>
  <script src="particles.js"></script>
  <script src="animations.js"></script>
</body>
</html>