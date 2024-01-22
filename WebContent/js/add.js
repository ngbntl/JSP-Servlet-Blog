function sort_click(btn){
 	
 	var value = btn.value;
 	
 	var sort = document.getElementById("sort");
 
 	sort.value=value;

 }
 function tags_click(btn){	
	
	var value = btn.value;
	
	var tags = document.getElementById("tags");

	var tags_value = tags.value;
	
	if(tags_value.indexOf(value) > -1)return ;

	tags.value = tags_value+" "+value;
 }
