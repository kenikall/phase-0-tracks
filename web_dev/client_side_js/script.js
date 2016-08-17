function changeColor(event){
	event.target.style.backgroundColor = "blue";
}


imgary = document.getElementsByTagName("img");
star = imgary[0];
star.width = 500;

star.addEventListener("click", changeColor);