const form = document.getElementById("register");
const passWord = form.pass;
const confirmPass = form.repeatPass;
const feedback = document.getElementById("confirmPassword-feedback");
const submit = document.getElementById("enviar-registro");
let isPassRight = false;

confirmPass.addEventListener("input", () => {
  if (passWord.value != confirmPass.value) {
    feedback.innerHTML = "Las contraseñas no coinciden, pruebe otra vez.";
    isPassRight = false;
    submit.disabled = true;
  } else {
    feedback.innerHTML = "";
    isPasswordMatch = true;
    submit.disabled = false;
  }
});
