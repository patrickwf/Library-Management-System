//Page defaults
var //gmapDefaultLocation = {latitude: 29.69752, longitude: 52.47027 },
    flickrHoverHtml = '<img style="display:none" class="hover_image" height="75" width="75" src="images/flickr_hover.png" />',
	btnAnimatonSpeedDefault = 300;//Buttons Animation Speed

//(Private) Email Regex
var Reg_Email = /^\w+([\-\.]\w+)*@([a-z0-9]+(\-+[a-z0-9]+)?\.)+[a-z]{2,5}$/i

$(document).ready(function () {

    /***** IE PNG Transparencity ******/
    
	if($.browser.msie)
	{
		$('.pngfix img').each(function(){
			var $this = $(this);
			$this.css({width: $this.width() + 'px', height: $this.height() + 'px', 'background-color':'transparent'});
			this.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.src + "', sizingMethod='crop')";
			this.src = 'images/blank.gif';
		});
	}
    

    /***** Back to top ******/

	$(window).scroll(function () {
	    if ($(window).scrollTop() >= 300) {
	        $("#top_button").fadeIn(400);
	    } else {
	        $("#top_button").fadeOut(400);
	    }
	});

	$('#top_button').click(function () {
	    $('html, body').animate({ scrollTop: 0 }, 400);
	    return false;
	});

    /***** Add input defaults ******/

	$('input[type="text"]').each(function () {

        var $me = $(this),
	    DefaultVal = $me.attr('data-default');

        if (typeof DefaultVal == 'undefined')
            return;

	    //Set the default value
	    $me.val(DefaultVal);

	    //Control got focus
	    $me.focus(function () {
	        if ($me.val() == DefaultVal) {
	            $me.val('');
	        }
	    }); //$me.focus

	    //Control lost focus
	    $me.blur(function () {
	        var Value = $.trim($me.val());

	        if (Value.length < 1)
	            $me.val(DefaultVal);
	    }); //$me.blur

	});

    /***** Musaic Gallery ******/

	if ($.fn.mosaicgallery)
	    $('.mosaic_gallery').mosaicgallery();
	
	/***** Navigation ******/

	$('.navigation > ul').superfish();

	/***** Blog category ******/
	
	$('.blog_category li').each(function(){
		var $this = $(this),
			$link = $this.find('a'),
		//Get the padding value
		padding_left = $this.css('padding-left');

		if($this.hasClass('current')) return;

		$this.hover(function(){
			$link.stop().animate({'padding-left':'+=' + 21}, 300, function(){$this.addClass('hover');} );
		},
		function(){
			$this.removeClass('hover');
			$link.stop().animate({'padding-left':padding_left}, 300);
		});
	});

	/***** Google Map ******/

	var $contactMap = $('.contact_map');

	if($contactMap.length && typeof gmapSettings != 'undefined')
	{
		$contactMap.gMap(gmapSettings);
	}

    /***** Blog post image hover ******/
    
    var $blog = $('.blog');

    if($blog.length)
    {
        var $postImg = $blog.find('.post_image');
        $postImg.append('<span class="hover"></span>');

        $postImg.hover(function(){
           fadeIn($(this).find('.hover'), 1, 500);
        }, function(){
            fadeOut($(this).find('.hover'), 0, 500);
        });
    }

    /***** Blockquotes & Pullquotes ******/

	$('blockquote,.pullquote,.pullquote_right').each(function () {
		$(this).append('<span class="end"></span>');
	});


    /***** Accordion ******/

	$('.accordion').each(function () {
		var $accordion = $(this),
			$title = $accordion.find('.accordion_title'),
			$titleIcon = $title.find('span'),
			$content = $accordion.find('.accordion_content');

		//Close the accordion
		if (!$accordion.hasClass('open')) {
			$titleIcon.toggleClass('accordion_closed');
			$content.slideUp();
		}

		$title.click(function (e) {
			$titleIcon.toggleClass('accordion_closed');
			$content.slideToggle();
            e.preventDefault();
		});
	});

    /***** Tabs ******/

	if($.fn.idTabs)
	{
		$('.tab .tab_head').idTabs(function(id,list,set){ 
            $("a",set).removeClass("selected") 
            .filter("[href='"+id+"']",set).addClass("selected"); 
            for(i in list) 
              $(list[i]).hide(); 
            $(id).fadeIn(); 
            return false; 
        });
		$('.tab .tab_head li:last-child').addClass('tab_last');
	}

    /***** Home Nivo Slider ******/

	if ($.fn.nivoSlider) {

	    $('#slider').nivoSlider({ directionNavHide: false })
        .find('.nivo-directionNav a').css({ opacity: 0.75 }).hover(
        function () {
            $(this).stop().animate({ opacity: 1.0 }, 300);
        },
        function () {
            $(this).stop().animate({ opacity: 0.75 }, 300);
        });

	}
    
	/***** Flickr Widget ******/

	if($('.flickr_widget').length)
	{
		$('.flickr_widget .flickr_container').each(function(){
			var $this = $(this);

			//Detect loading of images
			var intID = setInterval(function()
			{
				var $links = $this.find('.flickr_badge_image a');

				if($links.length < 1)
					return;
				
				//Add hover image to each anchor tag
				$links.append(flickrHoverHtml)
				.hover(
					function(){
                       fadeIn($(this).find('img').eq(1), 1, 300);
					},
					function(){
                       fadeOut($(this).find('img').eq(1), 0, 300);
					}
				);
				

				//Clear the timer event
				clearInterval(intID);
			}, 1000);
		});

	}

	/***** Comment & Contact Forms ******/

	var $respond = $('#respond'), $respondWrap = $('#respond_wrap'), $cancelCommentReply = $respond.find('.cancel_reply'),
		$commentParent  = $respond.find('input[name="parent"]');

	$('.comment_reply_link').each(function() {
		var $this = $(this),
			$parent = $this.parent().parent();
		
		$this.click(function() {
			var commId = $parent.find('.comment_id').html();

			$commentParent.val(commId);
			$respond.insertAfter($parent);
			$cancelCommentReply.show();
			
			return false;
		});
	});

	$cancelCommentReply.click(function(e) {
		$cancelCommentReply.hide();
		
		$respond.appendTo($respondWrap);
		$commentParent.val(0);
		
		e.preventDefault();
	});

	InitContactForm('#respond');


	/***** Buttons ******/

	$('.button').each(function(){
		var speed = btnAnimatonSpeedDefault,
			$imgs = $(this).find('img');

		if(typeof buttonAnimationSpeed != 'undefined')
		   speed = parseInt(buttonAnimationSpeed);

		if($imgs.length < 2) return;

		$(this).hover(function(){
                       fadeOut($imgs.eq(0), 0, speed);
                       fadeIn($imgs.eq(1), 1, speed);
					},
					function(){
                       fadeOut($imgs.eq(1), 0, speed);
                       fadeIn($imgs.eq(0), 1, speed);
					});
	});

    /***** Portfolio Sorting ******/

    if (jQuery().quicksand && 
       $('body').hasClass('portfolio')) {

       //Initialize Portfolio
       InitPortfolio();

        // get the first collection
        var $list = $('.gallery');

        // clone items to get a second collection
        var $data = $list.clone();

        //Get sort buttons
        var $controls = $('.subnavigation li');

        var $preferences = {
				duration: 500,
				adjustHeight: 'auto'
		}

        $controls.find('a').click(function(e){
            var $control  = $(this),
                $parent   = $control.parent(),
                isCurrent = $parent.hasClass('current'),
                value     = $control.attr('data-value'),
                $filteredData = $();

            if(isCurrent){ 
                e.preventDefault();
                return;
            }

            //Set current item class
            $controls.removeClass('current');
            $parent.addClass('current');

            if(value == 'all')
                $filteredData = $data.find('div.item');
            else
                $filteredData = $data.find('div.' + value);

            var $sortedData = $filteredData.sorted({
				by: function(v) {
					return parseInt(jQuery(v).find('.count').text());
				}
			});
		
			$list.quicksand($sortedData, $preferences, InitPortfolio);

            e.preventDefault();
        });
    }

});
//End $(document).ready

