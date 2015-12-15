$(document).ready(function(){

    //INPUT FOCUS
        
	$(".oe-input-box").focus(oe_input_box_focus).blur(oe_input_box_blur);
	
	function oe_input_box_focus()	{
	  $("#"+this.id).closest("div").addClass("oe-input-box-container-focus").removeClass("oe-input-box-container");  
	}
	function oe_input_box_blur()	{
	  $("#"+this.id).closest("div").addClass("oe-input-box-container").removeClass("oe-input-box-container-focus");  
	}
	
    $(".oe-input-box-long").focus(oe_input_box_long_focus).blur(oe_input_box_long_blur);
	function oe_input_box_long_focus()	{
	  $("#"+this.id).closest("div").addClass("oe-input-box-container-focus-long").removeClass("oe-input-box-container-long");  
	}
	function oe_input_box_long_blur()	{
	  $("#"+this.id).closest("div").addClass("oe-input-box-container-long").removeClass("oe-input-box-container-focus-long");  
	}
	$(document.body).on("focus", ".oe-textarea",function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-focus").removeClass("oe-textarea-container");  
	})
	.blur(function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container").removeClass("oe-textarea-container-focus");  
	});          
    $(".oe-input-box-small").focus(oe_input_box_small_focus).blur(oe_input_box_small_blur);
	function oe_input_box_small_focus()	{
	  $("#"+this.id).closest("div").addClass("oe-input-box-container-focus-small").removeClass("oe-input-box-container-small");  
	}
	function oe_input_box_small_blur()	{
	  $("#"+this.id).closest("div").addClass("oe-input-box-container-small").removeClass("oe-input-box-container-focus-small");  
	}
    
    //TEXTAREA HW LONG
    $(".oe-textarea-HW-long").focus(function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-HW-long-focus").removeClass("oe-textarea-container-HW-long");  
	})
	.blur(function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-HW-long").removeClass("oe-textarea-container-HW-long-focus");  
	});               
    //TEXTAREA HW LONG END
	
	 //TEXTAREA W LONG
     $(document.body).on("focus", ".oe-textarea-W-long",function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-W-long-focus").removeClass("oe-textarea-container-W-long");  
	})
	$(document.body).on("blur", ".oe-textarea-W-long",function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-W-long").removeClass("oe-textarea-container-W-long-focus");  
	});               
    //TEXTAREA W LONG END
	
	 //TEXTAREA GROUP COMMENT LONG
     $(document.body).on("focus", ".oe-textarea-GC-long",function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-GC-long-focus").removeClass("oe-textarea-container-GC-long");  
	})
	$(document.body).on("blur", ".oe-textarea-GC-long",function()
	{
	  $("#"+this.id).closest("div").addClass("oe-textarea-container-GC-long").removeClass("oe-textarea-container-GC-long-focus");  
	});               
    //TEXTAREA GROUP COMMENT END
  
    //SELECT BOX
    
    $(document.body).on("click", ".oes-selectBox",oes_selectBox);
  function oes_selectBox()	{
	var $this_id="#"+this.id;  
    if($($this_id+"-child").is(":visible"))	{
  	  $($this_id+"-child").hide().css('overflow-y','hidden');
  	  $($this_id+"-img").addClass("oes-selectBox-close-img").removeClass("oes-selectBox-open-img");
    } else	{
  	  $($this_id+"-child").show('slide',{duration: 400,direction:'up', easing: 'swing'}, function(){
          $($this_id+"-child").css('overflow-y','auto');
      });
  	  $($this_id+"-img").addClass("oes-selectBox-open-img").removeClass("oes-selectBox-close-img");
  	  var strid=$("#"+$(this).attr("data-tracker-selectBob")+"_li").val();
	  if(strid!='0')  {
		  searchItemForSelectBox($(this).attr("data-tracker-selectBob"));
	  	}
       
    } 
  }
  $(document.body).on("click", "li.oes-seller-child,li.oes-seller-child-active",oes_seller_child);
  function oes_seller_child()	{
		var $this_id="#"+this.id;
		var getIdentify= $($this_id).closest("ul").attr('id'); 
		var getID= "#"+$($this_id).closest("ul").attr('id')+" li"; 
		var value=$(this).attr("data-keyID");
		$("#"+getIdentify+"_li").val(value);
		var getMultiSelect= $($this_id).closest("ul").attr('data-multiple-select'); 
		var dataSelectType= $($this_id).closest("ul").attr('data-select-type');
		if(getMultiSelect=="true")	{
			if($($this_id).hasClass("oes-seller-child-active"))	{
				flag=0;
			}	else	{
				flag=1;
				$("#seller-selectBox-"+getIdentify+"-heading").text($(this).text());
			}
			$($this_id).toggleClass("oes-seller-child-active oes-seller-child");
	  		if(flag===0)	{
	  			getHeaderForSelect(getID, getIdentify, dataSelectType);
			}
		  
		}	else	{
		  $("#seller-selectBox-"+getIdentify+"-heading").text($(this).text());
		  $("#"+getIdentify+" li.oes-seller-child-active").toggleClass("oes-seller-child oes-seller-child-active");
		  $($this_id).toggleClass("oes-seller-child-active oes-seller-child");
		}
      
	  $(".oes-selectBox-child").hide("slide",{direction: 'up',easing: 'swing'},100).css('overflow','hidden');
  }
	$(document.body).on("click", ".oes-none-selection",function(){
	  var getIdentify= $("#"+this.id).closest("ul").attr('id');
	  var dataSelectType= $("#"+this.id).closest("ul").attr('data-select-type');
	  $("#seller-selectBox-"+getIdentify+"-heading").text("SELECT "+dataSelectType);
	  $("#"+getIdentify+" li.oes-seller-child-active").toggleClass("oes-seller-child oes-seller-child-active");
	  $("#"+getIdentify+"_li").val(0);
  });
			 
  function searchItemForSelectBox(getElementId)
  {
	  var $str='#'+getElementId+' li';
	  $($str).each(function() 
		{
		 
		    if($("#"+this.id).hasClass("oes-seller-child-active"))
		    {
			   	$('.oes-selectBox-child').animate({scrollTop: $("#"+$(this).attr("id")).position().top}, 500);							
			   	return false; 	 
		    }  
		});
  }
  function getHeaderForSelect(getID, getIdentify, dataSelectType)
  {
	 for(var i=$(getID).size(); i>=0;  i--)
	  {
		  if($(getID).hasClass("oes-seller-child-active"))
		  {
			 var str=$("#"+getIdentify).find(".oes-seller-child-active").attr("id");
			 $("#seller-selectBox-"+getIdentify+"-heading").text($("#"+str).text());
			 return false;
		  }
		  else
			  {
			  	
			  	$("#seller-selectBox-"+getIdentify+"-heading").text("SELECT "+dataSelectType);
			  	return false;
			  }
	  }
  }
  $(document).on("mouseleave", ".oes-selectBox", function() {
	  $(".oes-selectBox-child").css('overflow-y','hidden');
      $(".oes-selectBox-child").hide();
	  $("#"+this.id+"-img").addClass("oes-selectBox-close-img").removeClass("oes-selectBox-open-img");
  });
    
