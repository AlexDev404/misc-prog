var modalbtn = document.querySelector('.modalbt');
var modalbg = document.querySelector('.modalbg');
var mX = document.querySelector('.modal-X');

modalbtn.addEventListener('click', function(){
    modalbg.classList.add('active-bg');
}); 
mX.addEventListener('click', function(){
    modalbg.classList.remove('active-bg');
}); 