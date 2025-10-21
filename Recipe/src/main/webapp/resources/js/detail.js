  document.getElementById("recbtn").addEventListener("click", function () {
    const recipeid = this.getAttribute("data-recipeid");

    fetch("/post/recommend", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ recipeid: recipeid })
    })
    .then(response => response.json())
    .then(data => {
      if (data.success) {
        alert("추천되었습니다!");
      } else {
        alert("추천 실패");
      }
    }).catch(error => {
      console.error("에러 발생:", error);
      alert("서버 오류가 발생했습니다.");
    });
  });
  
  document.querySelector(".comment").addEventListener("click", function(){
    const isLogin = document.getElementById("isLogin").value === "true";

    if(!isLogin){
        if(confirm("로그인이 필요합니다. 로그인하시겠습니까?")){
                window.location.href = "/login";
        } else return;
    }
  })

  document.getElementById("commentedit").addEventListener("click", function () {
	  const content = document.querySelector(".comment").value;
      const recipeid = document.querySelector('input[name="commentinput"]').value;
      const ul = document.getElementById("commentul");

      if (!content.trim()) {
        alert("댓글 내용을 입력해주세요.");
        return;
      }
      
      if (!recipeid) {
        alert("레시피 ID가 유효하지 않습니다.");
        return;
      }
	  
	  fetch('/post/comment', {
		    method: 'POST',
		    headers: {
		      'Content-Type': 'application/json'
		    },
		    body: JSON.stringify({ recipeid:recipeid, commentcontent: content })
		  })
		  .then(res => res.json())
		  .then(data => {
			  if(data.success){
				  const li = document.createElement('li');
				  const p1 = document.createElement('p');
				  const p2 = document.createElement('p');
                  p1.textContent = data.comment.userid + " | " +  data.comment.commentdate + " | 답글 | 신고";
				  p2.textContent = content;

                  li.appendChild(p1);
                  li.appendChild(p2);

                  ul.prepend(li);
                  
                  document.querySelector(".comment").value = '';
			  }
		  })
		  .catch(err => {
		    alert('댓글 등록 실패');
		    console.error(err);
		  });
  });