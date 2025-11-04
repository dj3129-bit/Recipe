let loaded = false;

const appendFile = e => {
	if (loaded) {
        alert("대표 이미지는 1회만 등록 가능합니다.");
        return;
    }
	
	const input = document.getElementById("kitfile");
    const ul = document.getElementById("kitfiles");
    
    input.addEventListener("change", () => {
    	const kitfile = input.files[0];
        if(kitfile){
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
            reader.readAsDataURL(kitfile);
        }
    });
    
    input.click();
    loaded = true;
};

window.addEventListener("load", () => {
    document.getElementById("kitimagedit").addEventListener("click", appendFile);
});