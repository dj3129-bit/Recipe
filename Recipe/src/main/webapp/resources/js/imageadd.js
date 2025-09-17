let loaded = false;

const appendFile = e => {
	if (loaded) {
        alert("대표 이미지는 1회만 등록 가능합니다.");
        return;
    }

    const ul = document.getElementById("files");

    const li = document.createElement("li");

    const input = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("name", "uploadfile");
        
    li.append(input);
    ul.append(li);
    
    input.click();
    loaded = true;
};

const appendFile2 = e => {
	if (loaded) {
        alert("대표 이미지는 1회만 등록 가능합니다.");
        return;
    }

    const ul2 = document.getElementById("files2");

    const li2 = document.createElement("li");

    const input2 = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("name", "uploadfile2");
        
    li2.append(input2);
    ul2.append(li2);
    
    input.click();
    loaded = true;
};

window.addEventListener("load", () => {
    document.getElementById("mainedit").addEventListener("click", appendFile);
    document.getElementById("comedit").addEventListener("click", appendFile2);
});