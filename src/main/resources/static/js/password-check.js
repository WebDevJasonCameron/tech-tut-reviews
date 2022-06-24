"use strict";

function submitForm(e){
    const password = document.getElementById("password").value;
    const passwordCheck = document.getElementById("password-check").value;

    if(!password.match(passwordCheck)){
        e.preventDefault();
        alert("Passwords do not match");
    }

    if(password.length < 6){
        e.preventDefault();
        alert("Password not long enough")
    }

}