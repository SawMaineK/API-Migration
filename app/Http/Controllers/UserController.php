<?php

namespace App\Http\Controllers;

use App\Common;
use App\User;
use App\Users;
use Faker\Provider\file;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Mail;
use Carbon\Carbon;
// header("Content-Type:application/json");
class UserController extends Controller {
    
    public function __construct()
    {
        header("Content-Type:application/json");
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function saveUser(Request $request)
    {
        $params = $request->input();
        $name = $request->input('name');
        $email = $request->input('email');
        $dob = $request->input('dob');
        $Height = $request->input('Height');
        $Weight = $request->input('Weight');
        $MaritalStatus = $request->input('MaritalStatus');
        $BodyType = $request->input('BodyType');
        $PhysicalStatus = $request->input('PhysicalStatus');
        $MotherTongue = $request->input('MotherTongue');
        $KnowtoRead = $request->input('KnowtoRead');
        $EatingHabits = $request->input('EatingHabits');
        $DrinkingHabits = $request->input('DrinkingHabits');
        $SmokingHabits = $request->input('SmokingHabits');
        $Religion = $request->input('Religion');
        $Caste = $request->input('Caste');
        $SubCaste = $request->input('SubCaste');
        $Gothra = $request->input('Gothra');
        $Star = $request->input('Star');
        $Raasi = $request->input('Raasi');
        $Zodiac = $request->input('Zodiac');
        $HaveDosh = $request->input('HaveDosh');

        // start Bride's Location
        $Country = $request->input('Country');
        $Citizenship = $request->input('Citizenship');
        $State = $request->input('State');
        $City = $request->input('City');

        //Professional Information Edit
        $Education = $request->input('Education');
        $College = $request->input('College');
        $Employed = $request->input('Employed');
        $Occupation = $request->input('Occupation');
        $OccupationDetail = $request->input('OccupationDetail');
        $AnnualIncome = $request->input('AnnualIncome');

        //Family Details
        $FamilyValues = $request->input('FamilyValues');
        $FamilyType = $request->input('FamilyType');
        $FamilyStatus = $request->input('FamilyStatus');
        $Ancestral = $request->input('Ancestral');
        $FamilyLocation = $request->input('FamilyLocation');
        $FatherStatus = $request->input('FatherStatus');
        $Motherstatus = $request->input('Motherstatus');
        $Brother = $request->input('Brother');
        $Sister = $request->input('Sister');
        $AboutMyFamily = $request->input('AboutMyFamily');

        //LifeStyle
        $hobbies = $request->input('hobbies');
        $music = $request->input('music');
        $Spokenlanguages = $request->input('Spokenlanguages');

        //Basic & Religion Preferences
        $groomAge = $request->input('groomAge');
        $groomHeight = $request->input('groomHeight');
        $GroomMaritalstatus = $request->input('groomMaritalstatus');
        $groomPhysicalStatus = $request->input('groomPhysicalStatus');
        $groomEatingHabits = $request->input('groomEatingHabits');
        $groomSmokingHabits = $request->input('groomSmokingHabits');
        $groomDrinkingHabits = $request->input('groomDrinkingHabits');
        $groomReligion = $request->input('groomReligion');
        $groomMotherTongue = $request->input('groomMotherTongue');
        $groomCaste = $request->input('groomCaste');
        $groomStar = $request->input('groomStar');
        $groomGothra = $request->input('groomGothra');
        $groomManglik = $request->input('groomManglik');

        //Professional Preferences
        $groomEducation = $request->input('groomEducation');
        $groomOccupation = $request->input('groomOccupation');
        $groomAnnualIncome = $request->input('groomAnnualIncome');
        $groomCountry = $request->input('groomCountry');
        $groomState = $request->input('groomState');
        $groomCitizenship = $request->input('groomCitizenship');
        $groomResidingCity = $request->input('groomResidingCity');
        $lookingfor = $request->input('groomlookingfor');
        $parmArray = array("key", "name", "email", "dob", "Height", "Weight","MaritalStatus", "BodyType", "Complexion",
            "PhysicalStatus", "MotherTongue", "KnowtoRead", "EatingHabits", "DrinkingHabits", "SmokingHabits",
            "Religion", "Caste", "SubCaste", "Gothra", "Star", "Raasi", "Zodiac", "HaveDosh", "Country",
            "Citizenship", "State", "City", "Education", "College", "Employed", "Occupation",
            "OccupationDetail", "AnnualIncome", "FamilyValues", "FamilyType", "FamilyStatus", "Ancestral",
            "FamilyLocation", "FatherStatus", "Motherstatus", "Brother", "Sister", "AboutMyFamily", "hobbies",
            "music", "Spokenlanguages", "groomAge", "groomHeight", "groomMaritalstatus", "groomPhysicalStatus",
            "groomEatingHabits", "groomSmokingHabits", "groomDrinkingHabits", "groomReligion", "groomMotherTongue",
            "groomCaste", "groomStar", "groomGothra", "groomManglik", "groomEducation", "groomOccupation", "groomAnnualIncome",
            "groomCountry", "groomState", "groomCitizenship", "groomResidingCity", "groomlookingfor","lifestyle");
        $KEY = $request->input('key');
        $data['status'] = 0;

        $arranotay = array();
        foreach ($parmArray as $key => $val) {
            if (array_key_exists($val, $params)) {
                
            } else {
                $response['message'] = "Please enter parameter " . $val;
                return response($response, 200)->header('Content-Type', 'application/json');
                die;
            }

            if (empty($_REQUEST[$val])) {
                $response['status'] = 0;
                $response['message'] = "Please enter " . $val;
                return response($response, 200)->header('Content-Type', 'application/json');
            }
            $parameterResult = $_REQUEST;
        }

        $response['status'] = 1;
        $response['message'] = "Data updated successfully ";
        $response['data'] = $parameterResult;
        return response($response, 200)->header('Content-Type', 'application/json');
        die;
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Users  $users
     * @return \Illuminate\Http\Response
     */
    public function show(Users $users) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Users  $users
     * @return \Illuminate\Http\Response
     */
    public function edit(Users $users) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Users  $users
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Users $users) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Users  $users
     * @return \Illuminate\Http\Response
     */
    public function destroy(Users $users) {
        //
    }
    #################################### Add User Data Apis##########################################################
    /***Signup API
    ***@Created on: August 1,2018
    **@Detail: Stores the data of all the users
    */ 
    public function signup(Request $request)
    {
        $data['status'] = 0;

        //Variables containg signup data
        $name = $request->input('name');
        $password = $request->input('password');
        $email = $request->input('email');
        $phone = $request->input('phone');
        $user_type = $request->input('user_type');
        $data['created_at'] = $data['updated_at'] = date("Y-m-d");

        if ($name == "")
        {
            $data['message'] = "Please enter Your Name";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        if ($email == "")
        {
            $data['message'] = "Please enter Your Email";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        if (!filter_var($email, FILTER_VALIDATE_EMAIL))
        {
            $data['message'] = "Please enter valid email address";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        if ($password == "")
        {
            $data['message'] = "Please enter Your password";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        if ($phone == "")
        {
            $data['message'] = "Please enter Your Phone No.";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        $user_check = Users::check_user_by_email($email);
        if (count($user_check) > 0)
        {
            $data['message'] = "Email already exist";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        if ($user_type == "")
        {
            $data['message'] = "Please enter The User Type";
            return response($data, 200)->header('Content-Type', 'application/json');
        }

        $user_number_check = Users::is_exist_by_phone($phone);
        if($user_number_check)
        {
            $data['message'] = "User phone number already exist";
            return response($data, 200)->header('Content-Type', 'application/json');
        }

        $data['user_type'] = $user_type;
        $data['email'] = $email;
        $data['name'] = $name;
        $data['password'] = $password;
        $data['phone'] = $phone;
        $last_insert_id = Users::registerUser($data); //storing data in database

        if ($last_insert_id)
        {
            return response(array(
                        'status' => 1,
                        'message' => 'User register sucessfully',
                        'user_id' => $last_insert_id
                            ), 200)->header('Content-Type', 'application/json');
        }
    }

    /********************************Basic_details_api*************************************/
    public function addBasicDetails(Request $request)
    {
        $res['status'] = 0;

        //Variables containing user data
        $data['user_id'] = $request->input('user_id');
        $data['profile_for'] = $request->input('profile_for');
        $data['gender'] = $request->input('gender');
        $data['dob'] = $request->input('dob');
        $data['age'] = $request->input('age');
        $data['height'] = $request->input('height');
        $data['weight'] = $request->input('weight');
        $data['maritial_status'] = $request->input('maritial_status');
        $data['body_type'] = $request->input('body_type');
        $data['complextion'] = $request->input('complextion');
        $data['physical_status'] = $request->input('physical_status');
        $data['mother_tounge_id'] = $request->input('mother_tounge_id');
        $data['know_to_read'] = $request->input('know_to_read');
        $data['eating_habits'] = $request->input('eating_habits');
        $data['drinking_habits'] = $request->input('drinking_habits');
        $data['smoking_habits'] = $request->input('smoking_habits');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");
        
        if ($data['user_id'] == "")
        {
            $res['message'] = "Please enter Your user id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckBasicDdetails = Users::CheckBasicDdetails($data['user_id']);
        if(count($CheckBasicDdetails) == 1)
        {
            $res['message'] = "Already inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        if ($data['profile_for'] == "")
        {
            $res['message'] = "Please enter for whome you are making this profle";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['gender'] == "")
        {
            $res['message'] = "Please enter your gender";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['dob'] == "")
        {
            $res['message'] = "Please enter your dob";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['age'] == "")
        {
            $res['message'] = "Please enter your age";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['height'] == "")
        {
            $res['message'] = "Please enter your height";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['weight'] == "")
        {
            $res['message'] = "Please enter your weight";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['maritial_status'] == "")
        {
            $res['message'] = "Please enter your maritial status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['body_type'] == "")
        {
            $res['message'] = "Please enter your body type";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['complextion'] == "")
        {
            $res['message'] = "Please enter your complextion";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['physical_status'] == "")
        {
            $res['message'] = "Please enter your physical status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['mother_tounge_id'] == "")
        {
            $res['message'] = "Please enter your mother tounge";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['know_to_read'] == "")
        {
            $data['know_to_read'] = 0;
        }
        if ($data['eating_habits'] == "")
        {
            $res['message'] = "Please enter your eating habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['drinking_habits'] == "")
        {
            $res['message'] = "Please enter your drinking habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['smoking_habits'] == "")
        {
            $res['message'] = "Please enter your smoking habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $result = Users::addBasicDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "user details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }
    
    /***
    **@Storing Personal Details
    */
    public function addPersonalDetails(Request $request)
    {
        $res['status'] = 0;

        //Variables containing about_family information data
        $data['user_id'] = $request->input('user_id');
        $data['content'] = $request->input('content');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");
        if ($data['user_id'] == "")
        {
            $res['message'] = "Please enter Your user id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']); //checking if user exists or not
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckPersonalDetails = Users::CheckPersonalDetails($data['user_id']);  //checking if users details already there
        if(count($CheckPersonalDetails) == 1)
        {
            $res['message'] = "User data already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['content'] == "")
        {
            $res['message'] = "Please enter Details of the person";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addPersonalDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Storing the uploaded pictures
    */ 
    public function uploadImages(Request $request)
    {   
        $res['status'] = 0;

        $user_id = $request->input('user_id');
        if ($user_id == "") 
        {
            $res['message'] = "Please enter Your user id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($user_id);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUploadImages = Users::CheckUploadImages($user_id);
        if(count($CheckUploadImages) == 1)
        {
            $res['message'] = "User Images already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $photos = count($request->file('photos'));
        if ($photos == 0) 
        {
            $res['message'] = "Please provide the photos";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $files = $request->file('photos');
        $result = '';
        foreach ($files as $file) 
        {
            $filename = $file->getClientOriginalName();
            $picture = date('His') . $filename;
            $destinationPath = base_path() . '/public/profile_images';
            $file->move($destinationPath, $picture);
            $photo_arr['image'] = $picture;
            $photo_arr['status'] = "1";
            $photo_arr['user_id'] = $user_id;
            $photo_arr['created_at'] = date("Y-m-d");
            $photo_arr['updated_at'] = date("Y-m-d");
            $result = DB::table('user_profile_images')->insert($photo_arr);
        }
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User pictures added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Storing the uploaded pictures
    */ 
    public function uploadVideo(Request $request)
    {   
        $res['status'] = 0;

        $user_id = $request->input('user_id');
        if ($user_id == "") 
        {
            $res['message'] = "Please enter Your user id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($user_id);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUploadVideo = Users::CheckUploadVideo($user_id);
        if(count($CheckUploadVideo) == 1)
        {
            $res['message'] = "User Video already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $videos = count($request->file('videos'));
        if ($videos == 0) 
        {
            $res['message'] = "Please provide the videos";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $files = $request->file('videos');
        foreach ($files as $file) 
        {
            $filename = $file->getClientOriginalName();
            $video_name = date('His') . $filename;
            $destinationPath = base_path() . '/public/uploaded_videos';
            $file->move($destinationPath, $video_name);
            $video_arr['video'] = $video_name;
            $video_arr['status'] = "1";
            $video_arr['user_id'] = $user_id;
            $video_arr['created_at'] = date("Y-m-d");
            $video_arr['updated_at'] = date("Y-m-d");
            $result=DB::table('user_videos')->insert($video_arr);
        }

        $result='';
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User videos added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    //display list of mother_tongue apis 
    public function getMotherToungList() 
    {
       $data_result['status'] = 0;
       $result = Common::getMotherToungList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) 
            {
                $data[$key]['language_id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Language list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json'); die;
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json'); die;
        }
    }

    //display list of weight lists
    public function getWeightList() 
    {
       $data_result['status'] = 0;
       $result = Common::getWeightList();
       if(count($result) > 0)
        {
            foreach ($result as $key => $value) 
            {
                $data[$key]['weight'] = $value->weight;
                $data[$key]['status'] = $value->status;
            }

            $data_result['status'] = 1;
            $data_result['message_list'] = "Weight list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json'); die;
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] = "Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
            die;
        }
    }
    //display list of weight lists
    public function getHeightList() 
    {
       $data_result['status'] = 0;
       $result=Common::getHeightList();
       if(count($result) > 0)
       {
            foreach ($result as $key => $value) 
            {
                $data[$key]['height'] = $value->height;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Height list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    //display list of Age lists
    public function getAgeList() 
    {
       $data_result['status'] = 0;
       $result=Common::getAgeList();
       if(count($result) > 0)
       {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['age'] = $value->age;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Age list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Description this function gets the list of profile for items
    */
    public function getProfileForList() 
    {
       $data_result['status'] = 0;
       $data_result['message'] = "Data not found";

       $result = Common::getProfileForList();
       if(count($result) > 0)
       {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Profiles Created For list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        return response($data_result, 200)->header('Content-Type', 'application/json');
    }

    /***
    **@Description this function gets the Maritial statuses
    */
    public function getMaritialStatusList() 
    {
        $data_result['status'] = 0;
        $data_result['message'] ="Data not found";

        $result = Common::getMaritialStatusList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Maritial Statuses list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        return response($data_result, 200)->header('Content-Type', 'application/json');
    }

    /***
    **@Description this function gets the fields for complextion
    */
    public function getComplextionList() 
    {
       $data_result['status'] = 0;
       $data_result['message'] ="Data not found";

       $result = Common::getComplextionList();
       if(count($result) > 0)
       {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Complextion list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        return response($data_result, 200)->header('Content-Type', 'application/json');
    }

    /*************************Religion Api**********************************************/
    ####################################################################################
    ####################################################################################
    //Storing Religion Information
    public function addReligionInformation(Request $request)
    {
        $res['status'] = 0;

        //Variables containing religion information data
        $data['user_id'] = $request->input('user_id');
        $data['religion_id'] = $religion_id = $request->input('religion');
        $data['caste_id'] = $caste_id = $request->input('caste');
        $data['sub_caste_id'] = $sub_caste_id = $request->input('sub_caste');
        $data['gothra_id'] = $gothra_id = $request->input('gothra');
        $data['star'] = $star = $request->input('star');
        $data['rassi_moon_sign'] = $raasi = $request->input('raasi');
        $data['zodiac_star_sign'] = $zodiac = $request->input('zodiac');
        $data['have_dosh'] = $have_dosh = $request->input('have_dosh');
        $data['dosh'] = $dosh = $request->input('dosh');
        $data['marry_in_same_or_not'] = $marry_in_same_or_not = $request->input('marry_in_same_or_not');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");
        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckReligionDetails = Users::CheckReligionDetails($data['user_id']);
        if(count($CheckReligionDetails) == 1)
        {
            $res['message'] = "Already inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['religion_id'] == "") 
        {
            $res['message'] = "Please enter your religion";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['caste_id'] == "") 
        {
            $res['message'] = "Please enter your caste";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['sub_caste_id'] == "") 
        {
            $res['message'] = "Please enter your sub_caste";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($marry_in_same_or_not == '')
        {
            $res['message'] = "Please enter marry_in_same_or_not";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        if($gothra_id == '')
        {
           $res['message'] = "Please enter gothra";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($star == '')
        {
            $res['message'] = "Please enter Star";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($raasi == '')
        {
            $res['message'] = "Please enter raasi_moon_sign";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($zodiac == '') 
        {
            $res['message'] = "Please enter zodiac_star_sign";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($have_dosh == '') 
        {
            $res['message'] = "Please enter if you have_dosh or not";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($have_dosh == 1) 
        {
            if ($dosh == '') 
            {
                $res['message'] = "Please enter dosh";
                return response($res, 200)->header('Content-Type', 'application/json');
            }    
        }

        $result = Users::addReligionDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "user details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /*****************Get Religion ****************************/
    public function getReligionList() 
    {
       $data_result['status'] = 0;
       $result = Common::getReligionList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Religion list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /*****************Get Caste ****************************/
    public function getCasteList() 
    {
       $data_result['status'] = 0;
       $result = Common::getCasteList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['religion_id'] = $value->religion_id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Caste list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Description this function gets the zodiac
    */
    public function getZodiacList() 
    {
       $data_result['status'] = 0;
       $data_result['message'] ="Data not found";

       $result=Common::getZodiacList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Zodiac list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        return response($data_result, 200)->header('Content-Type', 'application/json');
    }

    /*****************Get Sub Caste ****************************/
    public function getSubCasteList() 
    {
       $data_result['status'] = 0;
       $result=Common::getSubCasteList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Sub Caste list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /*****************Get Star ****************************/
    public function getStarList() 
    {
       $data_result['status'] = 0;
       $result=Common::getStarList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Star list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /*****************Get dosh ****************************/
    public function getDoshList() 
    {
        $data_result['status'] = 0;
        $data_result['message'] = "Data not found";
        $result = Common::getDoshList();
        
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                    $data[$key]['id'] = $value->id;
                    $data[$key]['name'] = $value->name;
                    $data[$key]['status'] = $value->status;
                }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Dosh list.";
            $data_result['data'] = $data;
        }
          
        return response($data_result, 200)->header('Content-Type', 'application/json');
    }
    /*****************Get dosh ****************************/
    public function getResidentStatusList() 
    {
        $data_result['status'] = 0;
        $data_result['message'] = "Data not found";
        $result = Common::getResidentStatusList();
        
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                    $data[$key]['id'] = $value->id;
                    $data[$key]['name'] = $value->name;
                    $data[$key]['status'] = $value->status;
                }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Resident Status list.";
            $data_result['data'] = $data;
        }

        return response($data_result, 200)->header('Content-Type', 'application/json');
    }
    /*************************Location Api**********************************************/
    //Storing Location Information
    public function addUserLocation(Request $request)
    {
        $res['status'] = 0;

        //Variables containing location information data
        $data['user_id'] = $request->input('user_id');
        $data['country_living_id'] = $request->input('country_living_id');
        $data['citizenship'] = $request->input('citizenship');
        $data['resident_status'] = $request->input('resident_status');
        $data['residing_state'] = $request->input('residing_state');
        $data['residing_city'] = $request->input('residing_city');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");
        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserLocationDetails = Users::CheckUserLocationDetails($data['user_id']);
        if(count($CheckUserLocationDetails) == 1)
        {
            $res['message'] = "Already inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['country_living_id'] == "") 
        {
            $res['message'] = "Please enter your country_living id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['citizenship'] == "") 
        {
            $res['message'] = "Please enter your citizenship";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($data['citizenship'] != $data['country_living_id'])
        {
            if ($data['resident_status'] == "") 
            {
                $res['message'] = "Please enter your resident_status";
                return response($res, 200)->header('Content-Type', 'application/json');
            }
        }
        if ($data['residing_state'] == "") 
        {
            $res['message'] = "Please enter your residing_state";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['residing_city'] == "") 
        {
            $res['message'] = "Please enter your residing_city";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result = Users::addUserLocationDetails($data);
        if($result)
        {
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    //Show Countries list api
    public function getCountryList()
    {
        $data_result['status'] = 0;
        $result = Common::getCountryList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Country list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json'); die;
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json'); die;
        }
    }

    //get list of states
    public function getStateList()
    {
       $data_result['status'] = 0;
       $result = Common::getStateList();
       if(count($result) > 0)
       {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['country_id'] = $value->country_id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "States list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }
    //get list of cities
    public function getCityList()
    {
       $data_result['status'] = 0;
       $result = Common::getCityList();
        
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['country_id'] = $value->country_id;
                $data[$key]['state_id'] = $value->state_id;                    
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Cities list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }
    
    /************************* Professional Information Apis **********************************/
    //Storing professional info  
    public function addProfessionalInformation(Request $request)
    {
        $res['status'] = 0;

        //Variables containing location information data
        $data['user_id'] = $request->input('user_id');
        $data['highest_education_id'] = $request->input('highest_education_id');
        $data['institution'] = $request->input('institution');
        $data['education_detail'] = $request->input('education_detail');
        $data['employeed_in'] = $request->input('employeed_in');
        $data['occupation_id'] = $request->input('occupation_id');
        $data['occupation_detail'] = $request->input('occupation_detail');
        $data['currency_id'] = $request->input('currency_id');
        $data['annual_income'] = $request->input('annual_income');
        
        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your user id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);  //checking if user exists or not
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserProfessionalDetails = Users::CheckUserProfessionalDetails($data['user_id']);  
        if(count($CheckUserProfessionalDetails) == 1)
        {          //checking if users details already there
            $res['message'] = "Already inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['highest_education_id'] == "") 
        {
            $res['message'] = "Please enter your highest_education_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['institution'] == "") 
        {
            $res['message'] = "Please enter your institution from where you took your education";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['education_detail'] == "") 
        {
            $res['message'] = "Please enter your education_detail";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['employeed_in'] == "") 
        {
            $res['message'] = "Please enter your employeed_in";
            return response($res, 200)->header('Content-Type', 'application/json');
        }  
        if ($data['occupation_id'] == "") 
        {
            $res['message'] = "Please enter your occupation_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['occupation_detail'] == "") 
        {
            $res['message'] = "Please enter your occupation_detail";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['currency_id'] == "") 
        {
            $res['message'] = "Please enter your currency_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['annual_income'] == "") 
        {
            $res['message'] = "Please enter your annual_income";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addProfessionalInformation($data);

        if($result)
        {
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Get List of Highest level of Education*/
    public function getHighestEducationList()
    {
        $data_result['status'] = 0;
        $result = Common::getHighestEducationList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['education_id'] = $value->education_id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Highest level of Education list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Get List of Annual Income*/
    public function getAnnualIncomeList()
    {
        $data_result['status'] = 0;
        $result = Common::getAnnualIncomeList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) 
            {
                $data[$key]['id'] = $value->id;
                $data[$key]['income'] = $value->income;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Highest level of Education list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Get List of Professions*/
    public function getOccupationList()
    {
        $data_result['status'] = 0;
        $result = Common::getOccupationList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Occupations list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Get List of Currencies*/
    public function getCurrencyList()
    {
        $data_result['status'] = 0;
        $result = Common::getCurrencyList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Currency list.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }else {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /************************* Family Details Apis **********************************/
    //Storing professional info  
    public function addFamilyDetails(Request $request)
    {
        $res['status'] = 0;

        //Variables containing location information data
        $data['user_id'] = $request->input('user_id');
        $data['family_value'] = $request->input('family_value');
        $data['family_type'] = $request->input('family_type');
        $data['family_status'] = $request->input('family_status');
        $data['father_status'] = $request->input('father_status');
        $data['mother_status'] = $request->input('mother_status');
        $data['no_of_brothers'] = $request->input('no_of_brothers');
        $data['married_brothers'] = $request->input('married_brothers');
        $data['no_of_sisters'] = $request->input('no_of_sisters');
        $data['married_sisters'] = $request->input('married_sisters');
        $data['family_location'] = $request->input('family_location');
        $data['parents_phone_no'] = $request->input('parents_phone_no');
        $data['country_id'] = $request->input('country_id');
        $data['state_id'] = $request->input('state_id');
        $data['city_id'] = $request->input('city_id');
        $data['family_origin'] = $request->input('family_origin');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");

        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserLocationDetails = Users::CheckUserLocationDetails($data['user_id']);  
        if(count($CheckUserLocationDetails) == 0){  //checking if user filled the user location details
            $res['message'] = "Please fill User Location First";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckFamilyDetails = Users::CheckFamilyDetails($data['user_id']);  
        if(count($CheckFamilyDetails) == 1)
        {          //checking if users details already there
            $res['message'] = "User Family Details Already Exists";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_value'] == "") {
            $res['message'] = "Please enter your family_value";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_type'] == "") {
            $res['message'] = "Please enter your family_type";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_status'] == "") {
            $res['message'] = "Please enter your family_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_location'] == "") {
            $res['message'] = "Please enter your family_location";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['parents_phone_no'] == "") {
            $res['message'] = "Please enter your parents_phone_no";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['country_id'] == "") {
            $res['message'] = "Please enter your familys' country_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['state_id'] == "") {
            $res['message'] = "Please enter your state_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['city_id'] == "") {
            $res['message'] = "Please enter your city_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addFamilyDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /************************* Life Style Apis **********************************/   
    public function addLifeStyleDetails(Request $request)
    {
        $res['status'] = 0;

        //Variables containing location information data
        $data['user_id'] = $request->input('user_id');
        $data['hobbies'] = $request->input('hobbies');
        $data['favourite_music'] = $request->input('favourite_music');
        $data['sports_activities'] = $request->input('sports_activities');
        $data['spoken_languages'] = $request->input('spoken_languages');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");

        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0) {                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $CheckLifeStyleDetails = Users::CheckLifeStyleDetails($data['user_id']);  
        if(count($CheckLifeStyleDetails) == 1) {          //checking if users details already there
            $res['message'] = "User data already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        if ($data['hobbies'] == "") {
            $res['message'] = "Please enter your Hobbies";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['favourite_music'] == "") {
            $res['message'] = "Please enter your favourite_music type";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['sports_activities'] == "") {
            $res['message'] = "Please enter your sports_activities";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['spoken_languages'] == "") {
            $res['message'] = "Please enter your spoken_languages";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
       
        $result = Users::addLifeStyleDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    //Get the list of hobbies 
    public function getHobbiesList()
    {
        $data_result['status'] = 0;
        $result = Common::getHobbiesList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "List of all Hobbies.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    //Get the list of Music Types
    public function getFavouriteMusicList()
    {
        $data_result['status'] = 0;
        $result = Common::getFavouriteMusicList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "List of all FavouriteMusic.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    //Get the list of Sports Activities 
    public function getSportsActivitiesList()
    {
        $data_result['status'] = 0;
        $result = Common::getSportsActivitiesList();
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['name'] = $value->name;
                $data[$key]['status'] = $value->status;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "List of all Sports Activities.";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }
/************************* About Family Api **********************************/   
    public function addAboutFamilyDetails(Request $request)
    {
        $res['status'] = 0;

        //Variables containing about_family information data
        $data['user_id'] = $request->input('user_id');
        $data['content'] = $request->input('content');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $CheckAboutFamilyDetails = Users::CheckAboutFamilyDetails($data['user_id']);  
        if(count($CheckAboutFamilyDetails) == 1){          //checking if users details already there
            $res['message'] = "User data already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        if ($data['content'] == "") {
            $res['message'] = "Please enter your Content";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addAboutFamilyDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }  
    
    /********************************** Partner Prefrences ****************************************/
    public function addBasicPartnerPreferenceDetails(Request $request){
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['preferred_age_from'] = $request->input('preferred_age_from');
        $data['preferred_age_to'] = $request->input('preferred_age_to');
        $data['maritial_status'] = $request->input('maritial_status');
        $data['preferred_height_from'] = $request->input('preferred_height_from');
        $data['preferred_height_to'] = $request->input('preferred_height_to');
        $data['physical_status'] = $request->input('physical_status');
        $data['eating_habits'] = $request->input('eating_habits');
        $data['drinking_habits'] = $request->input('drinking_habits');
        $data['smoking_habits'] = $request->input('smoking_habits');
        $data['religion'] = $request->input('religion');
        $data['mother_tounge_id'] = $request->input('mother_tounge_id');
        $data['gothra'] = $request->input('gothra');
        $data['castes'] = $request->input('castes');
        $data['manglik'] = $request->input('manglik');
        $data['stars'] = $request->input('stars');
        $data['created_at'] = date("Y-m-d");
        $data['updated_at'] = date("Y-m-d");
        $data['user_id'] = $request->input('user_id');

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckBasicPartnerPreferenceDetails = Users::CheckBasicPartnerPreferenceDetails($data['user_id']);
        if(count($CheckUserdetail) == 0){            //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckBasicPartnerPreferenceDetails) == 1){ //checking if users details already there
            $res['message'] = "Basic Partner Preference Details Already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_age_from'] == "") {
            $res['message'] = "Please enter the preferred_age_from";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_age_to'] == "") {
            $res['message'] = "Please enter the preferred_age_to";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_height_from'] == "") {
            $res['message'] = "Please enter the preferred_height_from";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_height_to'] == "") {
            $res['message'] = "Please enter the preferred_height_to";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['maritial_status'] == "") {
            $res['message'] = "Please enter your partners preffered maritial_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['physical_status'] == "") {
            $res['message'] = "Please enter your partners preffered physical_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['eating_habits'] == "") {
            $res['message'] = "Please enter your partners preffered eating_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['drinking_habits'] == "") {
            $res['message'] = "Please enter your partners preffered drinking_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['smoking_habits'] == "") {
            $res['message'] = "Please enter your partners preffered smoking_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['religion'] == "") {
            $res['message'] = "Please enter your partners preffered religion";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['mother_tounge_id'] == "") {
            $res['message'] = "Please enter your partners preffered mother_tounge_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['castes'] == "") {
            $res['message'] = "Please enter your partners preffered castes";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['stars'] == "") {
            $res['message'] = "Please enter your partners preffered stars";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['gothra'] == "") {
            $res['message'] = "Please enter your partners preffered gothra";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['manglik'] == "") {
            $res['message'] = "Please enter your partner preferrences as manglik or not";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addBasicPartnerPreferenceDetails($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Professional Preferences*/   
    public function addProfessionalPreferences(Request $request){
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['preferred_education']=$request->input('preferred_education');
        $data['preferred_occupations']=$request->input('preferred_occupations');
        $data['annual_income']=$request->input('annual_income');
        $data['user_id']=$request->input('user_id');
        $data['created_at']=date("Y-m-d");
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckProfessionalPreferences = Users::CheckProfessionalPreferences($data['user_id']);  
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckProfessionalPreferences) == 1){ //checking if users details already there
            $res['message'] = "Professional Preferences Already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_education'] == "") {
            $res['message'] = "Please enter your partners preferred_education";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_occupations'] == "") {
            $res['message'] = "Please enter your partners preferred_occupations";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['annual_income'] == "") {
            $res['message'] = "Please enter your partners annual_income preferrences";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addProfessionalPreferences($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Partner Location Preferences*/   
    public function addLocationPreferences(Request $request)
    {
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['countries']=$request->input('countries');
        $data['states']=$request->input('states');
        $data['cities']=$request->input('cities');
        $data['citizen']=$request->input('citizen');
        $data['user_id']=$request->input('user_id');
        $data['created_at']=date("Y-m-d");
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckLocationPreferences = Users::CheckLocationPreferences($data['user_id']);  
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckLocationPreferences) == 1){ //checking if users details already there
            $res['message'] = "Location Preferences Already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['countries'] == "") {
            $res['message'] = "Please enter your partners preferred countries";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['states'] == "") {
            $res['message'] = "Please enter your partners preferred states";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['cities'] == "") {
            $res['message'] = "Please enter your partners preferred cities";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['citizen'] == "") {
            $res['message'] = "Please enter your partners preferred citizen-ship";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::addLocationPreferences($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /*Preferences in detail*/ 
    public function addPreferencesInDetail(Request $request)
    {
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['user_id']=$request->input('user_id');
        $data['content']=$request->input('content');
        $data['created_at']=date("Y-m-d");
        $data['updated_at']=date("Y-m-d");

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckPreferencesInDetail = Users::CheckPreferencesInDetail($data['user_id']);  
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckPreferencesInDetail) == 1){ //checking if users details already there
            $res['message'] = "Preferences in Details Already added";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['content'] == "") {
            $res['message'] = "Please elaborate in detail about your preferrences";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result = Users::addPreferencesInDetail($data);
        if($result)
        {
            $res['status'] = 1;
            $res['message'] = "User details added successfully";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    ####################################### Get User Data ##############################################
    ####################################################################################################    
    /***
    **@Get basic Details of a particular user
    */ 
    public function getBasicDetailsByUserId(Request $request)
    {   
        $data_result['status'] = 0;

        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckBasicDdetails = Users::CheckBasicDdetails($data['user_id']);
        if(count($CheckUserdetail) == 0){
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckBasicDdetails) == 0){
            $res['message'] = "Basic Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $result=Users::getBasicDetailsByUserId($data);
        if(count($result) > 0)
        {
            $data['id'] = $result->id;
            $data['profile_for'] = $result->profile_for;
            $data['gender'] = $result->gender;
            $data['dob'] = $result->dob;
            $data['age'] = $result->age;
            $data['height'] = $result->height;
            $data['weight'] = $result->weight;
            $data['maritial_status'] = $result->maritial_status;
            $data['body_type'] = $result->body_type;
            $data['complextion'] = $result->complextion;
            $data['physical_status'] = $result->physical_status;
            $data['mother_tounge_id'] = $result->mother_tounge_id;
            $data['know_to_read'] = $result->know_to_read;
            $data['eating_habits'] = $result->eating_habits;
            $data['drinking_habits'] = $result->drinking_habits;
            $data['smoking_habits'] = $result->smoking_habits;

            $data_result['status'] = 1;
            $data_result['message_list'] = "Basic Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get The Personal Details
    */
    public function getPersonalDetailsByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing about_family information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckPersonalDetails = Users::CheckPersonalDetails($data['user_id']);  
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckPersonalDetails) == 0){          //checking if users details already there
            $res['message'] = "Personal Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result = Users::getPersonalDetailsByUserId($data);
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data['id'] = $result->id;
                $data['user_id'] = $result->user_id;
                $data['content'] = $result->content;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Personal Details of the user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get religion Details
    */ 
    public function getReligionDetailsByUserId(Request $request)
    {   
        $data_result['status'] = 0;
        $data['user_id'] = $request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckReligionDetails = Users::CheckReligionDetails($data['user_id']);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckReligionDetails) == 0)
        {
            $res['message'] = "Religion Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result = Users::getReligionDetailsByUserId($data);
        if(count($result) > 0)
        {
            $data['id'] = $result->id;
            $data['religion_id']=$result->religion_id;
            $data['caste_id']=$result->caste_id;        
            $data['sub_caste']=$result->sub_caste_id;   
            $data['marry_in_same_or_not']=$result->marry_in_same_or_not;     
            $data['gothra']=$result->gothra_id;       
            $data['star']=$result->star;
            $data['rassi']=$result->rassi_moon_sign;        
            $data['zodiac']=$result->zodiac_star_sign;       
            $data['have_dosh']=$result->have_dosh;
            $data['dosh']=$result->dosh;
            
            $data_result['status'] = 1;
            $data_result['message_list'] = "Basic Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@get The user Location by entering the user id
    */
    public function getUserLocationByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
       
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0)
        {
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserLocationDetails = Users::CheckUserLocationDetails($data['user_id']);
        if(count($CheckUserLocationDetails) == 0)
        {
            $res['message'] = "Location details not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::getUserLocationByUserId($data);
        if(count($result) > 0)
        {
            $data['id'] = $result->id;
            $data['country_living_id']=$result->country_living_id;
            $data['citizenship']=$result->citizenship;
            $data['resident_status']=$result->resident_status;
            $data['residing_state']=$result->residing_state;
            $data['residing_city']=$result->residing_city;
            
            $data_result['status'] = 1;
            $data_result['message_list'] = "Location Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@get The user Professional by entering the user id
    */
    public function getProfessionalDetailsByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserProfessionalDetails = Users::CheckUserProfessionalDetails($data['user_id']);  
        if(count($CheckUserProfessionalDetails) == 0){
            $res['message'] = "Professional details not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result=Users::getProfessionalDetailsByUserId($data);
        if(count($result) > 0)
        {
            $data['id'] = $result->id;
            $data['highest_education_id']=$result->highest_education_id;
            $data['institution']=$result->institution;
            $data['education_detail']=$result->education_detail;
            $data['employeed_in']=$result->employeed_in;
            $data['occupation_id']=$result->occupation_id;
            $data['occupation_detail']=$result->occupation_detail;
            $data['currency_id']=$result->currency_id;
            $data['annual_income']=$result->annual_income;
            $data_result['status'] = 1;
            $data_result['message_list'] = "Professional Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get family details Details
    */ 
    public function getFamilyDetailsByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckFamilyDetails = Users::CheckFamilyDetails($data['user_id']);  
        if(count($CheckFamilyDetails) == 0){  //checking if user filled the user location details
            $res['message'] = "Family details Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    

        $result=Users::getFamilyDetailsByUserId($data);
        if(count($result) > 0)
        {
            foreach ($result as $key => $value) {
                $data['id'] = $result->id;
                $data['user_id'] = $result->user_id;
                $data['family_value']=$result->family_value;
                $data['family_type']=$result->family_type;
                $data['family_status']=$result->family_status;
                $data['father_status']=$result->father_status;
                $data['mother_status']=$result->mother_status;
                $data['no_of_brothers']=$result->no_of_brothers;
                $data['married_brothers']=$result->married_brothers;
                $data['no_of_sisters']=$result->no_of_sisters;
                $data['married_sisters']=$result->married_sisters;
                $data['family_location']=$result->family_location;
                $data['parents_phone_no']=$result->parents_phone_no;
                $data['country_id']=$result->country_id;
                $data['state_id']=$result->state_id;
                $data['city_id']=$result->city_id;
                $data['family_origin']=$result->family_origin;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Family Background Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }  
    
    /***
    **@Get About Family Details
    */ 
    public function getAboutFamilyDetailsByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id'] = $request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckAboutFamilyDetails = Users::CheckAboutFamilyDetails($data['user_id']);  
        if(count($CheckAboutFamilyDetails) == 0){  //checking if user filled the user location details
            $res['message'] = "About Family details Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        $result=Users::getAboutFamilyDetailsByUserId($data);
        if(count($result) > 0)
        {    
            $data['id'] = $result->id;
            $data['user_id'] = $result->user_id;
            $data['content']=$result->content;
        
            $data_result['status'] = 1;
            $data_result['message_list'] = "Professional Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get life Styles Details
    */ 
    public function getLifeStyleDetailsByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0)
        {                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckLifeStyleDetails = Users::CheckLifeStyleDetails($data['user_id']);  
        if(count($CheckLifeStyleDetails) == 0){  //checking if user filled the user location details
            $res['message'] = "Life Style details Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        $result=Users::getLifeStyleDetailsByUserId($data);
        if(count($result) > 0)
        {  
            $data['id'] = $result->id;
            $data['user_id'] = $result->user_id;
            $data['hobbies']=$result->hobbies;
            $data['favourite_music']=$result->favourite_music;
            $data['sports_activities']=$result->sports_activities;
            $data['spoken_languages']=$result->spoken_languages;
           
            $data_result['status'] = 1;
            $data_result['message_list'] = "Professional Details of a user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get basic partner preferences Details
    */ 
    public function getBasicPartnerPreferenceDetailsByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckBasicPartnerPreferenceDetails=Users::CheckBasicPartnerPreferenceDetails($data['user_id']);  
        if(count($CheckBasicPartnerPreferenceDetails) == 0){  //checking if user filled the user basic preferences
            $res['message'] = "Basic Partner Preferences details Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result=Users::getBasicPartnerPreferenceDetailsByUserId($data);
        if(count($result) > 0)
        {   
            $data['user_id'] = $result->user_id;
            $data['preferred_age_from']=$result->preferred_age_from;
            $data['preferred_age_to']=$result->preferred_age_to;
            $data['maritial_status']=$result->maritial_status;
            $data['preferred_height_from']=$result->preferred_height_from;
            $data['preferred_height_to']=$result->preferred_height_to;
            $data['physical_status']=$result->physical_status;
            $data['eating_habits']=$result->eating_habits;
            $data['drinking_habits']=$result->drinking_habits;
            $data['smoking_habits']=$result->smoking_habits;
            $data['religion']=$result->religion;
            $data['mother_tounge_id']=$result->mother_tounge_id;
            $data['gothra']=$result->gothra;
            $data['castes']=$result->castes;
            $data['manglik']=$result->manglik;
            $data['stars']=$result->stars;
           
            $data_result['status'] = 1;
            $data_result['message_list'] = "Basic Partner Preferences of a User";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Professional Preferences Details
    */ 
    public function getProfessionalPreferencesByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckProfessionalPreferences=Users::CheckProfessionalPreferences($data['user_id']);  
        if(count($CheckProfessionalPreferences) == 0){  //checking if user filled the user basic preferences
            $res['message'] = "Professional Preferences Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result=Users::getProfessionalPreferencesByUserId($data);
        if(count($result) > 0)
        {   
            $data['user_id'] = $result->user_id;
            $data['preferred_education']=$result->preferred_education;
            $data['preferred_occupations']=$result->preferred_occupations;
            $data['annual_income']=$result->annual_income;
            
            $data_result['status'] = 1;
            $data_result['message_list'] = "Professional Preferences of the User";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Location Preferences Details of the particular user
    */ 
    public function getLocationPreferencesByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckLocationPreferences=Users::CheckLocationPreferences($data['user_id']);  
        if(count($CheckLocationPreferences) == 0){  //checking if user filled the user basic preferences
            $res['message'] = "Location Preferences Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $result=Users::getLocationPreferencesByUserId($data);
        if(count($result) > 0)
        {
            $data['id'] = $result->id;
            $data['countries']=$result->countries;
            $data['states']=$result->states;
            $data['cities']=$result->cities;
            $data['citizen']=$result->citizen;
            $data_result['status'] = 1;
            $data_result['message_list'] = "Location Preferences of the User";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Preferences In Details of the particular user
    */ 
    public function getPreferencesInDetailByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckPreferencesInDetail=Users::CheckPreferencesInDetail($data['user_id']);  
        if(count($CheckPreferencesInDetail) == 0){  //checking if user filled the user basic preferences
            $res['message'] = "Preferences In Details Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        $result=Users::getPreferencesInDetailByUserId($data);
        if(count($result) > 0)
        {
            $data['id'] = $result->id;
            $data['content']=$result->content;
            
            $data_result['status'] = 1;
            $data_result['message_list'] = "Preferences In Details of the User";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Images of Users
    */ 
    public function getUserImagesByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUploadImages = Users::CheckUploadImages($data['user_id']);  
        if(count($CheckUploadImages) == 0){  //checking if user provided the images
            $res['message'] = "Images Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        $result=Users::getUserImagesByUserId($data);
        if(count($result) > 0)
        {
            foreach ($result as $value) {
                $data['id'] = $value->id;
                $data['user_id'] = $value->user_id;
                $data['image']=$value->image;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Images of the user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Images of Videos
    */ 
    public function getUserVideosByUserId(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUploadVideo = Users::CheckUploadVideo($data['user_id']);  
        if(count($CheckUploadVideo) == 0){  //checking if user provided the images
            $res['message'] = "Images Not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        $result=Users::getUserVideosByUserId($data);
        if(count($result) > 0)
        {
            foreach ($result as $value) {
                $data['id'] = $value->id;
                $data['user_id'] = $value->user_id;
                $data['video']=$value->video;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Images of the user";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Gothra List
    */ 
    public function getGothraList(Request $request)
    {
        $res['status'] = 0;
        $result = Common::getGothraList();
        if(count($result) > 0)
        {
            foreach ($result as $key=>$value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['status'] = $value->status;
                $data[$key]['name']=$value->name;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Gothra List";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Get Raasi List
    */ 
    public function getRaasiList(Request $request)
    {
        $res['status'] = 0;
        $result = Common::getRaasiList();
        if(count($result) > 0)
        {
            foreach ($result as $key=>$value) {
                $data[$key]['id'] = $value->id;
                $data[$key]['status'] = $value->status;
                $data[$key]['name']=$value->name;
            }
            $data_result['status'] = 1;
            $data_result['message_list'] = "Raasi List";
            $data_result['data'] = $data;
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $data_result['status'] = 0;
            $data_result['message'] ="Data not found";
            return response($data_result, 200)->header('Content-Type', 'application/json');
        }
    }

    ################################## Edit User Data #########################################
    /***
    **@Edit Basic_details_api
    */
    public function editBasicDetails(Request $request)
    {
        $res['status'] = 0;
        //Variables containing user data
        $data['user_id']=$request->input('user_id');
        $data['profile_for']=$request->input('profile_for');
        $data['gender']=$request->input('gender');
        $data['dob']=$request->input('dob');
        $data['age']=$request->input('age');
        $data['height']=$request->input('height');
        $data['weight']=$request->input('weight');
        $data['maritial_status']=$request->input('maritial_status');
        $data['body_type']=$request->input('body_type');
        $data['complextion']=$request->input('complextion');
        $data['physical_status']=$request->input('physical_status');
        $data['mother_tounge_id']=$request->input('mother_tounge_id');
        $data['know_to_read']=$request->input('know_to_read');
        $data['eating_habits']=$request->input('eating_habits');
        $data['drinking_habits']=$request->input('drinking_habits');
        $data['smoking_habits']=$request->input('smoking_habits');
        $data['updated_at']=date("Y-m-d");
        //$upload_image=$request->input('upload_image');
        
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckBasicDdetails = Users::CheckBasicDdetails($data['user_id']);
        if(count($CheckBasicDdetails) == 0){        //checking if users details there or not
            $res['message'] = "Basic Details Not Inserted"; 
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['profile_for'] == "") {
            $res['message'] = "Please enter for whome you are making this profle";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['gender'] == "") {
            $res['message'] = "Please enter your gender";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['dob'] == "") {
            $res['message'] = "Please enter your dob";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['age'] == "") {
            $res['message'] = "Please enter your age";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['height'] == "") {
            $res['message'] = "Please enter your height";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['weight'] == "") {
            $res['message'] = "Please enter your weight";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['maritial_status'] == "") {
            $res['message'] = "Please enter your maritial_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['body_type'] == "") {
            $res['message'] = "Please enter your body_type";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['complextion'] == "") {
            $res['message'] = "Please enter your complextion";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['physical_status'] == "") {
            $res['message'] = "Please enter your physical_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['mother_tounge_id'] == "") {
            $res['message'] = "Please enter your mother_tounge_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['know_to_read'] == "") {
            $res['message'] = "Please enter your know_to_read";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['eating_habits'] == "") {
            $res['message'] = "Please enter your eating_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['drinking_habits'] == "") {
            $res['message'] = "Please enter your drinking_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['smoking_habits'] == "") {
            $res['message'] = "Please enter your smoking_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editBasicDetails($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'We Welcome you to our site. Thank you for creating the account.';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something went wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit Personal Details
    */
    public function editPersonalDetails(Request $request)
    {
        $res['status'] = 0;
        //Variables containing about_family information data
        $data['user_id']=$request->input('user_id');
        $data['content']=$request->input('content');
        $data['updated_at']=date("Y-m-d");
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckPersonalDetails = Users::CheckPersonalDetails($data['user_id']);  
        if(count($CheckPersonalDetails) == 0){          //checking if users details already there
            $res['message'] = "Personal Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        if ($data['content'] == "") {
            $res['message'] = "Please enter Details of the person";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editPersonalDetails($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
            
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All The Data Already There";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit the Religion Information
    */
    public function editReligionInformation(Request $request)
    {
        $res['status'] = 0;
        //Variables containing religion information data
        $data['user_id']=$request->input('user_id');
        $data['religion_id']=$religion_id= $request->input('religion');
        $data['caste_id']=$caste_id = $request->input('caste');
        $data['sub_caste_id']=$sub_caste_id = $request->input('sub_caste');
        $data['gothra_id']=$gothra_id = $request->input('gothra');
        $data['star']=$star = $request->input('star');
        $data['rassi_moon_sign']=$raasi = $request->input('raasi');
        $data['zodiac_star_sign']=$zodiac = $request->input('zodiac');
        $data['have_dosh']=$have_dosh = $request->input('have_dosh');
        $data['dosh']=$dosh = $request->input('dosh');
        $data['marry_in_same_or_not']=$marry_in_same_or_not=$request->input('marry_in_same_or_not');
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckReligionDetails = Users::CheckReligionDetails($data['user_id']);
        if(count($CheckReligionDetails) == 0){      //checking if users details there or not
            $res['message'] = "Religion Information Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['religion_id'] == "") {
            $res['message'] = "Please enter your religion";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['caste_id'] == "") {
            $res['message'] = "Please enter your caste";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['sub_caste_id'] == "") {
            $res['message'] = "Please enter your sub_caste";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($marry_in_same_or_not=='')
        {
            $res['message'] = "Please enter marry_in_same_or_not";
            return response($res, 200)->header('Content-Type', 'application/json');
        }    
        if($gothra_id==''){
           $res['message'] = "Please enter gothra";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($star==''){
            $res['message'] = "Please enter Star";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($raasi==''){
            $res['message'] = "Please enter raasi_moon_sign";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($zodiac=='') {
            $res['message'] = "Please enter zodiac_star_sign";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($have_dosh=='') {
            $res['message'] = "Please enter if you have_dosh or not";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($have_dosh==1) {
            if ($dosh=='') 
            {
                $res['message'] = "Please enter dosh";
                return response($res, 200)->header('Content-Type', 'application/json');
            }    
        }
        $result = Users::editReligionDetails($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
           
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Something Went Wrong";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }
    /***
    **@Edit User Location Information
    */
    public function editUserLocation(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        $data['country_living_id']=$request->input('country_living_id');
        $data['citizenship']=$request->input('citizenship');
        $data['resident_status']=$request->input('resident_status');
        $data['residing_state']=$request->input('residing_state');
        $data['residing_city']=$request->input('residing_city');
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserLocationDetails = Users::CheckUserLocationDetails($data['user_id']);
        if(count($CheckUserLocationDetails) == 0){          //checking if users details there or not
            $res['message'] = "User Location Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['country_living_id'] == "") {
            $res['message'] = "Please enter your country_living_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['citizenship'] == "") {
            $res['message'] = "Please enter your citizenship";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if($data['citizenship']!=$data['country_living_id'])
        {
            if ($data['resident_status'] == "") {
                $res['message'] = "Please enter your resident_status";
                return response($res, 200)->header('Content-Type', 'application/json');
            }
        }
        if ($data['residing_state'] == "") {
            $res['message'] = "Please enter your residing_state";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['residing_city'] == "") {
            $res['message'] = "Please enter your residing_city";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editUserLocation($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
           
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Sorry Every Thing is Already There";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit professional info  
    */
    public function editProfessionalInformation(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        $data['highest_education_id']=$request->input('highest_education_id');
        $data['institution']=$request->input('institution');
        $data['education_detail']=$request->input('education_detail');
        $data['employeed_in']=$request->input('employeed_in');
        $data['occupation_id']=$request->input('occupation_id');
        $data['occupation_detail']=$request->input('occupation_detail');
        $data['currency_id']=$request->input('currency_id');
        $data['annual_income']=$request->input('annual_income');
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") 
        {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserProfessionalDetails = Users::CheckUserProfessionalDetails($data['user_id']);  
        if(count($CheckUserProfessionalDetails) == 0){          //checking if users details there or not
            $res['message'] = "Professional Information not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['highest_education_id'] == "") {
            $res['message'] = "Please enter your highest_education_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['institution'] == "") {
            $res['message'] = "Please enter your institution from where you took your education";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['education_detail'] == "") {
            $res['message'] = "Please enter your education_detail";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['employeed_in'] == "") {
            $res['message'] = "Please enter your employeed_in";
            return response($res, 200)->header('Content-Type', 'application/json');
        }  
        if ($data['occupation_id'] == "") {
            $res['message'] = "Please enter your occupation_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['occupation_detail'] == "") {
            $res['message'] = "Please enter your occupation_detail";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['currency_id'] == "") {
            $res['message'] = "Please enter your currency_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['annual_income'] == "") {
            $res['message'] = "Please enter your annual_income";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editProfessionalInformation($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "Sorry Every Thing is Already There";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit family details
    */  
    public function editFamilyDetails(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        $data['family_value']=$request->input('family_value');
        $data['family_type']=$request->input('family_type');
        $data['family_status']=$request->input('family_status');
        $data['father_status']=$request->input('father_status');
        $data['mother_status']=$request->input('mother_status');
        $data['no_of_brothers']=$request->input('no_of_brothers');
        $data['married_brothers']=$request->input('married_brothers');
        $data['no_of_sisters']=$request->input('no_of_sisters');
        $data['married_sisters']=$request->input('married_sisters');
        $data['family_location']=$request->input('family_location');
        $data['parents_phone_no']=$request->input('parents_phone_no');
        $data['country_id']=$request->input('country_id');
        $data['state_id']=$request->input('state_id');
        $data['city_id']=$request->input('city_id');
        $data['family_origin']=$request->input('family_origin');
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckFamilyDetails = Users::CheckFamilyDetails($data['user_id']);  
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
       if(count($CheckFamilyDetails) == 0){          //checking if users details there or not
            $res['message'] = "Family Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_value'] == "") {
            $res['message'] = "Please enter your family_value";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_type'] == "") {
            $res['message'] = "Please enter your family_type";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_status'] == "") {
            $res['message'] = "Please enter your family_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['family_location'] == "") {
            $res['message'] = "Please enter your family_location";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['parents_phone_no'] == "") {
            $res['message'] = "Please enter your parents_phone_no";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if (strlen($request->input('parents_phone_no')) != 10) {
            $res['message'] = "Please enter valid parents_phone_no";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if (preg_match("/[^0-9,-]/", $request->input('parents_phone_no'))) {
            $res['message'] = "Please enter valid parents_phone_no";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['country_id'] == "") {
            $res['message'] = "Please enter your familys' country_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['state_id'] == "") {
            $res['message'] = "Please enter your state_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['city_id'] == "") {
            $res['message'] = "Please enter your city_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editFamilyDetails($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All the data is Already there";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit Life Style Details 
    */
    public function editLifeStyleDetails(Request $request)
    {
        $res['status'] = 0;
        //Variables containing location information data
        $data['user_id']=$request->input('user_id');
        $data['hobbies']=$request->input('hobbies');
        $data['favourite_music']=$request->input('favourite_music');
        $data['sports_activities']=$request->input('sports_activities');
        $data['spoken_languages']=$request->input('spoken_languages');
        $data['updated_at']=date("Y-m-d");
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckLifeStyleDetails) == 0){          //checking if users details already there
        $CheckLifeStyleDetails = Users::CheckLifeStyleDetails($data['user_id']);  
            $res['message'] = "Life Style Details Not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['hobbies'] == "") {
            $res['message'] = "Please enter your Hobbies";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['favourite_music'] == "") {
            $res['message'] = "Please enter your favourite_music type";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['sports_activities'] == "") {
            $res['message'] = "Please enter your sports_activities";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['spoken_languages'] == "") {
            $res['message'] = "Please enter your spoken_languages";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
       
        $result = Users::editLifeStyleDetails($data);

        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All the data is Already there";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit About Family Details
    */
    public function editAboutFamilyDetails(Request $request)
    {
        $res['status'] = 0;
        //Variables containing about_family information data
        $data['user_id']=$request->input('user_id');
        $data['content']=$request->input('content');
        $data['updated_at']=date("Y-m-d");
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        $CheckLifeStyleDetails = Users::CheckAboutFamilyDetails($data['user_id']);  
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if(count($CheckLifeStyleDetails) == 0){          //checking if users details already there
            $res['message'] = "About Family Details not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['content'] == "") {
            $res['message'] = "Please enter your Content";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editAboutFamilyDetails($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            $response = Users::deactivateProfileOnChange($data['user_id']);
            if($response)
            {
                $res['status_message'] = "Status Updated Successfully";
            }
            else {
                $res['status_message'] = "Status Cannot be Updated";   
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All the data is Already there";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@ Edit Basic Partner Preference Details
    */
    public function editBasicPartnerPreferenceDetails(Request $request)
    {
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['preferred_age_from']=$request->input('preferred_age_from');
        $data['preferred_age_to']=$request->input('preferred_age_to');
        $data['maritial_status']=$request->input('maritial_status');
        $data['preferred_height_from']=$request->input('preferred_height_from');
        $data['preferred_height_to']=$request->input('preferred_height_to');
        $data['physical_status']=$request->input('physical_status');
        $data['eating_habits']=$request->input('eating_habits');
        $data['drinking_habits']=$request->input('drinking_habits');
        $data['smoking_habits']=$request->input('smoking_habits');
        $data['religion']=$request->input('religion');
        $data['mother_tounge_id']=$request->input('mother_tounge_id');
        $data['gothra']=$request->input('gothra');
        $data['castes']=$request->input('castes');
        $data['manglik']=$request->input('manglik');
        $data['stars']=$request->input('stars');
        $data['updated_at']=date("Y-m-d");
        $data['user_id']=$request->input('user_id');

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){            //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckBasicPartnerPreferenceDetails = Users::CheckBasicPartnerPreferenceDetails($data['user_id']);
        if(count($CheckBasicPartnerPreferenceDetails) == 0){ //checking if users details already there
            $res['message'] = "Basic Partner Preferences Details not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_age_from'] == "") {
            $res['message'] = "Please enter the preferred_age_from";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_age_to'] == "") {
            $res['message'] = "Please enter the preferred_age_to";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_height_from'] == "") {
            $res['message'] = "Please enter the preferred_height_from";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_height_to'] == "") {
            $res['message'] = "Please enter the preferred_height_to";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['maritial_status'] == "") {
            $res['message'] = "Please enter your partners preffered maritial_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['physical_status'] == "") {
            $res['message'] = "Please enter your partners preffered physical_status";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['eating_habits'] == "") {
            $res['message'] = "Please enter your partners preffered eating_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['drinking_habits'] == "") {
            $res['message'] = "Please enter your partners preffered drinking_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['smoking_habits'] == "") {
            $res['message'] = "Please enter your partners preffered smoking_habits";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['religion'] == "") {
            $res['message'] = "Please enter your partners preffered religion";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['mother_tounge_id'] == "") {
            $res['message'] = "Please enter your partners preffered mother_tounge_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['castes'] == "") {
            $res['message'] = "Please enter your partners preffered castes";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['stars'] == "") {
            $res['message'] = "Please enter your partners preffered stars";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['gothra'] == "") {
            $res['message'] = "Please enter your partners preffered gothra";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['manglik'] == "") {
            $res['message'] = "Please enter your partner preferrences as manglik or not";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editBasicPartnerPreferenceDetails($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All The Data Already There";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }
    /***
    **@Edit ProfessionalPreferences Details
    */
    public function editProfessionalPreferences(Request $request){
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['preferred_education']=$request->input('preferred_education');
        $data['preferred_occupations']=$request->input('preferred_occupations');
        $data['annual_income']=$request->input('annual_income');
        $data['user_id']=$request->input('user_id');
        $data['updated_at']=date("Y-m-d");

        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckProfessionalPreferences = Users::CheckProfessionalPreferences($data['user_id']);  
        if(count($CheckProfessionalPreferences) == 0){ //checking if users details there or not
            $res['message'] = "Professional Preferences is not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_education'] == "") {
            $res['message'] = "Please enter your partners preferred_education";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['preferred_occupations'] == "") {
            $res['message'] = "Please enter your partners preferred_occupations";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['annual_income'] == "") {
            $res['message'] = "Please enter your partners annual_income preferrences";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editProfessionalPreferences($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All The Data Already there";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    } 
    /***
    **@Edit Partner Location Preferences Details
    */
    public function editLocationPreferences(Request $request){
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['countries']=$request->input('countries');
        $data['states']=$request->input('states');
        $data['cities']=$request->input('cities');
        $data['citizen']=$request->input('citizen');
        $data['user_id']=$request->input('user_id');
        $data['updated_at']=date("Y-m-d");
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckLocationPreferences = Users::CheckLocationPreferences($data['user_id']);  
        if(count($CheckLocationPreferences) == 0){ //checking if users details there or not
            $res['message'] = "Location Preferences is not Inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }

        if ($data['countries'] == "") {
            $res['message'] = "Please enter your partners preferred countries";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['states'] == "") {
            $res['message'] = "Please enter your partners preferred states";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['cities'] == "") {
            $res['message'] = "Please enter your partners preferred cities";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['citizen'] == "") {
            $res['message'] = "Please enter your partners preferred citizen-ship";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editLocationPreferences($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All The Data Already there";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit Preferences in detail
    */ 
    public function editPreferencesInDetail(Request $request)
    {
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['user_id']=$request->input('user_id');
        $data['content']=$request->input('content');
        $data['updated_at']=date("Y-m-d");
        if ($data['user_id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['user_id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckPreferencesInDetail = Users::CheckPreferencesInDetail($data['user_id']);  
        if(count($CheckPreferencesInDetail) == 0){ //checking if users details exists or not
            $res['message'] = "Preferences in Details is not inserted";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['content'] == "") {
            $res['message'] = "Please elaborate in detail about your preferrences";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editPreferencesInDetail($data);
        $usr = Users::select('email')->where('id',$data['user_id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "All the data already there";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }

    /***
    **@Edit Mobile Number
    */ 
    public function editMobileNumber(Request $request)
    {
        $res['status'] = 0;
        //Variables containing partner preferences information data
        $data['id']=$request->input('id');
        $data['phone']=$request->input('phone');
        $data['updated_at']=date("Y-m-d");
        if ($data['id'] == "") {
            $res['message'] = "Please enter Your User_id";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $CheckUserdetail = Users::check_user_id($data['id']);
        if(count($CheckUserdetail) == 0){                   //checking if user exists or not
            $res['message'] = "User not exist";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        if ($data['phone'] == "") {
            $res['message'] = "Please Enter Your Mobile No.";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        $result = Users::editMobileNumber($data);
        $usr = Users::select('email')->where('id',$data['id'])->first();
        if($result)
        {
            try
            {
                $res['status'] = API_SUCCESS_STATUS;
                $res['message'] = 'Your Account has been Successfully updated.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'Your details were successfully updated';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Your Details Updated')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
            return response($res, 200)->header('Content-Type', 'application/json');
        }
        else 
        {
            $res['message'] = "You Entered The Same Mobile No.";
            return response($res, 200)->header('Content-Type', 'application/json');
        }
    }    

    /***************** Search user By Id, User Type, Caste, Age ****************************/
    public function search(Request $request)
    {
        $res['status'] = 0;
        $data['user_id']=$user_id=$request->input('user_id');
        $data['user_type']=$user_type=$request->input('user_type');
        $data['age']=$age=$request->input('age');
        $data['caste']=$caste=$request->input('caste');
        
        $searchedData=Users::searchByFilter($data);
        
        if(count($searchedData) > 0)
        {
            foreach ($searchedData as $key=>$result) 
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

    /* Verification process */
    public function otp_verification(Request $request)
    {
        $params = $request->input();
        $response['message'] = 'No User exist';
        $response['status'] = 0;

        $data = Users::is_exist($params['user_id']);
        if($data)
        {
            $get_user_details = Users::get_user_details($params['user_id']);
            $response['data'] = array();
            if($data->is_verify == 0)
            {
                $response['message'] = 'Wrong OTP.';
                $check_otp_verification = Users::check_otp_verification($params);
                if ($check_otp_verification)
                {
                    $response['message'] = 'Something went wrong.'; 

                    $data->is_verify = 1;
                    $data->otp = NULL;
                    if($data->save())
                    {
                        $response = array('status' => 1, 'message' => 'Verification successfully', 'data' => $get_user_details);
                    }
                }
            }
            else
            {
                $response['message'] = 'Wrong OTP.';
                $check_otp_verification = Users::check_otp_verification($params);
                if ($check_otp_verification)
                {
                    $response['message'] = 'Something went wrong.';

                    $data->otp = NULL;
                    if($data->save())
                    {
                        $response = array('status' => 1, 'message' => 'Verification successfully', 'data' => $get_user_details);
                    }
                }
            }
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Resend OTP */
    public function resend_otp(Request $request)
    {
        $response['message'] = 'No user exist..';
        $response['status'] = 0;

        $params = $request->input();
        $data = Users::is_exist($params['user_id']);
        if($data)
        {

            $get_user_details = Users::get_user_details($params['user_id']);
            $otp = rand(000000,999999);

            $data->otp = $otp;

            $response['message'] = 'Something went wrong.';

            if($data->save())
            {
                $response = array('status' => 1, 'message' => 'OTP sent successfully.', 'data' => $get_user_details);
            }
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* get user with profile details */
    public function get_profile(Request $request)
    {
        $params = $request->input();

        $user_data = Users::is_exist($params['user_id']);

        $response['message'] = 'No data found';
        $response['data'] = array();

        if($user_data)
        {
            $get_user_details = Users::get_user_details($params['user_id']);
            $response = array('status' => 1, 'message' => 'success', 'data' => $get_user_details);
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Login with Number */
    public function login_via_number(Request $request)
    {
        $params = $request->input();

        $user_data = Users::is_exist_by_phone($params['number']);

        $response['message'] = 'No data found';

        if($user_data)
        {
            $user_data->otp = rand(000000,999999);

            $response['message'] = 'Something went wrong.';
            if($user_data->save())
            {
                $response = array('status' => 1, 'message' => 'exist');
            }
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Login with facebook */
    public function login_with_facebook(Request $request)
    {
        $params = $request->input();

        $user_data = Users::is_exist_by_social_token($params['token']);

        $response['message'] = 'No user found';
        $response['status'] = API_ERROR_STATUS;

        if($user_data)
        {
            $response['message'] = 'Successfully';
            $response['status'] = API_SUCCESS_STATUS;
            $response['data'] = $user_data;
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }


    /* Member Login */
    public function member_login(Request $request)
    {
        $params = $request->input();

        if(empty($params['password']) || (empty($params['member_id']) && empty($params['email']) && empty($params['phone'])))
        {
            $response = array('status' => API_ERROR_STATUS, 'message' => 'Insufficent Data.');
        }
        else
        {
            if(!empty($params['member_id']))
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'No user exist.');
                $user_data = Users::is_member_exist($params['member_id']);
                if ($user_data)
                {
                    $response['message'] = 'Incorrect Member ID/Password.';
                    if(Hash::check($params['password'], $user_data->password))
                    {
                        $response = array('status' => API_SUCCESS_STATUS, 
                                        'message' => 'Login Successfully.',
                                        'data' => $user_data);
                    }
                }

            }
            else if(!empty($params['email']))
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'Incorrect Email/Password.');
                $user_data = Users::is_exist_by_email($params['email']);
                if ($user_data)
                {
                    $response['message'] = 'Incorrect Email/Password.';
                    if(Hash::check($params['password'], $user_data->password))
                    {
                        $response = array('status' => API_SUCCESS_STATUS, 
                                        'message' => 'Login Successfully.',
                                        'data' => $user_data);
                    }
                }
            }
            else if(!empty($params['phone']))
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'Incorrect Phone/Password.');
                $user_data = Users::is_exist_by_phone($params['phone']);
                if ($user_data)
                {
                    $response['message'] = 'Incorrect Phone/Password.';
                    if(Hash::check($params['password'], $user_data->password))
                    {
                        $response = array('status' => API_SUCCESS_STATUS, 
                                        'message' => 'Login Successfully.',
                                        'data' => $user_data);
                    }
                }
            }
            else
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'No user exist');
            }
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Forget password */
    public function forget_password(Request $request)
    {
        $base_url = url('/set-password');
        $params = $request->input();

        if(empty($params['member_id']) && empty($params['email']) && empty($params['phone']))
        {
            $response = array('status' => API_ERROR_STATUS, 'message' => 'Insufficent Data.');
        }
        else
        {
            if(!empty($params['member_id']))
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'No user exist.');
                $user_data = Users::is_member_exist($params['member_id']);
                if ($user_data)
                {
                    $user_data->pwd_reskey = base64_encode(env('APP_KEY')) . '@ind' . base64_encode($user_data->email);

                    $response['message'] = 'Something went wrong.';
                    if ($user_data->save())
                    {
                        try
                        {
                            $response['status'] = API_SUCCESS_STATUS;
                            $response['message'] = 'Your password has been sent to your email ID.';
                            $to_emails = array($user_data->email);
                            $strFromEmail = 'info@chritopher.com';
                            $strFromName = 'Chritopher';
                            $viewContent = $base_url . '/' . $user_data->pwd_reskey;

                            $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                            {
                                $message->from($strFromEmail, $strFromName)
                                        ->to($to_emails)
                                        ->subject('Forget Password')
                                        ->setBody($viewContent, 'text/html');
                            });
                        }
                        catch (Exception $e)
                        {
                            #code...
                        }
                    }
                }

            }
            else if(!empty($params['email']))
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'Incorrect Email/Password.');
                $user_data = Users::is_exist_by_email($params['email']);
                if ($user_data)
                {
                    $user_data->pwd_reskey = base64_encode(env('APP_KEY')) . '@ind' . base64_encode($user_data->email);

                    $response['message'] = 'Something went wrong.';
                    if ($user_data->save())
                    {
                        try
                        {
                            $response['status'] = API_SUCCESS_STATUS;
                            $response['message'] = 'Your password has been sent to your email ID.';
                            $to_emails = array($user_data->email);
                            $strFromEmail = 'info@chritopher.com';
                            $strFromName = 'Chritopher';
                            $viewContent = $base_url . '/' . $user_data->pwd_reskey;

                            $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                            {
                                $message->from($strFromEmail, $strFromName)
                                        ->to($to_emails)
                                        ->subject('Forget Password')
                                        ->setBody($viewContent, 'text/html');
                            });
                        }
                        catch (Exception $e)
                        {
                            #code...
                        }
                    }
                }
            }
            else if(!empty($params['phone']))
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'Incorrect Phone/Password.');
                $user_data = Users::is_exist_by_phone($params['phone']);
                if ($user_data)
                {
                    $user_data->pwd_reskey = base64_encode(env('APP_KEY')) . '@ind' . base64_encode($user_data->email);

                    $response['message'] = 'Something went wrong.';
                    if ($user_data->save())
                    {
                        try
                        {
                            $response['status'] = API_SUCCESS_STATUS;
                            $response['message'] = 'Your password has been sent to your email ID.';
                            $to_emails = array($user_data->email);
                            $strFromEmail = 'info@chritopher.com';
                            $strFromName = 'Chritopher';
                            $viewContent = $base_url . '/' . $user_data->pwd_reskey;

                            $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                            {
                                $message->from($strFromEmail, $strFromName)
                                        ->to($to_emails)
                                        ->subject('Forget Password')
                                        ->setBody($viewContent, 'text/html');
                            });
                        }
                        catch (Exception $e)
                        {
                            #code...
                        }
                    }
                }
            }
            else
            {
                $response = array('status' => API_ERROR_STATUS, 'message' => 'No user exist');
            }
        }
        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Set new password */
    public function set_new_password(Request $request)
    {
        $route_params = $request->route()->parameters();
        $exp_key = explode('@ind', $route_params['key']);
        if (sizeof($exp_key) == 2)
        {
            $response = array('status' => API_ERROR_STATUS, 'message' => 'No user exist');
            
            $usr = Users::is_user_exist(array("email" => base64_decode($exp_key[1]), "pwd_reskey" => $route_params['key']));

            if($usr && $usr->is_verify == API_SUCCESS_STATUS)
            {
                if ($request->input('pwd') != $request->input('conf_pwd'))
                {
                    $response = array('message' => 'Password and Confirm password are not matched.');
                }
                else
                {
                    $usr->pwd_reskey = NULL;
                    $usr->password = bcrypt($request->input('pwd'));

                    if($usr->save())
                    {
                        try
                        {
                            $response['status'] = API_SUCCESS_STATUS;
                            $response['message'] = 'Your password has been changed.';
                            $to_emails = array($usr->email);
                            $strFromEmail = 'info@chritopher.com';
                            $strFromName = 'Chritopher';
                            $viewContent = 'Your password has been changed';

                            $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                            {
                                $message->from($strFromEmail, $strFromName)
                                        ->to($to_emails)
                                        ->subject('Reset Password')
                                        ->setBody($viewContent, 'text/html');
                            });
                        }
                        catch (Exception $e)
                        {
                            #code...
                        }
                    }   
                }          
            }
            else
            {
                $response = array('success' => API_ERROR_STATUS, 'message' => 'Please verify your user first.');
            }
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Get Membership List */
    public function get_membership_list(Request $request)
    {
        $user_data = Users::get_membership_list($request->input('user_id'));

        $response['status'] = 0;
        $response['message'] = 'No data found';

        if(count($user_data) > 0)
        {
            $response['message'] = 'Successfully';
            $response['status'] = 1;
            $response['data'] = $user_data;
            
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Login with facebook */
    public function appLogout(Request $request)
    {
        $params = $request->input();

        $user_data = Users::find($params['user_id']);

        $response['message'] = 'No user found';
        $response['status'] = API_ERROR_STATUS;

        if($user_data)
        {
            $response['message'] = 'Logout Successfully';
            $response['status'] = API_SUCCESS_STATUS;
            $response['data'] = $user_data;
        }

        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Send mail */
    public function send_mail(Request $request)
    {
        $params = $request->input();

        $response = array('status' => API_ERROR_STATUS, 'message' => 'Insufficent Data.');

        if(!empty($params['user_id']))
        {
            $response['message'] = 'No user exist.';

            $user_data = Users::is_user_exist(array('id' => $params['user_id'], 'deleted_at' => NULL));

            if($user_data)
            {
                try
                {
                    $response['status'] = API_SUCCESS_STATUS;
                    $response['message'] = 'Send mail.';
                    $to_emails = array($user_data->email);
                    $strFromEmail = 'info@chritopher.com';
                    $strFromName = 'Chritopher';
                    $viewContent = 'Send mail.';

                    $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                    {
                        $message->from($strFromEmail, $strFromName)
                                ->to($to_emails)
                                ->subject('Reset Password')
                                ->setBody($viewContent, 'text/html');
                    });
                }
                catch (Exception $e)
                {
                    #code...
                }
            }
        }
        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /* Add Aadhar number */
    public function add_aadhar_no(Request $request)
    {

        $params = $request->input();
        $response = array('status' => API_ERROR_STATUS, 'message' => 'Insufficent Data');

        if(!empty($params['user_id']) && !empty($params['aadhar_no']))
        {
            $response['message'] = 'No user exist.';

            $user_data = Users::is_user_exist(array('id' => $params['user_id'], 'deleted_at' => NULL));

            if($user_data)
            {
                $response['message'] = 'Something went wrong';

                $user_data->aadhar_no = $params['aadhar_no'];

                if($user_data->save())
                {
                    $response['message'] = 'Aadhar No updated successfully';
                    $response['status'] = API_SUCCESS_STATUS;
                    $response['data'] = $user_data;
                }
            }
        }
        return response($response, 200)->header('Content-Type', 'application/json');
    }

    /*update_membership_user*/
    public function update_membership_user(Request $request)
    {
        $params=$request->input();
    }

    public function latestUpdateUsersList(Request $request)
    {
        $params=$request->input();
        $response = array('status' => API_ERROR_STATUS, 'message' => 'Insufficent Data pass any of id or timestamp or date to get the record');

        if(!empty($params['id']))
        {
            $response['message'] = 'No user exist.';

            $user_data = Users::is_user_exist(array('id' => $params['id'], 'deleted_at' => NULL));
            if($user_data)
            {
                $response['message'] = 'Something went wrong';
                $data['users']= Users::select('id','name','email','phone','updated_at')->where('id',$params['id'])->get();
                if ($data['users']) {
                    $response['status'] = 1;
                    $response['data']=$data;
                    $response['message'] = 'List of The Latestly Updated Users';
                }
               
            }    
        }  
        if (!empty($request->input('timestamp')) ) 
        {
            $response['message'] = 'No User Found within the given date who updated the fields.';

            $response['message'] = 'Something went wrong';
            $data['users']= Users::latest()
                                ->select('id','name','email','phone','updated_at')
                                ->where('updated_at', $request->input('timestamp'))
                                ->get();
            if (count($data['users'])>0) {
                $response['status'] = 1;
                $response['data']=$data;
                $response['message'] = 'List of The Latestly Updated Users';
            }
        }  
        
        // if (!empty($request->input('timestamp')) && !empty($request->input('year')) && !empty($request->input('day'))) 
        // {
        //     $response['message'] = 'No User Found within the given date who updated the fields.';
        //     $response['message'] = 'Something went wrong';
        //     $data['users']= Users::latest()
        //                         ->whereMonth('updated_at', $request->input('month'))
        //                         ->whereYear('updated_at', $request->input('year'))
        //                         ->whereDay('updated_at', $request->input('day'))
        //                         ->get();
        //     if (count($data['users'])>0) {
        //         $response['status'] = 1;
        //         $response['data']=$data;
        //         $response['message'] = 'List of The Latestly Updated Users';
        //     }
        // }  
        if (!empty($request->input('date')) ) 
        {
            $response['message'] = 'No User Found within the given date who updated the fields.';

            $data['users']= Users::latest()
                                ->select('id','name','email','phone','updated_at')
                                ->whereDate('updated_at', $request->input('date'))
                                ->get();
            if (count($data['users'])>0) {
                $response['status'] = 1;
                $response['data']=$data;
                $response['message'] = 'List of The Latestly Updated Users';
            }
        }
        return response($response, 200)->header('Content-Type', 'application/json');
    }
}