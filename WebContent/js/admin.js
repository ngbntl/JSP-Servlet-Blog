/*
* Get the ajax processing object
  * @returns {xmlhttp}
  */
function getXHR(){	
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;	
}
/*
  *Send to server
  */
function sendURL(url){	
	// 获取ajax
	var xmlhttp = getXHR();		
	xmlhttp.onreadystatechange = function() {
// if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
// //Here you can write the processing after the server returns the solution result
// }
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();		
}
/**
 * Find a specified input in a category
 * @param class_name
 * @param name
 * @returns
 */
function findInputInClass(class_name , name){
	
	var inputs = document.getElementsByClassName(class_name);
	var input;		
	
	for(var i=0 ;i<inputs.length;i++){		
		if(inputs[i].value == name){
			input = inputs[i];
			break;
		}			
	}
	return input;	
}

/**
 * Delete article
 * @param article_id
 */
function delete_article(hod , article_id){
	var recorder = hod.parentNode.parentNode.parentNode;	
	var recorder_parent = recorder.parentNode;
	recorder_parent.removeChild(recorder);
	//send
	var url = "/Blog/AdminDataServlet?op=delete_article"+"&&article_id="+article_id;
	sendURL(url);
}

/**
 * @param hod
 * @param sort
 */
function delet_sort(hod,sort){
	
	var input = findInputInClass("sort",sort);
	

	var recorder = input.parentNode;
	var recorder_parent = recorder.parentNode;
	recorder_parent.removeChild(recorder);

	var url = "/Blog/AdminDataServlet?op=sort_delete"+"&&sort="+sort;
	sendURL(url);	
}

/**
 * @param hod
 * @param sort
 */

var input; 
var temp;
function edit_sort(hod,sort){
	
	if(hod.innerHTML == "Sửa"){
	
		input = findInputInClass("sort",sort);		
	
		temp = input.value;					
		
		input.removeAttribute("disabled");			
		
	
		input.value="";	
		input.focus();
		input.value=temp;					
	
		hod.innerHTML="Giữ";			
	}else{		
		
		hod.innerHTML="Sửa";	
		input.setAttribute("disabled","disabled");
		
	
		var url = "/Blog/AdminDataServlet?op=sort_update"+"&&old_sort="+temp+"&&new_sort="+input.value ;		
		sendURL(url);								
	}
}


/**
 * @param hod
 * @param tag
 */
function delet_tag(hod,tag){

	var input = findInputInClass("tags",tag);	

	var recorder = input.parentNode;
	var recorder_parent = recorder.parentNode;
	recorder_parent.removeChild(recorder);
	

	var url = "/Blog/AdminDataServlet?op=tag_delete"+"&&tag="+tag;
	sendURL(url)	
}


/**
 * @param hod
 * @param sort
 */

var input_t; 
var temp_t;
function edit_tag(hod,tag){
	
	if(hod.innerHTML == "Sửa"){
	
		input_t = findInputInClass("tags",tag);		
		
		temp_t = input_t.value;					
	
		input_t.removeAttribute("disabled");			
		
		
		input_t.value="";	
		input_t.focus();
		input_t.value=temp_t;					
		//修改hod内容为保存		
		hod.innerHTML="Giữ";			
	}else{		
		
		hod.innerHTML="Sửa";	
		input_t.setAttribute("disabled","disabled");
		
		
		var url = "/Blog/AdminDataServlet?op=tag_update"+"&&old_tag="+temp_t+"&&new_tag="+input_t.value ;		
		sendURL(url);								
	}
}