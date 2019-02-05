<?php

namespace App\Http\Controllers;

use App\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

class UserFilterController extends Controller
{
    public function __construct()
    {
        header("Content-Type:application/json");
    }

    /*View Full Profile*/
    public function viewFullProfile(Request $request)
    {
        $data = $request->input();
        $searchedData = Users::searchByFilter($data);
        
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key => $result)
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['user_type']=$result->user_type;
                $data[$key]['phone']=$result->phone;
                $data[$key]['status']=$result->status;
                $data[$key]['user_type']=$result->user_type;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['weight']=$result->weight;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['body_type']=$result->body_type;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;        
                $data[$key]['know_to_read']=$result->know_to_read;        
                $data[$key]['eating_habits']=$result->eating_habits;        
                $data[$key]['drinking_habits']=$result->drinking_habits;        
                $data[$key]['smoking_habits']=$result->smoking_habits;        
                $data[$key]['profile_for']=$result->profile_for;        
                /*Religion Parameters*/
                $data[$key]['religion_id']=$result->religion_id;
                $data[$key]['caste_id']=$result->caste_id;        
                $data[$key]['sub_caste']=$result->sub_caste_id;   
                $data[$key]['marry_in_same_or_not']=$result->marry_in_same_or_not;     
                $data[$key]['gothra']=$result->gothra_id;       
                $data[$key]['star']=$result->star;
                $data[$key]['rassi']=$result->rassi_moon_sign;        
                $data[$key]['zodiac']=$result->zodiac_star_sign;       
                $data[$key]['have_dosh']=$result->have_dosh;
                $data[$key]['dosh']=$result->have_dosh;
                /*Location parameters*/
                $data[$key]['country_living_id']=$result->country_living_id;
                $data[$key]['citizenship']=$result->citizenship;
                $data[$key]['resident_status']=$result->resident_status;
                $data[$key]['residing_state']=$result->residing_state;
                $data[$key]['residing_city']=$result->residing_city;
                /*Professional Parameters*/
                $data[$key]['highest_education_id']=$result->highest_education_id;
                $data[$key]['institution']=$result->institution;
                $data[$key]['education_detail']=$result->education_detail;
                $data[$key]['employeed_in']=$result->employeed_in;
                $data[$key]['occupation_id']=$result->occupation_id;
                $data[$key]['occupation_detail']=$result->occupation_detail;
                $data[$key]['currency_id']=$result->currency_id;
                $data[$key]['annual_income']=$result->annual_income;
                /*Family Details Parameters*/
                $data[$key]['family_value']=$result->family_value;
                $data[$key]['family_type']=$result->family_type;
                $data[$key]['family_status']=$result->family_status;
                $data[$key]['father_status']=$result->father_status;
                $data[$key]['mother_status']=$result->mother_status;
                $data[$key]['no_of_brothers']=$result->no_of_brothers;
                $data[$key]['married_brothers']=$result->married_brothers;
                $data[$key]['no_of_sisters']=$result->no_of_sisters;
                $data[$key]['married_sisters']=$result->married_sisters;
                $data[$key]['family_location']=$result->family_location;
                $data[$key]['parents_phone_no']=$result->parents_phone_no;
                $data[$key]['country_id']=$result->country_id;
                $data[$key]['state_id']=$result->state_id;
                $data[$key]['city_id']=$result->city_id;
                $data[$key]['family_origin']=$result->family_origin;
                /*About Family Content*/
                $data[$key]['family_details']=$result->family_details;
                /*Basic and religion Preferences*/
                $data[$key]['preferred_age_from']=$result->preferred_age_from;
                $data[$key]['preferred_age_to']=$result->preferred_age_to;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['preferred_height_from']=$result->preferred_height_from;
                $data[$key]['preferred_height_to']=$result->preferred_height_to;
                $data[$key]['physical_status']=$result->physical_status;
                $data[$key]['eating_habits']=$result->eating_habits;
                $data[$key]['drinking_habits']=$result->drinking_habits;
                $data[$key]['smoking_habits']=$result->smoking_habits;
                $data[$key]['religion']=$result->religion;
                $data[$key]['mother_tounge_id']=$result->mother_tounge_id;
                $data[$key]['gothra']=$result->gothra;
                $data[$key]['castes']=$result->castes;
                $data[$key]['manglik']=$result->manglik;
                $data[$key]['stars']=$result->stars;
                /*Get Professional Preferences*/
                $data[$key]['preferred_education']=$result->preferred_education;
                $data[$key]['preferred_occupations']=$result->preferred_occupations;
                $data[$key]['annual_income']=$result->annual_income;
                /*Location Preferences*/
                $data[$key]['countries']=$result->countries;
                $data[$key]['states']=$result->states;
                $data[$key]['cities']=$result->cities;
                $data[$key]['citizen']=$result->citizen;
                /*Preferences in Details*/
                $data[$key]['looking_for_details']=$result->looking_for_details;
                /*About self in Details*/
                $data[$key]['content']=$result->content;
                /*About self in Details*/
                $data[$key]['image']=$result->image;
                /*About self in Details*/
                $data[$key]['video']=$result->video;
            }
            $response['status'] = 1;
            $response['message'] = "User details with full profile";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /*View Profile by specified Age*/
    public function ageSortingApi(Request $request)
    {
        $res['status'] = 0;
        $data['age']=$request->input('age');
        $data['age_upto']=$request->input('age_upto');
        
        if ($data['age'] == "") {
            $res['message'] = "Please enter age";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
       
        $searchedData=Users::searchByAge($data);
        
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;             
            }
            $response['status'] = 1;
            $response['message'] = "User details having age and above: $data[age] ";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /*View Profile by specified height*/
    public function heightSortingApi(Request $request)
    {
        $res['status'] = 0;
        $data['height']=$request->input('height');
        $data['height_upto']=$request->input('height_upto');
        
        if ($data['height'] == "") 
        {
            $res['message'] = "Please enter height";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $searchedData=Users::searchByHeight($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;              
            }
            $response['status'] = 1;
            $response['message'] = "User details having height and above: $data[height]";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /*View Profiles By Martial status*/
    public function MaritalStatusApi(Request $request)
    {
        $res['status'] = 0;
        $data['maritial_status']="";
        
        $data['maritial_status']=$request->input('maritial_status');
        if ($data['maritial_status'] == "") 
        {
            $res['message'] = "Please enter maritial_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $searchedData = Users::searchByMaritalStatus($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;       
            }
            $response['status'] = 1;
            $response['message'] = "User details having maritial_status: $data[maritial_status]";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /*View Profiles By Martial status- NeverMarriedApi*/
    public function NeverMarriedApi(Request $request)
    {
        $response['status'] = 0;
        $response['message'] = 'Data not found';
        
        $query=DB::table('maritial_status_table')->where('name','Never Married')->first();
        
        $data['maritial_status'] =$query->id;
               
        $searchedData=Users::searchByMaritalStatus($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;       
            }
            $response['status'] = 1;
            $response['message'] = "User details having maritial_status: $data[maritial_status]";
            $response['data'] = $data;
        }    
        return response($response, 200)->header('Content-Type', 'application/json');    
    }

    /*View Profiles By Martial status- Divorced Api*/
    public function DivorcedApi(Request $request)
    {
        $response['status'] = 0;
        $response['message'] = 'Data not found';
        
        $query=DB::table('maritial_status_table')->where('name','Divorced')->first();
        
        $data['maritial_status'] =$query->id;
        //echo($query->id);die;
       
        $searchedData=Users::searchByMaritalStatus($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;       
            }
            $response['status'] = 1;
            $response['message'] = "User details having maritial_status: $data[maritial_status]";
            $response['data'] = $data;
        }    
        return response($response, 200)->header('Content-Type', 'application/json');
        
    }

    /*View Profiles By Martial status- Awaiting Divorce Api*/
    public function AwaitingDivorceApi(Request $request)
    {
        $response['status'] = 0;
        $response['message'] = 'Data not found';
        
        $query = DB::table('maritial_status_table')->where('name','Awaiting Divorce')->first();
        
        $data['maritial_status'] = $query->id;
       
        $searchedData = Users::searchByMaritalStatus($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;       
            }
            $response['status'] = 1;
            $response['message'] = "User details having maritial_status: $data[maritial_status]";
            $response['data'] = $data;
        }    
        return response($response, 200)->header('Content-Type', 'application/json');
        
    }

    /* View Profiles By Religions Api*/
    public function ReligionsApi(Request $request)
    {
        $res['status'] = 0;
        $data['religion_id']=$request->input('religion_id');
        if ($data['religion_id'] == "") 
        {
            $res['message'] = "Please enter religion_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $searchedData = Users::searchByReligions($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;  
                $data[$key]['religion_id']=$result->religion_id;
                $data[$key]['caste_id']=$result->caste_id;           
            }
            $response['status'] = 1;
            $response['message'] = "User details having maritial_status: $data[religion_id]";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /* View Profiles By Mother tounge Api*/
    public function MotherTongueApi(Request $request)
    {
        $res['status'] = 0;
        $languages = explode(',',$request->input('mother_tounge_id'));

        $data['mother_tounge_id']=$languages;
        if (count($data['mother_tounge_id'])==0) 
        {
            $res['message'] = "Please enter mother_tounge_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $searchedData=Users::searchByMotherTounge($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;  
                $data[$key]['religion_id']=$result->religion_id;
                $data[$key]['caste_id']=$result->caste_id;           
            }
            $response['status'] = 1;
            $response['message'] = "User details having mother_tounge: $request->input(mother_tounge_id)";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /* View Profiles By Caste Api*/
    public function CasteApi(Request $request)
    {
        $res['status'] = 0;
        $caste_id = explode(',',$request->input('caste_id'));
        $data['caste_id'] = $caste_id;
        if (count($data['caste_id'])==0)
        {
            $res['message'] = "Please enter caste_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $searchedData=Users::searchByCaste($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;  
                $data[$key]['religion_id']=$result->religion_id;
                $data[$key]['caste_id']=$result->caste_id;           
            }
            $response['status'] = 1;
            $response['message'] = "User details having caste: $request->input(caste_id)";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /* View Profiles By Education Api*/
    public function EducationApi(Request $request)
    {
        $res['status'] = 0;
        $data['highest_education_id']='';
        $data['employeed_in']='';
        $data['occupation_id']='';
        if (Route::is("EducationApi"))
        {
            $highest_education_id=explode(',',$request->input('highest_education_id'));
            $data['highest_education_id']=$highest_education_id;
        
            if (count($highest_education_id)==0) 
            {
                $res['message'] = "Please enter highest_education_id";
                return response($res, 200)->header('Content-Type', 'application/json');
            }
        }
        if (Route::is("EmployedInApi"))
        {
            $data['employeed_in']=$request->input('employeed_in');
            if ($data['employeed_in']=="") {
                $res['message'] = "Please enter employeed_in";
                return response($res, 200)->header('Content-Type', 'application/json');
            }
        }    
        if (Route::is("OccupationApi")){
            $data['occupation_id']=$request->input('occupation_id');
            if ($data['occupation_id']=="") {
                $res['message'] = "Please enter occupation_id";
                return response($res, 200)->header('Content-Type', 'application/json');
            }
        }

        $searchedData=Users::searchByProfessionFields($data);
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
            {
                /*registeration and Basic details parameters*/
                $data[$key]['name']=$result->name;
                $data[$key]['dob']=$result->dob;
                $data[$key]['age']=$result->age;
                $data[$key]['gender']=$result->gender;
                $data[$key]['height']=$result->height;
                $data[$key]['maritial_status']=$result->maritial_status;
                $data[$key]['mother_tounge']=$result->mother_tounge_id;
                $data[$key]['complextion']=$result->complextion;
                $data[$key]['physical_status']=$result->physical_status;  
                $data[$key]['religion_id']=$result->religion_id;
                $data[$key]['caste_id']=$result->caste_id;  
                $data[$key]['highest_education_id']=$result->highest_education_id;
                $data[$key]['institution']=$result->institution;
                $data[$key]['education_detail']=$result->education_detail;
                $data[$key]['employeed_in']=$result->employeed_in;
                $data[$key]['occupation_id']=$result->occupation_id;
                $data[$key]['occupation_detail']=$result->occupation_detail;
                $data[$key]['currency_id']=$result->currency_id;
                $data[$key]['annual_income']=$result->annual_income;         
            }
            $response['status'] = 1;
            $response['message'] = "User details";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $response['status'] = 0;
            $response['message'] = 'Data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /* Annual Income */
    public function annual_income(Request $request)
    {
        $params = $request->input();

        $response = array('status' => 0, 'message' => 'Insufficent Data.');

        if(!empty($params['annual_income']))
        {
            $data = Users::get_users_by_annual_id($params);

            $response['message'] = 'No data found';
            $response['data'] = array();

            if(count($data) > 0)
            {
                $response = array('status' => 1, 'message' => 'success', 'data' => $data);
            }
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* City, Country, State Filter */
    public function location_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_location($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* REsident Status Filter */
    public function resident_status_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_resident_status($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Citizenship Status Filter */
    public function citizenship_status_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_citizenship_status($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Citizenship Status Filter */
    public function physical_status_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_physical_status($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Complexion Status Filter */
    public function complexion_status_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_complexion_status($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Body Type Filter */
    public function body_type_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_body_type($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Eating Habits Filter */
    public function eating_habits_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_eating_habits($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Family Value Filter */
    public function family_value_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_family_value($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Family type Filter */
    public function family_type_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_family_type($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Family Status Filter */
    public function family_status_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_family_status($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Have children status Filter */
    public function have_children_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_have_children($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Profile Created for Filter */
    public function profile_created_for_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_profile_created_for($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Profile Horoscope for Filter */
    public function profile_horoscope_filter(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_by_horoscope($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* get user without profile Filter */
    public function get_users_without_profile(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_without_profile($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* get user with profile Filter */
    public function get_users_with_profile(Request $request)
    {
        $params = $request->input();
        $data = Users::get_users_with_profile($params);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if(count($data) > 0)
        {
            $response = array('status' => 1, 'message' => 'success', 'data' => $data);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* get user with profile Filter */
    public function search_by_member_id(Request $request)
    {
        $params = $request->input();

        $user_data = Users::is_exist($params['user_id']);
        $member_data = Users::is_member_exist($params['member_id']);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if($user_data && $member_data)
        {
            $get_user_details = Users::get_user_details_by_member_id($params['member_id']);
            $response = array('status' => 1, 'message' => 'success', 'data' => $get_user_details);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    public function test(Request $request)
    {
        $header = $request->header('Authorization');
        print_r($header); die();

    }
    
    /* Star match api */
    /*    public function star_match_api(Request $request)
    {
        $params = $request->input();
        $star_data = Users::is_star_exist($params['star']);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if($star_data){
            $data = Users::get_users_star_matches($params['star']);
         
            if(count($data) > 0)
            {
                $response = array('status' => 1, 'message' => 'success', 'data' => $data);
            }
        }
        
        return response($response, 200)->header('Content-Type', 'application/json');
    }
    */
    
}