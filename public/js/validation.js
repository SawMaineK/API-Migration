$('.validation_details').click(function() {


    if ($("input[name='campaign_name']").val() == "" || $("input[name='incharge']").val() == "" ||
        $("input[name='email']").val() == "" || $("input[name='zipcode']").val() == "") {
        $("input[name='campaign_name'],input[name='incharge'],input[name='email'],input[name='zipcode']").addClass('warning');
        swal('Please fill out all the required fields');
        return false;
        if ($("#zipcode_validation").val()) {
            if ($("#zipcode_validation").val().length != 5) {
                swal('Please fill the  5 digit on the zipcode field');
                return false;
            }
        }

        if ($("input[name='email']").val()) {
            $.ajax({
                type: "GET",
                url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                success: function(data) {
                    obj = jQuery.parseJSON(data);
                    if (obj.status == 1) {
                        swal('Email already exist');
                        $("input[name='email']").addClass('warning');
                        return false;
                    }
                }
            });
        }
    } else {
        if ($("#zipcode_validation").val()) {
            if ($("#zipcode_validation").val().length != 5) {
                $("input[name='zipcode']").addClass('warning');
                swal('Please fill the  5 digit on the zipcode field');
                return false;
            }
        }
        if ($("input[name='email']").val()) {
            $.ajax({
                type: "GET",
                url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                success: function(data) {
                    obj = jQuery.parseJSON(data);
                    if (obj.status == 1) {
                        swal('Email already exist');
                        $("input[name='email']").addClass('warning');
                        return false;
                    }
                }
            });
        }
    }
    if ($("input[name='end_date']").val() || $("input[name='start_date']").val()) {
        if ($("input[name='end_date']").val() < $("input[name='start_date']").val()) {
            swal('End date not less than Start date');
            $("input[name='end_date'],input[name='start_date']").addClass('warning');
            return false;
        }
    }

    if ($("input[name='phone']").val()) {
        if ($("input[name='phone']").val().length != 12) {
            $("input[name='phone']").addClass('warning');
            swal('Please Enter 12 digit in phone field');
            return false;
        }
    }

});

$('.validation_photos').click(function() {
    if ($("#gallery-photo-add").val() == "") {
        swal('Please Select Image');
        return false;
    }
});


$('.validation_fundraiser,.validation_fundraiser_edit_campaign').click(function() {
    if ($(".select-row:checked").length == 0) {
        swal('Select atleast one fundraiser');
        return false;
    }
});

$(".start_date_today_date").keydown(function(e) {
    if (e.keyCode == 13) {
        $(this).val($('#start_date_today_date_val').val())
    }
});

$(".end_date_today_date").keydown(function(e) {
    if (e.keyCode == 13) {
        $(this).val($('#start_date_today_date_val').val())
    }
});

$('.validation_details,.validation_fundraiser').click(function() {
    $.ajax({
        type: "GET",
        url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
        success: function(data) {
            obj = jQuery.parseJSON(data);
            if (obj.status == 1) {
                swal('Email already exist');
                // return false;
            }
        }
    });
});
$("#system_user_client").submit(function(event) {
    if ($("input[name='password']").val()) {
        if ($("input[name='password']").val().length < 6) {
            $("input[name='password']").addClass('warning');
            swal('Atleast 6 charaters are required for password');
            return false;
        }
    }
});
$("#submit_campaign").submit(function(event) {

    if ($("input[name='phone']").val()) {
        if ($("input[name='phone']").val().length != 12) {
            $("input[name='phone']").addClass('warning');
            swal('Please Enter 12 digit in phone field');
            return false;
        }
    }
    if ($("input[name='start_date']").val() || $("input[name='end_date']").val()) {
        if ($("input[name='end_date']").val() < $("input[name='start_date']").val()) {
            $("input[name='end_date'],input[name='start_date']").addClass('warning');
            swal('End date not less than Start date');
            return false;
        }
    }

    $('.validation_details').click(function() {

        if ($("input[name='campaign_name']").val() == "" || $("input[name='incharge']").val() == "" ||
            $("input[name='email']").val() == "" || $("input[name='zipcode']").val() == "") {
            $("input[name='campaign_name'],input[name='incharge'],input[name='email'],input[name='zipcode']").addClass('warning');
            swal('Please fill out all the required fields');
            return false;
            if ($("#zipcode_validation").val().length != 5) {
                $("input[name='zipcode']").addClass('warning');
                swal('Please fill the  5 digit on the zipcode field');
                return false;
            }
            if ($("input[name='email']").val()) {
                $.ajax({
                    type: "GET",
                    url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                    success: function(data) {
                        obj = jQuery.parseJSON(data);
                        if (obj.status == 1) {
                            swal('Email already exist');
                            return false;
                        }
                    }
                });
            }
        } else {
            if ($("#zipcode_validation").val()) {
                if ($("#zipcode_validation").val().length != 5) {
                    $("input[name='zipcode']").addClass('warning');
                    swal('Please fill the  5 digit on the zipcode field');
                    return false;
                }
            }

            if ($("input[name='email']").val()) {
                $.ajax({
                    type: "GET",
                    url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                    success: function(data) {
                        obj = jQuery.parseJSON(data);
                        if (obj.status == 1) {
                            swal('Email already exist');
                            return false;
                        }
                    }

                });
            }
        }
    });
    if ($(".select-row:checked").length == 0) {
        swal('Select atleast one fundraiser');
        return false;
    }
    if ($("#gallery-photo-add").val() == "") {
        swal('Please upload Images from photo section');
        return false;
    }
});
$('.photo_layout_val').click(function() {

    $('#photo_layout_val_layot').val($(this).val());
});
$(".download-button").click(function() {
    $('#temp_val').val('1');
    
return true;

});
$( "#imgInp" ).change(function() {
  $('#primary_image_val').val('1');
});

