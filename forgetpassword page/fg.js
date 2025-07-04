

function generateCaptcha() {
    document.getElementById("captcha").innerHTML = "";
    var charsArray = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@!#$%^&*";
    var lengthOtp = 6;
    var captcha = [];
    
    for (var i = 0; i < lengthOtp; i++) {
      var index = Math.floor(Math.random() * charsArray.length); // Fix index calculation
      if (captcha.indexOf(charsArray[index]) == -1) {
        captcha.push(charsArray[index]);
      } else {
        i--;
      }
    }
  
    var canv = document.createElement("canvas");
    canv.id = "captcha";
    canv.width = 150;
    canv.height = 50;
    
    var ctx = canv.getContext("2d");
    ctx.fillStyle = "white";
    ctx.fillRect(0, 0, canv.width, canv.height);
  
    ctx.font = "25px Georgia";
    ctx.fillStyle = "black";
  
    // Convert array to string without commas
    var captchaText = captcha.join("");
    ctx.fillText(captchaText, 10, 35); // Display cleaned string
    
    code = captchaText; // Store the correct captcha value
    document.getElementById("captcha").appendChild(canv);
  }
  
  function validateCaptcha(){
      let userInput=document.getElementById("captchaInput").value;
      let generatedCaptcha = document.getElementById("captcha").innerText;
      if (userInput===code){
          document.getElementById("captchaInput").style.backgroundColor="green";
          document.getElementById("message").innerHTML = "<span style='color:green;'>Captcha Verified and email sent successfully!</span>";
          
          setTimeout(() => {
            window.location.href = "../load/loading.php";
        }, 1000);      
  
      }else{
          document.getElementById("captchaInput").style.backgroundColor="red";
          document.getElementById("message").innerHTML = "<span style='color:red;'>Incorrect Captcha. Try again!</span>";
      }
  
  }
  
  window.onload = generateCaptcha;
  
  document.getElementById("submit").addEventListener("click", (event) => {
    event.preventDefault();
  
    const emailValue = document.getElementById("email").value.trim();
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  
    if (!emailPattern.test(emailValue)) {
        alert("Not a valid e-mail address");
        return;
    }
  
    validateCaptcha(); // Validate CAPTCHA and redirect if correct
  });