var script = "job_load_delivery"
var code = ""

function request(url, data){
	return new Promise(resolve => {
    try {
      $.post(`http://${script}/${url}`, JSON.stringify(data), result => {
        let responseJson = JSON.parse(result);
        if (typeof responseJson === "string")
          responseJson = JSON.parse(responseJson);
        resolve(responseJson);
      });
    } catch {
      $.post(`http://${script}/close`);
    }
  });
}

$(document).ready(function(){
	window.addEventListener("message",function(event){
		switch (event.data.type){
			case "setShow":
				if(event.data.content)
					$("#body").fadeIn(100);
				else
					$("#body").fadeOut(100);
			break;
			case "setJob":
				code = event.data.content
				if(code == "ifood-moto" || code == "ifood-bike"){
					$(".mercado").fadeOut(100);
					$(".restaurante").fadeIn(100);
				}else{
					$(".mercado").fadeIn(100);
					$(".restaurante").fadeOut(100);
				}
			break;
		};
	});

	document.onkeyup = function(data){
		if (data.which == 27){
			$("#body").fadeOut(100);
			request("close");
		};
	};
});

$(document).on("click",".btn-missao",function(){
	request("init", code);
	$("#body").fadeOut(100);
});

$(document).on("click",".btn-close",function(){
	$("#body").fadeOut(100);
	request("close");
});