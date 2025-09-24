const idbox = document.getElementById('idbox');
const pwbox = document.getElementById('pwbox');
const findid = document.getElementById('findid');
const findpw = document.getElementById('findpw');

document.getElementById('findpw').onclick = function(ev){  
   findid.style.setProperty("border", "3px solid #fff");
   findid.style.setProperty("border-bottom", "3px solid #000");
   findpw.style.setProperty("border", "3px solid #000");
   findpw.style.setProperty("border-bottom", "3px solid #fff");
   findpw.style.setProperty("background-color", "#fff");

   idbox.style.setProperty("display", "none");
   pwbox.style.setProperty("display", "block");
};

document.getElementById('findid').onclick = function(ev){
   findid.style.setProperty("border", "3px solid #000");
   findid.style.setProperty("border-bottom", "3px solid #fff");
   findpw.style.setProperty("border", "3px solid #fff");
   findpw.style.setProperty("border-bottom", "3px solid #000");
   findpw.style.setProperty("background-color", "#fff");

   idbox.style.setProperty("display", "block");
   pwbox.style.setProperty("display", "none");
};