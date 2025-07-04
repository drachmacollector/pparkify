<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Reset Password</title>
    <link rel="stylesheet" href="forget.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="top">
        <header class="hero">
            <h1 class="hero-title">RESET PASSWORD</h1>
            <p class="hero-subtitle">Enter your email and solve the captcha to proceed</p>
        </header>
    </div>

    <form>
        <div class="box">
            <label for="email">Email</label>
            <input type="text" name="email" id="email" placeholder="Enter your email"><br><br>

            <label for="captcha">CAPTCHA CODE:</label>
            <div class="captcha-box" id="captcha">A7X9P</div>

            <div class="icon">
                <i class="fa-solid fa-rotate" onclick="generateCaptcha()"></i>
            </div>
            <br>

            <label for="captchaInput">Enter CAPTCHA:</label>
            <input type="text" name="captchaInput" id="captchaInput" placeholder="Enter CAPTCHA code"><br><br>

            <button id="submit">Submit</button>
            <p id="message"></p>
        </div>
    </form>

    <script src="fg.js"></script>
</body>
</html>