//  HOVER DIV INFO REGISTER DETAILS TOOLTIPS
    $("a.profile-hover").hover(function(e) {
        $("#profile-hover-detail").fadeIn(200).css('top', e.pageY+25).css('left', e.pageX-50);
    }, function() {
        $("#profile-hover-detail").hide(10);
    });
//  HOVER DIV INFO SUBJECT 2 CATEGORY DETAILS TOOLTIPS    
    $("a.subj_2_cat").hover(function(e) {
        $("#cat-hover-detail").fadeIn(500).css('top', e.pageY+25).css('left', e.pageX);
    }, function() {
        $("#cat-hover-detail").hide(10);
    });
//  OVERLAY CATEGORY CONTAINER 
       
    $("#btn-select-category").on("click",function (){
        $("#overlay-category-container").fadeIn(500);
   
    });
    $("a#cancel-category").on("click", function (){
        $("#overlay-category-container").fadeOut(200);
    });
	
	$("#exp-new-test-dtl-overlay").on("click",function (){
        $("#overlay-category-container").fadeIn(500);
   
    });
    $("a#exp-new-test-dtl-overlay-cnl").on("click", function (){
        $("#overlay-category-container").fadeOut(200);
    });
	
    $("#selected-cat-container").find("li").on("click", function (){
        $(this).remove();
    });
	
