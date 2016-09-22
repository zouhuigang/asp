// JavaScript Document
  $(function(){
		 function over(list, num, leftbox,current){
		$(list).mouseover(function(){
			var index = $(this).index();
			$(leftbox).eq(index).show().siblings(leftbox).hide();
			$(num).eq(index).addClass(current).siblings(num).removeClass(current)
			})
		
		$(num).mouseover(function(){
			$(num).removeClass(current);
			$(this).addClass(current);
			var index = $(this).index();
			$(leftbox).eq(index).show().siblings(leftbox).hide();
			})
		 }
		  over('#p2 .product_1','#p2 .num span','#p2 .slides li','current')
		  over('#p4 .product_1','#p4 .num span','#p4 .slides li','current')
		 })	
		 
		 $(function(){
		 function over2(list, num, leftbox,current){
		$(list).mouseover(function(){
			var index = $(this).index()-1;
			$(leftbox).eq(index).show().siblings(leftbox).hide();
			$(num).eq(index).addClass(current).siblings(num).removeClass(current)
			})
		
		$(num).mouseover(function(){
			$(num).removeClass(current);
			$(this).addClass(current);
			var index = $(this).index();
			$(leftbox).eq(index).show().siblings(leftbox).hide();
			})
		 }
		  over2('#p1 .product_1','#p1 .num span','#p1 .slides li','current')
		  over2('#p3 .product_1','#p3 .num span','#p3 .slides li','current')
		 })	 
		 
		 
		 
		setInterval(function(){
		var index = $(".num span[class=current]").index();
		//alert(index);
		index = index+1;
		if(index>=4){index=0}
		$("#p1 .num span").removeClass("current").eq(index).addClass("current");
		$("#p1 .slides li").eq(index).show().siblings('#p1 .slides li').hide();
	},5000);
	setInterval(function(){
		var index = $(".num span[class=current]").index();
		//alert(index);
		index = index+1;
		if(index>=4){index=0}
		$("#p2 .num span").removeClass("current").eq(index).addClass("current");
		$("#p2 .slides li").eq(index).show().siblings('#p2 .slides li').hide();
	},5000);
	setInterval(function(){
		var index = $(".num span[class=current]").index();
		//alert(index);
		index = index+1;
		if(index>=4){index=0}
		$("#p3 .num span").removeClass("current").eq(index).addClass("current");
		$("#p3 .slides li").eq(index).show().siblings('#p3 .slides li').hide();
	},5000);
	setInterval(function(){
		var index = $(".num span[class=current]").index();
		//alert(index);
		index = index+1;
		if(index>=4){index=0}
		$("#p4 .num span").removeClass("current").eq(index).addClass("current");
		$("#p4 .slides li").eq(index).show().siblings('#p4 .slides li').hide();
	},5000);
	
	
	