//Portfolio
function InitPortfolio()
{
    //item hover
    var $gallery = $('.gallery .item_image');

	if($gallery.length)
	{
	    $gallery.each(function () {
	        var $this   = $(this),
                $hover = $this.find('.frame_hover'),
	             btm = '3px',
                 lft = '3px';

	        $hover.css({ bottom: -$hover.height(), left: -$hover.width(), display: 'block' });

	        $this.hover(function () {

	            $hover.stop().animate({ bottom: btm, left: lft }, 300);
	        
	        },function(){

	            $hover.stop().animate({ bottom: -$hover.height(), left: -$hover.width() }, 300);
	        });
	    });
		
		if($.fn.prettyPhoto)
			$gallery.prettyPhoto();
	}
}



// Custom sorting plugin
(function($) {
  $.fn.sorted = function(customOptions) {
    var options = {
      reversed: false,
      by: function(a) { return a.text(); }
    };
    $.extend(options, customOptions);
    $data = $(this);
    arr = $data.get();
    arr.sort(function(a, b) {
      var valA = options.by($(a));
      var valB = options.by($(b));
      if (options.reversed) {
        return (valA < valB) ? 1 : (valA > valB) ? -1 : 0;				
      } else {		
        return (valA < valB) ? -1 : (valA > valB) ? 1 : 0;	
      }
    });
    return $(arr);
  };
})(jQuery);