$("input[name='calender_type_value']").click(function() {
    $('#temp_val_cal_type').val('1');

});

$("#submit_campaign_edit").submit(function(event) {


    /*
    if ($('#photo_layout_val_layot').val()==2) {
        var $nonempty = $('.calender_type_image2').filter(function() {
        return this.value != ''
      });
         if ($nonempty.length == 0) {
        swal('Please select all Photos for photo layout 2 ');
        return false;
      }
    }
    if ($('#photo_layout_val_layot').val()==3) {
        var $nonempty = $('.calender_type_image3').filter(function() {
        return this.value != ''
      });
         if ($nonempty.length == 0) {
        swal('Please select all Photos for photo layout 3 ');
        return false;
      }
    }

        if ($(".select-row:checked").length == 0) {
            swal('Select atleast one fundraiser');
            return false;
        }*/

    if ($("input[name='campaign_name']").val() == "" || $("input[name='incharge']").val() == "") {
        $("input[name='campaign_name'],input[name='incharge']").addClass('warning');
        swal('Please fill all the Detail page ');
        return false;
    }
    if ($("input[name='campaign_name']").val() == "" || $("input[name='incharge']").val() == "" ||
        $("input[name='email']").val() == "") {
        $("input[name='email']").addClass('warning');
        swal('Please fill all the fields in Details page');
        return false;
        if ($("#zipcode_validation").val().length != 5) {
            $("#zipcode_validation']").addClass('warning');
            swal('Please fill the  5 digit on the zipcode field');
            return false;
        }
        if ($("input[name='email']").val()) {
            /* $.ajax({
                 type: "GET",
                 url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                 success: function(data) {
                     obj = jQuery.parseJSON(data);
                     if (obj.status == 1) {
                         swal('Email already exist');
                         return false;
                     }
                 }
             });*/
        }
    } else {
        if ($("#zipcode_validation").val()) {
            if ($("#zipcode_validation").val().length != 5) {
                $("#zipcode_validation']").addClass('warning');
                swal('Please fill the  5 digit on the zipcode field');
                return false;
            }
        }
      
        
        if ($("input[name='email']").val()) {
            /* $.ajax({
                 type: "GET",
                 url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                 success: function(data) {
                     obj = jQuery.parseJSON(data);
                     if (obj.status == 1) {
                         swal('Email already exist');
                         return false;
                     }
                 }

             });*/
        }
    }

    if ($("#calendar_year").val() == "" || $("input[name='calender_title']").val() == "" ||
        $("#calendar_month").val() == "" || $("#dates-field2").val() == "") {
        $("#calendar_year,#calendar_month,#dates-field2,input[name='calender_title']").addClass('warning');
        swal('Please fill out all the required fileds');
        return false;

    }

    if ($("input[name='primary_image_val']").val() == "") {
        //alert($("input[name='primary_image_val']").val());
        swal('Please Select primary image');
        $('html,body').animate({
            scrollTop: $("input[name='primary_image']").offset().top
        }, 500);
        return false;
    }


  /*  if ($('input[name=calender_type_value]:checked').length) {
        // at least one of the radio buttons was checked
        //return true; // allow whatever action would normally happen to continue
        swal($('input[name=calender_type_value]:checked').length);
        return false;
    } else {
        // no radio button was checked
        swal('');
        return false; // stop whatever action would normally happen
    }*/

if ($("input[name='temp_val_cal_type']").val() == '') {

        swal('Please select calender type');
        return false;
    }
    if ($(".assign_option_radio").val() == '') {

        alert('Input can not be left blank');
        return false;
    }
    if ($.trim($('.assign_option_radio').val()) == '') {
        alert('Input can not be left blank');
        return false;
    }
//return false;

  if ($('#photo_layout_val_layot').val() == 1) {
            var i=0;
            $('.calender_type_image1').each(function() {
                if (!$(this).val()) {
                    swal('Please select all Photos for photo layout 1 ');
                    //return false;
                    i++
                }
            });
            if(i==0){
                
                return true;
            } else {
                
                return false;
            }


        }
        if ($('#photo_layout_val_layot').val() == 2) {
            var i=0;
            $('.calender_type_image2').each(function() {
                if (!$(this).val()) {
                    swal('Please select all Photos for photo layout 2 ');
                    //test()
                    /*return false;
                    event.preventDefault();
                     test()*/
                     i++;
                }

            });
            if(i==0){
                
                return true;
            } else {
                
                return false;
            }

        }
       


        if ($('#photo_layout_val_layot').val() == 3) {
               var i=0;
            $('.calender_type_image3').each(function() {
                if (!$(this).val()) {
                    swal('Please select all Photos for photo layout 3 ');
                   i++;
                }
            });
           if(i==0){
                
                return true;
            } else {
                
                return false;
            }
        }

});



