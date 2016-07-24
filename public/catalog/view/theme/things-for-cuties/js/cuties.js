jQuery(document).ready(function($){
	$('#mobile-menu').prepend('<div id="mobile-menu-icon">MENU</div>');
	$("#mobile-menu-icon").on("click", function(){
		$("#mobile-menu-nav").slideToggle();
		$(this).toggleClass("active");
	});
	$('.mobile-footer-menu div').hide();  
  	$('.mobile-footer-menu h3').click(function() {
    	$(this).next('div').slideToggle()
    	.siblings('div:visible').slideUp();
  	});
	
	$('<div class="clear"></div>').insertAfter('#column-left .box');
	$('<div class="clear"></div>').insertAfter('#column-right .box');
	
});

function set_grid(){
      	var counter=1;
        $('#column-left + #content .product-grid .box-product').each(function(){
           if(counter % 3==0){ 
		   if ($(window).width() > 738) { 
             $(this).css('margin-right','0');
		   }
           }
            counter++;
        });
		counter=1;
        $('#column-right + #content .product-grid .box-product').each(function(){
           if(counter % 3==0){ 
		    if ($(window).width() > 738) { 
             $(this).css('margin-right','0');
			}
           }
            counter++;
        });
		counter=1;
        $('#column-left + #column-right + #content .product-grid .box-product').each(function(){
           if(counter % 3==0){ 
		    if ($(window).width() > 738) { 
             $(this).css('margin-right','0');
			}
           }
            counter++;
        });
        $('#column-left + #content .box-content').each(function(){
          counter = 1;
		  $(this).children('.box-product').each(function(){
			  if(counter % 3==0){
             $(this).css('margin-right','0');
			  }
			  counter++;
			  });
        });
		$('#column-right + #content .box-content').each(function(){
          counter = 1;
		  $(this).children('.box-product').each(function(){
			  if(counter % 3==0){
             $(this).css('margin-right','0');
			  }
			  counter++;
			  });
        });
		$('#column-left + #column-right #content .box-content').each(function(){
          counter = 1;
		  $(this).children('.box-product').each(function(){
			  if(counter % 3==0){
             $(this).css('margin-right','0');
			  }
			  counter++;
			  });
        });
};

$(document).ready(function(){
	set_grid();
	});
	
$(function() {
    $.fn.scTop = function() {
	if ($(window).scrollTop() != "0") {
	    $(this).fadeIn("slow")
	}	
	var scrollerDiv = $(this);
	
	$(window).scroll(function() {
	    if ($(window).scrollTop() == "0") {
		$(scrollerDiv).fadeOut("slow")
	    } else {
		$(scrollerDiv).fadeIn("slow")
	    }
	});
	
	$(this).click(function() {
	    $("html, body").animate({
		scrollTop: 0
	    }, "slow")
	})
    }
});

$(function() {
    $("#scrolltotop").scTop();
});