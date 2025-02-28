$(document).ready(function(){

	//	--------------------------------------------------
	//					F u n c t i o n 				//
	//	--------------------------------------------------
	function get_url(name) {
		return decodeURI(
			(RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]
		);
	}

	//	--------------------------------------------------

	function reside_slider_position(){

		var wrapper_height 	= $('.jcarousel-clip').height();		// e.g. 98
		var ul_height 		= $('#carousel0 ul').height();			// e.g. 92
		var adjust_index 	= (wrapper_height - ul_height) / 2

		$('#carousel0 ul').css('top', adjust_index);

	}//  ;!reside_slider_position()

	//	--------------------------------------------------

	function color_change(){

		var j = 1;

		$('#menu > ul > li:first-child > a').css('color', color[color_round]);

		color_round == color.length - 1 ? color_round = 0 : color_round++;
	}// !color_change()

	//	--------------------------------------------------
	//						P a n e l 					//
	//	--------------------------------------------------

		/* Slider display friend for mobile width */
		$(window).resize(function(){
			reside_slider_position()
		});

		setTimeout(function(){ reside_slider_position(); }, 1000);

	//	--------------------------------------------------
		/* Index: World cup menu */

		var color = ['black', 'green', 'indigo', 'orangered'];
		var color_round = 0;

		setInterval(function(){color_change()},500);

	//	--------------------------------------------------

		/* Refine item margin fit to iPad */
		$('.box-product').css('margin-left', '13px');

	//	--------------------------------------------------

		/* 特價商品 Index item make more height */
//		$('.box-content').eq(1).children().children('.wrap_price, .submit').attr('style','top:60px!important');

	//	--------------------------------------------------

		/* Page checkout: Convert district name to Chinese */
		var district = [
						['Central and Western Hong Kong Island','中西區'],
						['Eastern Hong Kong Island', '東區'],
						['Southern Hong Kong Island', '南區'],
						['Wan Chai Hong Kong Island', '灣仔區'],
						['Kowloon City Kowloon', '九龍城區'],
						['Kwun Tong Kowloon', '觀塘區'],
						['Sham Shui Po Kowloon', '深水步區'],
						['Wong Tai Sin Kowloon', '黃大仙區'],
						['Yau Tsim Mong Kowloon', '油尖旺區'],
						['Islands New Territories', '離島區'],
						['Kwai Tsing New Territories', '葵青區'],
						['North New Territories', '北區'],
						['Sai Kung New Territories', '西貢區'],
						['Sha Tin New Territories', '沙田區'],
						['Tai Po New Territories', '大埔區'],
						['Tsuen Wan New Territories', '荃灣區'],
						['Tuen Mun New Territories', '屯門區'],
						['Yuen Long New Territories', '元朗區'],
						['Wang Tau Hom Kowloon', '橫頭磡'],
						['Kowloon Bay Kowloon', '九龍灣區']
					];

		if( $('html').attr('lang') == 'zh_HK' && get_url('checkout') ){
			$(window).scroll(function(){

				$("select[name='zone_id'] option").each(function(){
					var eng_name = $(this).text();

					for(var i=0; i<district.length; i++){
						if( eng_name == district[i][0]){
							$(this).text(district[i][1]);
							return
						}
					}
				});
			});
		}// !if

	//	----------------------------------------------------------------------------------------------------
});