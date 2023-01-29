
$(document).ready(function(){
	window.addEventListener("message",function(event){
		if (event.data.css == "negado"){
			var html = "<div class='notification-box'><span class='fa-stack'><i class='fas fa-times'></i><i class='fas fa-times fill red'></i></span><div class='group negado'><div class='title denied'>NEGADO</div><div class='texto'>"+event.data.mensagem+"</div></div></div>"
		} else if(event.data.css == "sucesso"){
			var html = "<div class='notification-box'><span class='fa-stack'><i class='fas fa-check'></i><i class='fas fa-check fill'></i></span><div class='group'><div class='title'>SUCESSO</div><div class='texto'>"+event.data.mensagem+"</div></div></div>"
		} else if(event.data.css == "importante"){
			var html = "<div class='notification-box'><i class='fas fa-exclamation'></i><i class='fas fa-exclamation fill-imp blue'></i><div class='group'><div class='title important'>IMPORTANTE</div><div class='texto'>"+event.data.mensagem+"</div></div></div>"
		} else if(event.data.css == "comunicado"){
			var html = "<div class='notification-box'><i class='fas fa-bullhorn'></i><i class='fas fa-bullhorn fill-imp yellow'></i><div class='group'><div class='title comunicado'>COMUNICADO</div><div class='texto'>"+event.data.mensagem+"</div></div></div>"
		}
			var clippings = [
			{
				top: 32,
				right: 50,
				bottom: 50,
				left: 0
			},
			{
				top: 28,
				right: 50,
				bottom: 50,
				left: 0
			}
		];
		$(html).appendTo(".notification-container").animate({
			opacity: 1
		    }, 'fast').delay(event.data.time).fadeOut(2000);;
		setTimeout(function(){
		$(".fill").animate(
			{
				clip: clippings[1]
			}, event.data.time);
		$(".fill-imp").animate(
			{
			  clip: clippings[0]
			}, event.data.time);
		}, 1000);
		
	})
});