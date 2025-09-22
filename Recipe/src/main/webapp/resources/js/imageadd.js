let loaded1 = false;
let loaded2 = false;

const appendFile = e => {
	if (loaded1) {
        alert("대표 이미지는 1회만 등록 가능합니다.");
        return;
    }

    const ul = document.getElementById("files");

    const li = document.createElement("li");
    li.style.listStyle = "none";

    const input = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("name", "file");
    input.setAttribute("accept", "image/*");
    
    input.addEventListener("change", () => {
    	const file = input.files[0];
        if(file){
            const reader = new FileReader();
            reader.onload = function(e){
                const img = document.createElement("img");
                img.src = e.target.result;
                img.style.width = "150px";
                img.style.height = "auto";
                img.style.display = "block";
                li.appendChild(img);
            };
            reader.readAsDataURL(file);
        }
    });
        
    li.append(input);
    ul.append(li);
    
    input.click();
    loaded1 = true;
};

const appendFile2 = e => {
	if (loaded2) {
        alert("완성요리 이미지는 1회만 등록 가능합니다.");
        return;
    }

    const ul2 = document.getElementById("files2");

    const li2 = document.createElement("li");
    li2.style.listStyle = "none";

    const input2 = document.createElement("input");
    input2.setAttribute("type", "file");
    input2.setAttribute("name", "file");
    input2.setAttribute("accept", "image/*");

    input2.addEventListener("change", () => {
    	const file2 = input2.files[0];
        if(file2){
            const reader = new FileReader();
            reader.onload = function(e){
                const img = document.createElement("img");
                img.src = e.target.result;
                img.style.width = "150px";
                img.style.height = "auto";
                img.style.display = "block";
                li2.appendChild(img);
            };
            reader.readAsDataURL(file2);
        }
    });
        
    li2.append(input2);
    ul2.append(li2);
    
    input2.click();
    loaded2 = true;
};

window.addEventListener("load", () => {
    document.getElementById("mainedit").addEventListener("click", appendFile);
    document.getElementById("comedit").addEventListener("click", appendFile2);
});