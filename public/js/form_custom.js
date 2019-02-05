/*Basic details*/
$("#update_basic_details").click(function() {
	var user_id=$("#user_id").val();
	var form_data=$("#basic_details_form").serialize();
	
    $.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateBasicDetails/"+user_id,

        success:function(data) {
        	var obj=jQuery.parseJSON( data );
        	if (obj.status==1) {
         		$("#msg").html(
         			"<div class='alert alert-success'>"+obj.message+"</div>");
         	}
         	else if(obj.status==0){
         		$("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
         	}
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    });
});
/*Religion details*/
$("#update_religion_details").click(function() {
	var user_id=$("#user_id").val();
	var form_data=$("#religion_information_form").serialize();
	
	$.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateReligionInformation/"+user_id,

        success:function(data) {
        
        	var obj=jQuery.parseJSON( data );
        	//alert(data);
        	if (obj.status==1) {
         		$("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
         	}
         	else if(obj.status==0){
         		$("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
         	}
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    });
});	

/*Religion fields*/
$("#religion_id").change(function() {
    var religion_id=$("#religion_id").val();
  
    $.ajax({
        type: "GET",
        url: base_url+"/castes_list/"+religion_id,
        success:function(data) {
         
          $("#caste_id").html(data);
        },
        error: function(err) {
            alert(err);
        }
    });
    if (religion_id==5) {
        $("#gothra_id").hide();
    }else{
        $("#gothra_id").show();
    }
});

/*User Location Forms*/
$('#update_user_location').click(function(){
   
    var user_id=$("#user_id").val();
    var form_data=$("#user_location_form").serialize();
   /* alert(form_data);*/
    $.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateUserLocation/"+user_id,

        success:function(data) {
        
            var obj=jQuery.parseJSON( data );
            // alert(data);
            if (obj.status==1) {
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
            else if(obj.status==0){
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    });
});
/*proffessional_info_form*/
$('#update_proffessional_info').click(function(){
   
    var user_id=$("#user_id").val();
    var form_data=$("#proffessional_info_form").serialize();
    //alert(form_data);
    $.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateProffessionalInfo/"+user_id,

        success:function(data) {
        
            var obj=jQuery.parseJSON( data );
            //alert(data);
            if (obj.status==1) {
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
            else if(obj.status==0){
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    });
});
/*Update family detail form*/
$('#update_family_detail').click(function() {
  //  alert();
    var user_id=$("#user_id").val();
    var form_data=$("#family_detail_form").serialize();
    //alert(form_data);
    $.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateFamilyDetail/"+user_id,
        success:function(data) {
        
            var obj=jQuery.parseJSON( data );
            //alert(data);
            if (obj.status==1) {
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
            else if(obj.status==0){
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    }); 
});
/*Update about family detail form*/
$('#update_about_family').click(function() {

    var user_id=$("#user_id").val();
    var form_data=$("#about_family_form").serialize();
  
    $.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateAboutFamily/"+user_id,
        success:function(data) {
        
            var obj=jQuery.parseJSON( data );
            // alert(data);
           if (obj.status==1) {
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
            else if(obj.status==0){
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    }); 
});
/*Update life style form*/
$('#update_life_style').click(function() {

    var user_id=$("#user_id").val();
    var form_data=$("#life_style_form").serialize();
  
    $.ajax({
        type: "post",
        data:form_data,
        url: base_url+"/updateLifeStyle/"+user_id,
        success:function(data) {
        
            var obj=jQuery.parseJSON( data );
            // alert(data);
           if (obj.status==1) {
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
            else if(obj.status==0){
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
        },
        error: function(err) {
            alert("Some Error Occured!!!");
        }
    }); 
});
/*to change the list of raasi*/
$('#star').change(function(event) {
    var star=$("#star").val();
  
    $.ajax({
        type: "GET",
        url: base_url+"/rassi_list/"+star,
        success:function(data) {
         
          $("#rassi_moon_sign").html(data);
        },
        error: function(err) {
            alert(err);
        }
    }); 
});
/*Show or Hide the resident status*/
$('#citizenship').change(function(event) {
    var citizenship=$("#citizenship").val();
    var country_living_id=$("#country_living_id").val();
    if (citizenship==country_living_id) {
        $("#resident").hide();
    }else{
        $("#resident").show();
    }
    
});
$('#country_living_id').change(function(event) {
    var citizenship=$("#citizenship").val();
    var country_living_id=$("#country_living_id").val();
    if (citizenship==country_living_id) {
        $("#resident").hide();
    }else{
        $("#resident").show();
    }
    
});
/*validating the no. of married brothers*/
$('#no_of_brothers').change(function(event) {
    var no_of_brothers=$("#no_of_brothers").val();
    if (no_of_brothers==0) {
        $("#married_brothers").html("<option selected value='0'>None</option>");
    }else{
        $("#married_brothers").html
        ("<option selected value='0'>None</option>"+
            "<option value='1'>1</option>"+
            "<option value='2'>2</option>"+
            "<option value='3'>3</option>"+
            "<option value='4'>4</option>"+
            "<option value='5'>5</option>"+
            "<option value='6'>5+</option>");
    }
    
});
/*validating the no. of married sisters*/
$('#no_of_sisters').change(function(event) {
    var no_of_sisters=$("#no_of_sisters").val();
    if (no_of_sisters==0) {
        $("#married_sisters").html("<option selected value='0'>None</option>");
    }else{
        $("#married_sisters").html
        ("<option selected value='0'>None</option>"+
            "<option value='1'>1</option>"+
            "<option value='2'>2</option>"+
            "<option value='3'>3</option>"+
            "<option value='4'>4</option>"+
            "<option value='5'>5</option>"+
            "<option value='6'>5+</option>");
    }
    
});
/*to show all the list*/
$().ready(function() {
    var religion_id=$("#religion_id").val();
  
    $.ajax({
        type: "GET",
        url: base_url+"/castes_list/"+religion_id,
        success:function(data) {
         
          $("#caste_id").html(data);
        },
        error: function(err) {
            alert(err);
        }
    });
    
    /*get the list of raasi*/
    var star=$("#star").val();
    $.ajax({
        type: "GET",
        url: base_url+"/rassi_list/"+star,
        success:function(data) {
         $("#rassi_moon_sign").html(data);
        },
        error: function(err) {
            alert(err);
        }
    }); 
    if (religion_id==5) {
        $("#gothra_id").hide();
    }else{
        $("#gothra_id").show();
    }
    var citizenship=$("#citizenship").val();
    var country_living_id=$("#country_living_id").val();
    if (citizenship==country_living_id) {
        $("#resident").hide();
    }else{
        $("#resident").show();
    }

    /*no of married brothers*/
    var no_of_brothers=$("#no_of_brothers").val();
    if (no_of_brothers==0) {
        $("#married_brothers").html("<option selected value='0'>None</option>");
    }else{
        $("#married_brothers").html
        ("<option selected value='0'>None</option>"+
            "<option value='1'>1</option>"+
            "<option value='2'>2</option>"+
            "<option value='3'>3</option>"+
            "<option value='4'>4</option>"+
            "<option value='5'>5</option>"+
            "<option value='6'>5+</option>");
    }
    /*no of married sisters*/
    var no_of_sisters=$("#no_of_sisters").val();
    if (no_of_sisters==0) {
        $("#married_sisters").html("<option selected value='0'>None</option>");
    }else{
        $("#married_sisters").html
        ("<option selected value='0'>None</option>"+
            "<option value='1'>1</option>"+
            "<option value='2'>2</option>"+
            "<option value='3'>3</option>"+
            "<option value='4'>4</option>"+
            "<option value='5'>5</option>"+
            "<option value='6'>5+</option>");
    }
});

/***
** @Payments modules 
*/
/*$('#refund').click(function() {
    var id=$("#status").val();
    $.ajax({
        type: "GET",
        url: base_url+"/paymentRefund/"+id,
        success:function(data) {
            var obj=jQuery.parseJSON( data );
            // alert(data);
            if (obj.status==1) {
                $("#refund").hide();
                $("payment_status").innerHTML="Refunded";
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
            else if(obj.status==0){
                $("#msg").html("<div class='alert alert-success'>"+obj.message+"</div>");
            }
        },
        error: function(err) {
            alert(err);
        }
    }); 
});*/