$("#add_system_user_admin").submit(function(event) {

    if ($("input[name='email']").val()) {
        // alert('here');
        $.ajax({
            type: "GET",
            url: base_url + "/check_email_exist?email=" + $("input[name='email']").val(),
            success: function(data) {
                obj = jQuery.parseJSON(data);
                if (obj.status == 1) {
                    swal('Email already exist');
                    return false;
                }
            }

        });
    }
    if ($("input[name='email']").val() == "" || $("#calendar_year").val() == "" ||
        $("input[name='name']").val() == "" || $("#user_type").val() == "" || $("input[name='confirm_cpassword']").val() == "" || $("input[name='password']").val() == "") {
        swal('Please enter the all field');
        return false;
    }
    if ($("input[name='confirm_cpassword']").val() != $("input[name='password']").val()) {
        swal('Password and confirm password does not match');
        return false;
    }

    if ($("input[name='password']").val().length < 6 || $("input[name='confirm_cpassword']").val().length < 6) {
        swal('Atleast 6 charaters are required for password ');
        return false;
    }
    if ($("input[name='phone']").val() != "" && $("input[name='phone']").val().length != 12) {
        swal('Please add maximum 12 digits number in phone field');
        return false;
    }
    if ($("input[name='phone']").val() != "" && $("input[name='password']").val().length < 6) {
        swal('Atleast 6 charaters are required for password');
        return false;
    }

    function retun_status(object_status) {
        swal(object_status);
        return false;
    }

});


$("#system_user_email").keyup(function() {
    $.ajax({
        type: "GET",
        url: base_url + "/check_email_exist?email=" + $(this).val(),
        success: function(data) {
            obj = jQuery.parseJSON(data);
            if (obj.status == 1) {
                swal('Email already exist');
                return false;
            }
        }

    });
});


$(".add_user_event").click(function() {
    $("input[name='phone']").val('');
    $("input[name='email']").val('');
});

// $(".city").keyup(function(e){
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


$(".start_date_today_report").keydown(function(event) {
    if (event.keyCode == 13) {
        $(this).val($('.start_date_today_date_val').val())
    }
});


$('.validation_details_edit_campaign').click(function() {

    if ($("input[name='campaign_name']").val() == "" || $("input[name='incharge']").val() == "" ||
        $("input[name='email']").val() == "") {
        swal('Please fill out all the required fields');
        return false;
        if ($("#zipcode_validation").val().length != 5) {
            swal('Please fill the  5 digit on the zipcode field');
            return false;
        }
        if ($("input[name='email']").val()) {
            /* $.ajax({
                 type: "GET",
                 url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                 success: function(data) {
                     obj = jQuery.parseJSON(data);
                     if (obj.status == 1) {
                         swal('Email already exist');
                         return false;
                     }
                 }
             });*/
        }
    } else {
        if ($("#zipcode_validation").val()) {
            if ($("#zipcode_validation").val().length != 5) {
                swal('Please fill the  5 digit on the zipcode field');
                return false;
            }
        }

        if ($("input[name='email']").val()) {
            /* $.ajax({
                 type: "GET",
                 url: base_url + "/check_campaign_email_exist?email=" + $("input[name='email']").val(),
                 success: function(data) {
                     obj = jQuery.parseJSON(data);
                     if (obj.status == 1) {
                         swal('Email already exist');
                         return false;
                     }
                 }

             });*/
        }
    }
});


$("input[type=file]").change(function() {
    var val = $(this).val();
    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
        case 'gif': case 'jpg': case 'png':
           // alert("an image");
            break;
        default:
            $(this).val('');
            // error message here
            swal("Image upload format only  gif , jpg, png");
            break;
    }
});