//  TOP TAB MENU BUTTON 
	$(".custom_menu-button").on('click', function (){
		var $this=$(this);
		var data_index=$this.attr("data-index");
		data_index=parseInt(data_index);
		switch (data_index){
			case 1 :
					$(".revision-panel-container").hide();
					$(".custom_menu-button").removeClass("tab-active");
					$this.addClass("tab-active");
					$("#revision_panel_container").fadeIn(500);	
					break;
			case 2 :
					$(".revision-panel-container").hide();
					$(".custom_menu-button").removeClass("tab-active");
					$this.addClass("tab-active");
					$("#download_panel_container").fadeIn(500);	
					break;

			case 3 :
					$(".revision-panel-container").hide();
					$(".custom_menu-button").removeClass("tab-active");
					$this.addClass("tab-active");
					$("#qfeed_panel_container").fadeIn(500);	
					break;
			case 4 :
					$(".revision-panel-container").hide();
					$(".custom_menu-button").removeClass("tab-active");
					$this.addClass("tab-active");
					$("#edit_profle_container").fadeIn(500);	
					break;
			case 5 :
					$(".revision-panel-container").hide();
					$(".custom_menu-button").removeClass("tab-active");
					$this.addClass("tab-active");
					$("#change_password_container").fadeIn(500);	
					break;

			case 6 :
					$(".revision-panel-container").hide();
					$(".custom_menu-button").removeClass("tab-active");
					$this.addClass("tab-active");
					$("#account_deactive_container").fadeIn(500);	
					break;
		}
	});
//  TOP TAB MENU BUTTON	
    