function InitContactForm(formContainerId) {
	var $Contact = $(formContainerId);

	if ($Contact.length < 1)
		return;

    var $Form         = $Contact.find('form'),
        IsContactForm = $Form.hasClass('contact'),
        Action        = $Form.attr('action'),
		$SubmitBtn    = $Form.find('input[type="submit"]'),
		$SubmitHover  = $Form.find('.submit_input img'),
		$Inputs       = $Form.find('input[type="text"],textarea'),
        $Loader       = $Form.find('.loader'),
        $AjaxError    = $Form.find('.AjaxError'),
        $AjaxComplete = $Form.find('.AjaxSuccess'),
		ValidFields   = [$Inputs.length];

	//Hover effect
	$SubmitBtn.hover(function(){
		$SubmitHover.stop().fadeIn('fast');
	},function(){
		$SubmitHover.stop().fadeOut('fast');
    });


    //Retry link
    $AjaxError.find('a').click(function (e) {
        $AjaxError.hide();
        $SubmitBtn.click();
        e.preventDefault();
    });

    //Handle form submission
    $SubmitBtn.click(function (e) {
        var IsValid = true;

        $Inputs.blur();

        //Check if all fields are valid
        $.each(ValidFields, function (i, v) {
            if (v == false) {
                IsValid = false;
                return false;
            }
        });

        if (!IsValid) {
            e.preventDefault();
            return;
        }

        //No need to continue the submission process
        if (!IsContactForm)
            return;

        var values = {}, $allInputs = $Form.find('input,textarea');

        for (i = 0; i < $allInputs.length; i++) {
            var $input = $allInputs.eq(i),
                name   = $input.attr('name'),
                value  = $input.val(),
                defaultVal = $input.attr('data-default');

            if (typeof DefaultVal == 'undefined')
                DefaultVal = '';

            //If the name is empty continue the loop
            if (typeof name == 'undefined' || name.length < 1 || value == defaultVal) continue;

            values[name] = value;
        }

        //Show progress bar
        $Loader.fadeIn('fast');
        //Prevent multi clicking
        $SubmitBtn.parent().fadeOut('fast');

        //Send post request
        $.ajax({
            type: "POST",
            url: Action,
            data: values,
            error: function (xhr, error) {
                $Loader.hide();
                $AjaxError.fadeIn('fast');
            },
            success: function (msg) {
                $Loader.hide();
                if (msg === 'OK')
                    $AjaxComplete.fadeIn('fast');
                else
                    $AjaxError.fadeIn('fast');
            }
        });

        e.preventDefault();
    });

	//Handle Controls Lost Focus Event
    $Inputs.each(function (i) {
        var $me = $(this),
			type = $me.attr('name'),
			DefaultVal = $me.attr('data-default'),
			$Error = $Contact.find('.' + type + 'Error');

        if (typeof DefaultVal == 'undefined')
            DefaultVal = '';

        //Control lost focus
        $me.blur(function () {
            var Value = $.trim($me.val()),
				isValid = true;

            //Validate by type
            if (type == 'email') {
                if (!Reg_Email.test(Value) || Value == DefaultVal) {
                    isValid = false;
                }
            }
            else if (type == 'name' || type == 'surname') {
                if (Value.length < 1 || Value.length > 50 || Value == DefaultVal) {
                    isValid = false;
                }
            }
            else if (type == 'comment') {
                if (Value.length < 1 || Value.length > 1000) {
                    isValid = false;
                }
            }

            if (!isValid) {
                $Error.fadeIn('fast');
                ValidFields[i] = false;
            }
            else {
                $Error.fadeOut('fast');
                ValidFields[i] = true;
            }

        }); //$me.blur
    });

}

/* Other Functions */

function GetSliderSettingsByKey(key)
{
    var opt = {}, setting = {};
    
    if (typeof sliderSettings != 'undefined')
        setting = FindSettingsByKey(sliderSettings, key);

	//Copy slider defaults to opt
	$.extend(opt, sliderDefaults);
	//Expand settings 
	setting = $.extend(opt, setting);

    return setting;
}

/* Returns object in the settings array that is matched with given key
   Object must contain key property
*/
function FindSettingsByKey(settings, key){
	
	for(i=0; i<settings.length; i++){
		if(typeof settings[i].key === undefined) continue;

		if(settings[i].key == key)
		   return settings[i];
	}

	return {};
}

//Check if the given value is integer
function is_int(value){
  if((parseFloat(value) == parseInt(value)) && !isNaN(value)){
	  return true;
  } else {
	  return false;
  }
}

function fadeTo($element, opacity, time){
    $element.css({display: 'block'}).stop().animate({opacity:opacity}, time);
}

function fadeIn($element, opacity, time){
    $element.css({opacity:0, display: 'block'}).stop().animate({opacity:opacity}, time);
}

function fadeOut($element, opacity, time){
    $element.stop().animate({opacity:opacity}, time);
}