document.getElementById('allchecked').addEventListener('change', function() {
  const items = document.querySelectorAll('.checked');
  items.forEach(cb => cb.checked = this.checked);
});