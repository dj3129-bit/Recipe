document.getElementById('del').onclick = function(ev){
   if(!confirm('정말 삭제하시겠습니까?')) ev.preventDefault();
};