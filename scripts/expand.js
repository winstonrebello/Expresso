const readmorebtn= document.querySelector('.read-more-btn');
const text= document.querySelector('.text');

readmorebtn.addEventListner('click',(e)=>{
	text.classList.toggle('showmore');
})