//    MIXED CATEORY
     $("ul#mixed-all-list").find('li.ch').on('click',function(){
         var $this=$(this);
         if(!($this).hasClass('deactive')){
             var this_id=$this.attr('id');
             var this_text=$this.text();
             var parent_ul_id=$this.closest('ul').attr('data-parent-id');
             var heading=$("#"+parent_ul_id+"-heading").text();
             var len=$(document.body).find("ul#mixed-selected-list > li#"+parent_ul_id).length;
             if(len==0){
                var str='<li id="'+parent_ul_id+'" class="heading1"><span class="heading">'+heading+'</span><ul data-parent-id="'+parent_ul_id+'"><li id="'+this_id+'" class="ch">'+this_text+'</li></ul</li>';
                $("#mixed-selected-list").append(str);
                 $this.addClass("deactive");
             }else{
                    var str='<li id="'+this_id+'" class="ch">'+this_text+'</li>';
                    $("ul#mixed-selected-list > li#"+parent_ul_id+" > ul").append(str);
                    $this.addClass("deactive");
             }
         }
     });
    
    $(document.body).on("click", "ul#mixed-selected-list > li > ul > li.ch",function(){
        var $this=$(this);
        var this_id=$this.attr('id');
        var parent_ul_id=$this.closest('ul').attr('data-parent-id');
        var len= $(this).closest("ul").children().length;
        if(len!=1){
            $("ul#mixed-all-list").find("li#"+this_id).removeClass("deactive");
            $this.remove();
        }else{
            $("ul#mixed-all-list").find("li#"+this_id).removeClass("deactive");
            $(document.body).find("ul#mixed-selected-list > li#"+parent_ul_id).remove();
        }
        
     });
    
    $(document.body).on("click", "ul#mixed-selected-list > li > span.heading",function(){
        var $this_id=$(this).closest('li').attr("id");
        $("ul#mixed-all-list").find("li#"+$this_id+" > ul >li").removeClass("deactive");
        $(document.body).find("ul#mixed-selected-list > li#"+$this_id).remove();
     });
	
	// ADD COMMENT CONTAINER START
	$(document.body).on("click", "a.add-comment",function (){
		var $this=$(this);
		var commentType=$this.attr("data-comment-type");	 
		$(".qa-give-ans-textarea-container").remove();
		if(commentType=="0"){
			var dataParentId=$this.attr("data-parent-id");
			var str='<div class="qa-give-ans-textarea-container" id=NEW-'+dataParentId+'><div class="input_text_box_panel width100 padding-all-10"><div class="oe-textarea-container-W-long"><textarea class="oe-textarea-W-long" placeholder="Add Comment" id="addCommentText"></textarea></div><div class="input_box_bottom"><span class="eg_line"></span></div></div></div>';
			$(document.body).find("#"+dataParentId).append(str);
		 }else if(commentType=="1"){
			 var dataCommentId=$this.attr("data-comment-id");
			 var str='<div class="qa-give-ans-textarea-container" id=RLY-'+dataCommentId+'><div class="input_text_box_panel width100 padding-all-10"><div class="oe-textarea-container-W-long"><textarea class="oe-textarea-W-long" placeholder="Add Comment" id="addCommentText"></textarea></div><div class="input_box_bottom"><span class="eg_line"></span></div></div></div>';
			 $(document.body).find("#COMM-"+dataCommentId).append(str);
		 }
	 });
	// ADD COMMENT CONTAINER END
	
	
	// ADD GROUP COMENT CONTAINER START
	$(document.body).on("click", "a.add-gup-comment",function (){
		var $this=$(this);
		var commentType=$this.attr("data-comment-type");	 
		$(document.body).find(".comment-box").remove();
		if(commentType=="0"){
			var dataParentId=$this.attr("data-parent-id");
			var str='<div class="comment-box margin-top10" id=NEW-'+dataParentId+'><div class="input_text_box_panel width390px"><div class="oe-textarea-container"><textarea class="oe-textarea" placeholder="Add Comment" id="addCommentText"></textarea></div></div></div>';
			$(document.body).find("#cmd-"+dataParentId).append(str);
		 }else if(commentType=="1"){
			 var dataCommentId=$this.attr("data-comment-id");
			 var str='<div class="comment-box margin-top10" id=NEW-'+dataCommentId+'><div class="input_text_box_panel width390px"><div class="oe-textarea-container"><textarea class="oe-textarea" placeholder="Add Comment" id="addCommentText"></textarea></div></div></div>';
			 $(document.body).find("#cmd-"+dataCommentId).append(str);
		 }
	 });
	// ADD GROUP COMENT CONTAINER END
	
	
	// VIEW COMMENT CONTAINER START
		$(document.body).on("click", "a.view-comment",function (){
			var $this=$(this);
			var dataViewCommentId=$this.attr("data-view-comment-id");
			$("#VEW-"+dataViewCommentId).fadeIn(500);
		 });
	// VIEW COMMENT CONTAINER END
	
	// PROFILE CONTAINER START 
	
			$(document.body).on("click", ".info_heading_close",function (){
				if($(this).hasClass("info_heading_close")){
				$(".info_heading_open").addClass("info_heading_close").removeClass("info_heading_open");
				$(".info_heading_detail").hide();
				$(this).addClass("info_heading_open").removeClass("info_heading_close");
				$("#"+$(this).attr("id")+"_detail").slideDown(500);
				}
		});	

		$(document.body).on("click", ".info_heading_open",function (){
			if($(this).hasClass("info_heading_open")){
			$(this).addClass("info_heading_close").removeClass("info_heading_open");
			$("#"+$(this).attr("id")+"_detail").slideUp(500);
			}
		});
	
	// PROFILE CONTAINER END
	
	//  OVERLAY UPLOAD CONTAINER 
       
        $("#upload_education, #upload_occupation").on("click",function (){
			$("#overlay-upload-document-container").fadeIn(500);
        });
        $("a#cancel-upload").on("click", function (){
            $("#overlay-upload-document-container").fadeOut(200);
        });
	//  OVERLAY UPLOAD CONTAINER 
	
	//  DASHBOARD PANEL OPEN CLOSE START
	$("#dashboard_left").find(".parent").on('click',function (){
		var $this=$(this);
		var this_id=$this.attr("id");
		if($this.hasClass("parent_open")){
			$("#"+this_id+"_child").slideUp(300);
			$this.addClass("parent_close").removeClass("parent_open");
		}else{
			$("#"+this_id+"_child").slideDown(300);
			$this.addClass("parent_open").removeClass("parent_close");
		}
	});
	
	$("#dashboard_right").find(".parent").on('click',function (){
		var $this=$(this);
		var this_id=$this.attr("id");
		if($this.hasClass("parent_open")){
			$("#"+this_id+"_child").slideUp(300);
			$this.addClass("parent_close").removeClass("parent_open");
		}else{
			$("#"+this_id+"_child").slideDown(300);
			$this.addClass("parent_open").removeClass("parent_close");
		}
	});
	//  DASHBOARD PANEL OPEN CLOSE END
	
	//  CATEGORY LI CLICK EVENT START
		$("#cat-selection-container").find("li").on('click', function (){
			var $this=$(this);
			if($this.hasClass("active-li")){
				$this.removeClass("active-li");
			}else{
				$this.addClass("active-li");
			}
		});
	//  CATEGORY LI CLICK EVENT END
	
	//  EXP GENERATE NEW TEST AND SEARCH QUESTION AND SELECT EVENT START
		$("#que-src-container").find("li").on('click', function (){
			var $this=$(this);
			$("#sel-que-container ul").append("<li class=sected-que>"+$this.text()+"</li>");
			$this.remove();
		});
	//  EXP GENERATE NEW TEST AND SEARCH QUESTION AND SELECT EVENT START
	
	//  TEST DETAILS START
	$("a.detail-test").on("click", function (){
		var $this=$(this);
		var $this_id=$this.attr("id");
		var panel=$this.attr("data-panel");
		if(panel=="close"){
			var tr_add='<tr id=dny-'+$this_id+'><td colspan="7"><div class="test_detail_container"></div></td></tr>';
			$(this).closest( "tr" ).after(tr_add);
			$this.attr("data-panel", "open");
		}else if(panel=="open"){
			$("#dny-"+$this_id).remove();
			$this.attr("data-panel", "close");
		}
	});
	
	//  TEST DETAILS START
	
	// GROUP POST SETTING START
	
	$("a#default_gup_icon").on('click',function(e) {
			var offset = $(this).offset();
			var topOffset = $(this).offset().top- $(window).scrollTop();
			$("#group_default_menu").fadeIn(500).css('top', topOffset+36).css('left', (offset.left));
		});
		$("#group_default_menu").mouseleave(function(e) {
			$("#group_default_menu").hide();
		});
		$("#group_default_menu").find("li").on('click', function (){
			var $this=$(this);
			if($this.hasClass("check_after_right")){
				$this.removeClass("check_after_right");
				var len=$('#group_default_menu ul').find("li.check_after_right").length;
				if(len==1){
					$("a#default_gup_icon").text($('#group_default_menu').find("li.check_after_right").text());	
				}else if(len==0){
					$("a#default_gup_icon").text('');
				}
			}else{				
				$this.addClass("check_after_right");
				var len=$('#group_default_menu ul').find("li.check_after_right").length;
				if ( len > 1 ){
					$("a#default_gup_icon").text("Multiple");	
				}else{
					
					$("a#default_gup_icon").text($this.text());	
				}
			}
		});
	
	// GROUP POST SETTING END
	
});
