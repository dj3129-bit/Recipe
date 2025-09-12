//fetch 로그인 중복체크

let check_id = false;

window.addEventListener("load", () => {
    document.getElementById("userid").addEventListener("change", e => {
        check_id = false;
    })

    document.getElementById("checkid").addEventListener("click", e => {
        const button = e.target;
        const userid = document.getElementById("userid").value.trim();
        if(!userid) return alert("아이디를 입력하세요.");
        button.disabled = true;

        fetch(`check_id/${userid}`, {
            method: "GET",
        }).then(resp => {
            button.disabled = false;

            if(!resp.ok) throw new Error("아이디 중복검사가 불가능합니다.");
            return resp.text()
        }).then(result => {
            if(result == "OK"){
                alert("사용가능한 아이디입니다.")
                check_id = true;
            }
            else alert("이미 사용중인 아이디입니다");
        }).catch(e => alert(e));
    })

	const [form] = document.getElementsByName("signup_form");
	
    document.getElementById("checkpw").addEventListener("click", e=> {
        if(form.userpw.value !== form.checkuserpw.value){
            alert("입력한 비밀번호가 서로 일치하지 않습니다.");
            form.checkpw.value == "" && form.checkuserpw.value == "";
            form.checkuserpw.focus();
            return;
        }
        else{
        	alert("비밀번호가 일치합니다.");
        }
    })

    document.getElementById("signup").addEventListener("click", e=> {	
        form.userid.focus();
        if(form.userid.value == ""){
            alert("아이디를 입력하셔야 합니다.");
            form.userid.focus();
            return;
        }

        if(!check_id){
            alert("아이디 중복검사를 하셔야 합니다.")
            return;
        }

        if(form.userpw.value == ""){
            alert("비밀번호를 입력하셔야 합니다.");
            form.userpw.focus();
            return;
        }

        if(form.userpw.value !== form.checkuserpw.value){
            alert("입력한 비밀번호가 서로 일치하지 않습니다.");
            form.checkuserpw.value = "";
            form.checkuserpw.focus();
            return;
        }

        if(form.username.value == ""){
            alert("이름을 입력하셔야 합니다.");
            form.username.focus();
            return;
        }

        form.submit();
    })
});