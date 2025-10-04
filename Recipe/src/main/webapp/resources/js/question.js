const appendFile = e => {
    const ul = document.getElementById("files");

    const li = document.createElement("li");
    li.style.listStyle = "none";
    li.style.width = "100%";
    li.style.height = "100%";
    li.style.display = "block";

    const input = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("name", "imagefile");
    input.setAttribute("accept", "image/*");
    input.style.display = "none";

    input.addEventListener("change", () => {
    	const imagefile = input.files[0];
        if(imagefile){
            const reader = new FileReader();
            reader.onload = function(e){
                const img = document.createElement("img");
                img.src = e.target.result;
                img.style.width = "100%";
                img.style.height = "100%";
                img.style.display = "block";
                li.appendChild(img);
            };
            reader.readAsDataURL(imagefile);
        }
    });
        
    li.append(input);
    ul.append(li);
    
    input.click();
    document.getElementById("photoedit").style.display = "none";
};

window.addEventListener("load", () => {
    document.getElementById("photoedit").addEventListener("click", appendFile);
});