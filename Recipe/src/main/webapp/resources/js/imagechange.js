const changefile = e => {
	const input = document.getElementById("changefile");
	document.getElementById("changefile").addEventListener("change", (e) => {
    	const file = e.target.files[0];
    	if(file){
    		const reader = new FileReader();
    		reader.onload = function(e){
    			document.getElementById("mainimage").src = e.target.result;
    		};
    		reader.readAsDataURL(file);
    	}
    });
    
    input.click();
}

const changefile2 = e => {
	const input2 = document.getElementById("changefile2");
	document.getElementById("changefile2").addEventListener("change", (e) => {
    	const file2 = e.target.files[0];
    	if(file2){
    		const reader = new FileReader();
    		reader.onload = function(e){
    			document.getElementById("comimage").src = e.target.result;
    		};
    		reader.readAsDataURL(file2);
    	}
    });
    
    input2.click();
}

window.addEventListener("load", () => {
    document.getElementById("mainchange").addEventListener("click", changefile);
    document.getElementById("comchange").addEventListener("click", changefile2);
});