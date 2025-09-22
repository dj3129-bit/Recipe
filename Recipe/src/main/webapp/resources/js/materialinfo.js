const appendmaterial = e => {
    const ul = document.getElementById("infoul");
    
    const li = document.createElement("li");
    li.style.listStyle = "none";

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
        input.style.setProperty("margin-right", "14px");
        input.style.setProperty("margin-top", "5px");
        input.style.width = "20%";
        input.style.height = "30px";
        li.append(input);
    });

    const button = document.createElement("button");
    button.setAttribute("type", "button");
    button.style.setProperty("border-radius", "20px");
    button.style.setProperty("border", "1px solid #000");
    button.style.width = "35px";
    button.style.height = "35px";
    button.textContent = "-";
    button.addEventListener("click", () => {
        ul.removeChild(li);
    });
    li.append(button);
    
    ul.append(li);
};

let stepCount = 1;

const appendstep = e => {
	stepCount++;
	
	const cookbox = document.getElementById("cookbox");
	
	const cookorder = document.createElement("div");
    cookorder.classList.add("cookorder");
    
    //번호 빛 삭제 버튼 박스 생성
    const numbox = document.createElement("div");
    numbox.style.setProperty("display", "flex");
    
    // STEP 번호
    const stepNum = document.createElement("p");
    stepNum.textContent = `STEP ${stepCount}`;
    numbox.appendChild(stepNum);
    
    // STEP 삭제 버튼
    const minusBtn = document.createElement("button");
    minusBtn.setAttribute("type", "button");
    minusBtn.classList.add("stepminus");
    cookorder.appendChild(minusBtn);
    minusBtn.style.setProperty("border-radius", "20px");
    minusBtn.style.setProperty("border", "1px solid #000");
    minusBtn.style.setProperty("border-radius", "20px");
    minusBtn.style.setProperty("margin-left", "auto");
    minusBtn.style.setProperty("cursor", "pointer");
    minusBtn.style.width = "35px";
    minusBtn.style.height = "35px";
    minusBtn.textContent = "-";
    numbox.appendChild(minusBtn);
    cookorder.appendChild(numbox);

    // 설명 입력창
    const stepInput = document.createElement("input");
    stepInput.setAttribute("type", "textarea");
    stepInput.classList.add("step");
    cookorder.appendChild(stepInput);

    // 이미지 추가 버튼
    const imgBtn = document.createElement("button");
    imgBtn.setAttribute("type", "button");
    imgBtn.classList.add("imgadd");
    cookorder.appendChild(imgBtn);

    // 요리 방법 영역
    const cookmethod = document.createElement("div");
    cookmethod.classList.add("cookmethod");

    const methodConfig = [
      { label: "재료", placeholder: "예)밀가루 100g, 소금 2큰술" },
      { label: "도구", placeholder: "예)국자, 냄비" },
      { label: "팁", placeholder: "예)약불에 30분, 고기는 미리 데쳐서 준비" }
    ];

    methodConfig.forEach(config => {
      const methodDiv = document.createElement("div");

      const methodName = document.createElement("p");
      methodName.textContent = config.label;

      const methodInput = document.createElement("input");
      methodInput.setAttribute("type", "text");
      methodInput.setAttribute("name", "ingredient");
      methodInput.setAttribute("placeholder", config.placeholder);

      methodDiv.appendChild(methodName);
      methodDiv.appendChild(methodInput);
      cookmethod.appendChild(methodDiv);
    });

    cookorder.appendChild(cookmethod);
   	cookbox.appendChild(cookorder);
   	
   	minusBtn.addEventListener("click", () => {
        cookbox.removeChild(cookorder);
    });
}

window.addEventListener("load", () => {
    document.getElementById("addmaterial").addEventListener("click", appendmaterial);
    document.getElementById("addstep").addEventListener("click", appendstep);
});