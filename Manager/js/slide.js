<!--滑动门控制-->
 function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags").getElementsByTagName("a");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.className = "sec";
	// 操作内容
	for(i=0; j=document.getElementById("tagContent"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
 <!--滑动门控制one-->
 function selectTaga(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tagsa").getElementsByTagName("a");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.className = "sec";
	// 操作内容
	for(i=0; j=document.getElementById("tagContenta"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
 
<!--滑动门控制two-->
 function selectTagb(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tagsb").getElementsByTagName("a");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.className = "sec";
	// 操作内容
	for(i=0; j=document.getElementById("tagContentb"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}
