let loaded1 = false;
let loaded2 = false;

const appendFile = e => {
	if (loaded1) {
        alert("대표 이미지는 1회만 등록 가능합니다.");
        return;
    }

	const input = document.getElementById("file1");
    const ul = document.getElementById("files");
    
    input.addEventListener("change", () => {
    	const file = input.files[0];
        if(file){
            const reader = new FileReader();
            reader.onload = function(e){
            
            	const li = document.createElement("li");
    			li.style.listStyle = "none";
            
                const img = document.createElement("img");
                img.src = e.target.result;
                img.style.width = "150px";
                img.style.height = "auto";
                img.style.display = "block";
                
                li.appendChild(img);
                ul.innerHTML = "";
                ul.append(li);
            };
            reader.readAsDataURL(file);
        }
    });
    
    input.click();
    loaded1 = true;
};

const appendFile2 = e => {
	if (loaded2) {
        alert("대표 이미지는 1회만 등록 가능합니다.");
        return;
    }

	const input2 = document.getElementById("file2");
    const ul2 = document.getElementById("files2");
    
    input.addEventListener("change", () => {
    	const file2 = input2.files[0];
        if(file2){
            const reader = new FileReader();
            reader.onload = function(e){
            
            	const li = document.createElement("li");
    			li.style.listStyle = "none";
            
                const img = document.createElement("img");
                img.src = e.target.result;
                img.style.width = "150px";
                img.style.height = "auto";
                img.style.display = "block";
                
                li.appendChild(img);
                ul2.innerHTML = "";
                ul2.append(li);
            };
            reader.readAsDataURL(file);
        }
    });
    
    input2.click();
    loaded2 = true;
};

window.addEventListener("load", () => {
    document.getElementById("mainedit").addEventListener("click", appendFile);
    document.getElementById("comedit").addEventListener("click", appendFile2);
});