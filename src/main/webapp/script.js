//CAPTCHA GENERATOR

const autoCaptcha = document.getElementById("AutoGenerateValue"),
 userCaptcha = document.getElementById("userCaptchaValue"),
 message = document.getElementById("message");
 
let CaptchaText = "";

generateAutoCaptcha();
function generateAutoCaptcha()
{
	let length = 6;
	let Captchas = [];
	const randomChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	
	for(let i = 0; i < length; i++)
	{
		let index = Math.floor(Math.random() * randomChar.length);
		Captchas.push(randomChar[index]);
	}
	autoCaptcha.innerHTML = Captchas.join(" ");
	CaptchaText = Captchas.join("");
	userCaptcha.value = "";
	message.innerHTML = "";
}

function DoValidateCaptcha()
{
	if(userCaptcha.value === CaptchaText)
	{
		message.innerHTML = "Valid Captcha";
		message.setAttribute("class","green");
	}
	else
	{
		message.innerHTML = "Invalid Captcha. Try Again!";
		message.setAttribute("class","red");
	}
}