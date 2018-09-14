 // JavaScript Document


var clicknow=0;

function initPhoto(n){
	if(n==1){
		$(".photo_area .r").fadeOut(0);
		 $(".photo_area .l").fadeOut(0);
		}
	if(n<14){
	  w = n*60;
	  mgl = (1002-w)/2;
		$("#m_area").css({"width": w+"px","margin-left":mgl+"px","overflow":"hidden","float":"left","display":"inline"}); 	
	  	$("#m_area ul").css({"width": w+"px","margin":"0 auto"}); 	

	}else{
		w = maxphoto*60;
		wall =n*60; 
		$(".photo_ctrl .m").css({"width": w+"px","margin":"0 auto","overflow":"hidden","margin-left":"50px","display":"inline"}); 	
	    $(".photo_ctrl .m ul").css({"width": wall+"px","margin":"0 auto"}); 	
           
		   for(i=maxphoto+1;i<=n;i++){
			   $('#_'+i+' span').css({"display":"none"});
			   }
	}
	if(n>14){
		 $(".photo_ctrl .r") .css({"display":"block"});
		 $(".photo_ctrl .l") .css({"display":"block"});
	}
}

$(document).ready(function() { 
					   
        $('.photo_ctrl.clear ul li a').each(function(){ 
                $(this).click( 
                    function(){
						var idname = $(this).attr('id');
						clicknow =idname; 
						var idl =$(this).attr('name')-1; //给箭头赋值左
						
							if(idl==0){$("#go_per").fadeOut(0);}else{$("#go_per").fadeIn(0);}
								var idr =parseInt($(this).attr('name'))+1;//给箭头赋值右
								if(idr==photonum+1){$("#go_nex").fadeOut(0);}else{$("#go_nex").fadeIn(0);	}
								
									$("#go_per").attr('title',idl);
									$("#go_nex").attr('title',idr);
						
										for (i=1;i<=photonum;i++){ 
										$("#p_"+i).fadeOut(0);
										$("#_"+i+" "+"span").removeClass("nomask");
										$("#l_"+i).removeClass("photo_border2");
										}
									$("#p"+idname).fadeIn(300);
									$("#"+idname+" "+"span").addClass("nomask");
									$("#l"+idname).addClass("photo_border2");
						
                        }); 
         }); 
		//向前
		  $("#go_per").click(function(e){
						var goid = parseInt($(this).attr('title'));
						var idl =goid-1; //给箭头赋值左
						clicknow ="_"+goid; 
							if(idl==0){$("#go_per").fadeOut(0);}else{$("#go_per").fadeIn(0);}
									var idr =goid+1;//给箭头赋值右
							
									if(idr==photonum+1){$("#go_nex").fadeOut(0);}else{$("#go_nex").fadeIn(0);	}
											$("#go_per").attr('title',idl);
											$("#go_nex").attr('title',idr);
													for (i=1;i<=photonum;i++){ 
															$("#p_"+i).fadeOut(0);
															$("#_"+i+" "+"span").removeClass("nomask");
															$("#l_"+i).removeClass("photo_border2");
															//document.getElementById("p_"+i).style.display="none";
													}
											$("#p_"+goid).fadeIn(300);
											$("#_"+goid+" "+"span").addClass("nomask");
											$("#l_"+goid).addClass("photo_border2");
						});
		 
		   $("#go_nex").click(function(e){
									   
							var goid = parseInt($(this).attr('title'));
							clicknow ="_"+goid; 
							var idl =goid-1; //给箭头赋值左
							if(idl==0){
									$("#go_per").fadeOut(0);
								}else{
									$("#go_per").fadeIn(0);
								}
								
							var idr =goid+1;//给箭头赋值右
							
							if(idr==photonum+1){
								$("#go_nex").fadeOut(0);
									}else{
								$("#go_nex").fadeIn(0);	
									}
								
							$("#go_per").attr('title',idl);
							$("#go_nex").attr('title',idr);
							
						for (i=1;i<=photonum;i++){ 
							$("#p_"+i).fadeOut(0);
							$("#_"+i+" "+"span").removeClass("nomask");
							$("#l_"+i).removeClass("photo_border2");
						}
							$("#p_"+goid).fadeIn(300);
							$("#_"+goid+" "+"span").addClass("nomask");
							$("#l_"+goid).addClass("photo_border2");
			});
		
		 
		  $('.photo_ctrl.clear ul li a').each(function(){ 
                $(this).mouseover(   function(){
						var idname = $(this).attr('id');	  
						for (i=1;i<=photonum;i++){ 
							$("#_"+i+" "+"span").removeClass("nomask");
							$("#l_"+i).removeClass("photo_border2");
						}
							$("#"+idname+" "+"span").addClass("nomask");
							$("#l"+idname).addClass("photo_border2");
					 
						 }
							  
			 )})
		  
		   $('.photo_ctrl.clear ul li a').each(function(){ 
                $(this).mouseout(   function(){
						var idname = $(this).attr('id');	  
						for (i=1;i<=photonum;i++){ 
							$("#_"+i+" "+"span").removeClass("nomask");
							$("#l_"+i).removeClass("photo_border2");
						}
							
					 $("#"+clicknow+" "+"span").addClass("nomask");
							$("#l"+clicknow).addClass("photo_border2");
						 }
							  
			 )})
		
		
  $("#ctrl_l").click(function(e){ 
							  
				headid = $(this).attr('name');	
				endid = parseInt($("#ctrl_r").attr('name'))+1;	
				
				if(endid<photonum+1){
					movel = movel+1;
					mover = 0;
					mg = movel*60;
					$(".photo_ctrl .m ul").css({"margin-left":"-"+mg+"px"});
					$('#_'+headid+' span').css({"display":"none"});
					$('#_'+endid+' span').css({"display":"block"});
					headid = parseInt(headid)+1;
					endid = parseInt(endid);
					 $("#ctrl_l").attr('name',headid)
					 $("#ctrl_r").attr('name',endid)
					 $("#ctrl_r").css({"display":"block"});	
					}else if(endid==photonum+1){
					$("#ctrl_l").css({"display":"none"});	
					}
							  

							  
	}) 
  
    $("#ctrl_r").click(function(e){ 
							
				headid = $("#ctrl_l").attr('name');	
				endid = parseInt($("#ctrl_r").attr('name'));
				if(headid>1){
					mover = mover+1;
					movel = 0;
					mg = (headid-2)*60;
					headid = parseInt(headid)-1;
					$(".photo_ctrl .m ul").css({"margin-left":"-"+mg+"px"});
					$('#_'+endid+' span').css({"display":"none"});
					$('#_'+headid+' span').css({"display":"block"});
					endid = parseInt(endid)-1;
					$("#ctrl_l").attr('name',headid)
					 $("#ctrl_r").attr('name',endid)
					 $("#ctrl_l").css({"display":"block"});	
					}else if(headid==1){
					$("#ctrl_r").css({"display":"none"});		
						
				}	
					
							  
    })  
});
