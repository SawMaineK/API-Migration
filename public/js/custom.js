$('.add-button').click(function () {
	var actionbutton = $(this).attr('data-action');
	$('#'+actionbutton).toggleClass('d-none');
});
$('.close-button').click(function () {
	var actionbutton = $(this).attr('data-action');
	$('#'+actionbutton).toggleClass('d-none');
});
$('.add-customer').click(function () {
	var actionbutton = $(this).attr('data-action');
	var dismissbutton = $(this).attr('data-dismiss');
	$('#'+actionbutton).toggleClass('d-none');
	$('#'+dismissbutton).toggleClass('d-none');
});


$(".only_char").keypress(function(event) {
    var inputValue = event.charCode;
   if (inputValue == 0 || inputValue == 32) {return true;}
    if (window.event) {
        var charCode = window.event.keyCode;
    } else if (event) {
        var charCode = event.which;
    } else {
        return true;
    }
    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)) {
        return true;
    } else {
        return false;
    }

});


$( ".update_status" ).bind( "click", function() {
    if($(this).attr('name') == 0) {
        $(this).attr('name','1');            
    } else {
        $(this).attr('name','0');            
    }
        
    $.ajax({
    type: "GET",
    url: base_url + "/update_user_satatus?id="+$(this).attr('id')+"&status="+$(this).attr('name'),
    success: function(data) {
    }
    });
});

$( ".update_package_status" ).bind( "click", function() {
    if($(this).attr('name') == 0) {
        $(this).attr('name','1');            
    } else {
        $(this).attr('name','0');            
    }
        
    $.ajax({
    type: "GET",
    url: base_url + "/update_package_satatus?id="+$(this).attr('id')+"&status="+$(this).attr('name'),
    success: function(data)
    {
        var obj=jQuery.parseJSON( data );
        if(obj.status == 1)
        {
            $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
        }
        else
        {
            $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
        }
    }
    });
});


$( ".update_MembershipPlan_status" ).bind( "click", function() {
    if($(this).attr('name') == 0) {
        $(this).attr('name','1');            
    } else {
        $(this).attr('name','0');            
    }
        
    $.ajax({
    type: "GET",
    url: base_url + "/updateMembershipPlanStatus?id="+$(this).attr('id')+"&status="+$(this).attr('name'),
    success: function(data) {
    }
    });
});

$( ".update_recommendation_status" ).bind( "click", function() {
    if($(this).attr('name') == 0) {
        $(this).attr('name','1');            
    } else {
        $(this).attr('name','0');            
    }
        
    $.ajax({
    type: "GET",
    url: base_url + "/update_recommendation_status?id="+$(this).attr('id')+"&status="+$(this).attr('name'),
    success: function(data) {
    }
    });
});

$( ".update_image_status" ).bind( "click", function() {
    if($(this).attr('name') == 0) {
        $(this).attr('name','1');            
    } else {
        $(this).attr('name','0');            
    }
        
    $.ajax({
    type: "GET",
    url: base_url + "/update_user_image_status?id="+$(this).attr('id')+"&status="+$(this).attr('name'),
    success: function(data) {
    }
    });
});

$( ".update_video_status" ).bind( "click", function() {
    if($(this).attr('name') == 0) {
        $(this).attr('name','1');            
    } else {
        $(this).attr('name','0');            
    }
        
    $.ajax({
    type: "GET",
    url: base_url + "/update_user_video_status?id="+$(this).attr('id')+"&status="+$(this).attr('name'),
    success: function(data) {
    }
    });
});


$(document).ready(function() {
    $(document).on('keydown', ".only-numbers", function(event) {

        if (event.keyCode == 8) {
            var phone_val = $(this).val();
            //alert(phone_val)
            var res = phone_val.replace("-", "");
            $(this).val(res);
            var res1 = res.replace("-", "");
            $(this).val(res1);
        }


        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(event.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A
            (event.keyCode == 65 && event.ctrlKey === true) ||
            // Allow: Ctrl+C
            (event.keyCode == 67 && event.ctrlKey === true) ||
            // Allow: Ctrl+X
            (event.keyCode == 88 && event.ctrlKey === true) ||
            // Allow: home, end, left, right
            (event.keyCode >= 35 && event.keyCode <= 39)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((event.shiftKey || (event.keyCode < 48 || event.keyCode > 57)) && (event.keyCode < 96 || event.keyCode > 105)) {
            event.preventDefault();
        }
    });
});

$("#add_customer_data").submit(function(event) {
  alert($('input[name=email]').val());  
  return false;
});

$("input[name=name] , .city").keypress(function(event) {
    var inputValue = event.charCode;
   if (inputValue == 0 || inputValue == 32) {return true;}
    if (window.event) {
        var charCode = window.event.keyCode;
    } else if (event) {
        var charCode = event.which;
    } else {
        return true;
    }
    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)) {
        return true;
    } else {
        return false;
    }

});




// WORK IN PROGRESS BELOW
        
$('document').ready(function () {
    $('#google_translate_element').on("click", function () {
        $("iframe").contents().find(".goog-te-menu2-item div, .goog-te-menu2-item:link div, .goog-te-menu2-item:visited div, .goog-te-menu2-item:active div, .goog-te-menu2 *")
        .css({
            'color': '#544F4B',
            'font-family': 'Roboto',
            'width':'100%'
        });
        $("iframe").contents().find('.goog-te-menu2-item-selected').css ('display', 'none');
        $("iframe").contents().find('.goog-te-menu2').css ('padding', '0px');
        $("iframe").contents().find('.goog-te-menu2-item div').css('padding', '20px');
        $("iframe").contents().find('.goog-te-menu2-item').css('width', '100%');
        $("iframe").contents().find('td').css('width', '100%');
        $("iframe").contents().find(".goog-te-menu2-item div").hover(function () {
            $(this).css('background-color', '#4385F5').find('span.text').css('color', 'white');
        }, function () {
            $(this).css('background-color', 'white').find('span.text').css('color', '#544F4B');
        });
        $("iframe").contents().find('.goog-te-menu2').css('border', 'none');
        $(".goog-te-menu-frame").css('box-shadow', '0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.3)');
        $(".goog-te-menu-frame").css({
            'height': '100%',
            'width': '300px',
            'top': '0px',
        });
        $("iframe").contents().find('.goog-te-menu2').css({
            'height': '100%',
            'width': '100%'
        });
    });
});

$(document).on('click','.select-dosh-list',function(){
    $('.dosh-list').css('display','flex');
});

$(document).on('click','.hide_dosh_list',function(){
    $('.dosh-list').css('display','none');
});

$(document).on('click','.differ_loc',function(){
    $('.diifer-location-wrap').css('display','block');
});

$(document).on('click','.same_loc',function(){
    $('.diifer-location-wrap').css('display','none');
});

function toggleIcon(e) {
    $(e.target)
        .prev('.card-header')
        .find(".more-less")
        .toggleClass('fa-plus fa-minus');
}
$('.accordian-wrap').on('hidden.bs.collapse', toggleIcon);
$('.accordian-wrap').on('shown.bs.collapse', toggleIcon);