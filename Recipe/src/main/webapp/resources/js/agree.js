document.getElementById('allchecked').addEventListener('change', function() {
  const items = document.querySelectorAll('.checked');
  items.forEach(cb => cb.checked = this.checked);
});

document.getElementById('next').addEventListener('click', function(e) {
  e.preventDefault();

  const req = document.querySelectorAll('input[name="required"]');
  let allChecked = true;
  
  req.forEach(term => {
    if (!term.checked) {
      allChecked = false;
    }
  });
  
  if(allChecked){
  	window.location.href = "/signup";
  } else{
  	alert("필수 약관에 모두 동의하셔야 진행됩니다.");
  }
});