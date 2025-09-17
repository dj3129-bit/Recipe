const appendmaterial = e => {
    const ul = document.getElementById("infoul");
    
    const li = document.createElement("li");

	const inputConfig = [
        { name: "ingredient", placeholder: "재료명" },
        { name: "quantity", placeholder: "수량" },
        { name: "unit", placeholder: "단위" },
        { name: "note", placeholder: "비고" }
    ];
    
    inputConfig.forEach(config => {
    	const input = document.createElement("input");
    	input.setAttribute("type", "text");
        input.setAttribute("name", config.name);
        input.setAttribute("placeholder", config.placeholder);
        input.style.marginRight = "4px";
        li.append(input);
    });

    const button = document.createElement("button");
    button.setAttribute("type", "button");
    button.textContent = "-";
    button.addEventListener("click", () => {
        ul.removeChild(li);
    });
    li.append(button);
    
    ul.append(li);
};

window.addEventListener("load", () => {
    document.getElementById("addmaterial").addEventListener("click", appendmaterial);
});