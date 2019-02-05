<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class Users extends Model {

    protected $fillable = ['name', 'email', 'password', 'remember_token','user_type','created_at','membership_type','updated_at','phone','status'];
   
    static function saveUser($data) {
        $user = new Users();
        return $user->save($data);
    }

################################### Validation Checks ###############################################
    /*Checks for the Users email and password to be unique*/
    public function rules($id)
    {
        return [
            'email' => 'required|string|email|unique:users,id,'.$id,
            'phone' => 'required|unique:users',
        ];
    }
    /*Deactivates the Profile On Change */
    public static function deactivateProfileOnChange($id)
    {
        $date=date("Y-m-d H:i:s");
        $data=array("status" => 0, "updated_at" => $date);
        $x= Users::where('id',$id)
            ->update($data);

    }

    /*Genrate a member id*/
    public static function generateMemberId()
    {
        $test_member_id= "G" . rand(10000000, 99999999);
        $data['member_id'] = $test_member_id;
        
        if (count(DB::table('users')->where($data)->get()) > 0)
        {
            Self::generateMemberId();
        }
        return $test_member_id; 
    }
    //Checking package Name
    public static function checkPackageName($result){
        $data['name']=$result;
        return DB::table('packages')->where($data)->get(); 
    }
    //Checking membership Name
    public static function checkMemberShipName($result){
        $data['name']=$result;
        return DB::table('membership_plans')->where($data)->get(); 
    }
    //Checking Email If already exists in the Database 
    public static function check_user_by_email($result)
    {
      	$data['email']=$result;
    	return DB::table('users')->where($data)->get(); 
    }
    //Checking Phone number If already exists in the Database 
    public static function check_user_by_phone($result){
        $data['phone']=$result;
        return DB::table('users')->where($data)->get(); 
    }
    //checking for user id
    public static function check_user_id($result)
    {
        $data['id']=$result;
        return DB::table('users')->where($data)->first(); 
        // return Self::where(array('id' => $result))->first();
        // return self::find($result);
    }
    //checking for user id in basic detail
    public static function CheckBasicDdetails($result){
        $data['user_id']=$result;
        return DB::table('basic_details')->where($data)->first(); 
    }
    //checking for user id in personal details Table
    public static function CheckPersonalDetails($result){
        $data['user_id']=$result;
        return DB::table('personal_details')->where($data)->first(); 
    }
    //checking for user id in basic detail
    public static function CheckUploadImages($result){
        $data['user_id']=$result;
        return DB::table('user_profile_images')->where($data)->first(); 
    }
    //checking for user id in basic detail
    public static function CheckUploadVideo($result){
        $data['user_id']=$result;
        return DB::table('user_videos')->where($data)->first(); 
    }
    //checking for user id in relegion table
    public static function CheckReligionDetails($result){
        $data['user_id']=$result;
        return DB::table('religion_info')->where($data)->first(); 
    }
    //checking for user id in user location table
    public static function CheckUserLocationDetails($result){
        $data['user_id']=$result;
        return DB::table('user_location')->where($data)->first(); 
    }
    //checking for user id in user prof_info table
    public static function CheckUserProfessionalDetails($result){
        $data['user_id']=$result;
        return DB::table('professtion_info')->where($data)->first(); 
    }
    //checking for user id in user Family_details table
    public static function CheckFamilyDetails($result){
        $data['user_id']=$result;
        return DB::table('family_details')->where($data)->first(); 
    }
    //checking for user id in user life Styles table
    public static function CheckLifeStyleDetails($result){
        $data['user_id']=$result;
        return DB::table('life_style')->where($data)->first(); 
    } 
    //checking for user id in about Family table
    public static function CheckAboutFamilyDetails($result){
        $data['user_id']=$result;
        return DB::table('about_family')->where($data)->first();
    } 
    //Check for user Basic Partner Preference Details
    public static function CheckBasicPartnerPreferenceDetails($result){
        $data['user_id']=$result;
        return DB::table('basic_partner_preferences')->where($data)->first(); 
    } 
    //Check for user Professional Preferences
    public static function CheckProfessionalPreferences($result){
        $data['user_id']=$result;
        return DB::table('professional_preferences')->where($data)->first(); 
    } 
    //Check for user Location Preferences
    public static function CheckLocationPreferences($result){
        $data['user_id']=$result;
        return DB::table('location_preferences')->where($data)->first(); 
    } 
    //Check for user CheckPreferencesInDetail
    public static function CheckPreferencesInDetail($result){
        $data['user_id']=$result;
        return DB::table('detail_preferences')->where($data)->first(); 
    } 
###########################Storing The data #############################################

    //Storing the valid user to the database
    public static function registerUser(array $data){
    	$user = new User();
    	$user->user_type = $data['user_type'];
		$user->email = $data['email'];
		$user->name = $data['name']; 
		$user->password = bcrypt($data['password']); 
        $user->phone = $data['phone'];
        $user->member_id = Users::generateMemberId();
    	$user->save();
        try
            {
                $response['status'] = API_SUCCESS_STATUS;
                $response['message'] = 'Your Account has been Successfully created.';
                $to_emails = array($usr->email);
                $strFromEmail = 'info@chritopher.com';
                $strFromName = 'Chritopher';
                $viewContent = 'We Welcome you to our site. Thank you for creating the account.';

                $mail = Mail::send([], [], function ($message) use($to_emails, $strFromEmail, $strFromName, $viewContent)
                {
                    $message->from($strFromEmail, $strFromName)
                            ->to($to_emails)
                            ->subject('Welcome!!! to Chritopher')
                            ->setBody($viewContent, 'text/html');
                });
            }
            catch (Exception $e)
            {
                #code...
            }
    	return $user->id;
    }
    //Storing the basic details of User
    public static function addBasicDetails($data){
        return DB::table('basic_details')->insert($data);
    }
    public static function addPersonalDetails($data){
        return DB::table('personal_details')->insert($data);
    }
    public static function addReligionDetails($data){
        return DB::table('religion_info')->insert($data);        
    }
    public static function addUserLocationDetails($data){
        return DB::table('user_location')->insert($data);        
    }
    public static function addProfessionalInformation($data){
        return DB::table('professtion_info')->insert($data);        
    }
    public static function addFamilyDetails($data){
        return DB::table('family_details')->insert($data);        
    }
    public static function addLifeStyleDetails($data){
        return DB::table('life_style')->insert($data);        
    }
    public static function addAboutFamilyDetails($data){
        return DB::table('about_family')->insert($data);        
    }
    /*Partner Preferences*/
    public static function addBasicPartnerPreferenceDetails($data){
        return DB::table('basic_partner_preferences')->insert($data);        
    } 
    public static function addProfessionalPreferences($data){
        return DB::table('professional_preferences')->insert($data);        
    }
    public static function addLocationPreferences($data){
        return DB::table('location_preferences')->insert($data);     
    }
    public static function addPreferencesInDetail($data){
        return DB::table('detail_preferences')->insert($data);        
    }   
##################################### Get the User Data ##############################################  
    public static function get_all_users(){
        return DB::table('users')->where(['users.deleted_at' => NULL])->get();
    }
########################### Get Details Of Particular User######################################################
    public static function getBasicDetailsByUserId($data){
        return DB::table('basic_details')->where('user_id',$data['user_id'])->first();
    }
    public static function getUserImagesByUserId($data){
        return DB::table('user_profile_images')->where('user_id',$data['user_id'])->get();
    }
    public static function getUserVideosByUserId($data){
        return DB::table('user_videos')->where('user_id',$data['user_id'])->get();
    }
    public static function getReligionDetailsByUserId($data){
        return DB::table('religion_info')->where('user_id',$data['user_id'])->first();
    }
    public static function getUserLocationByUserId($data){
        return DB::table('user_location')->where('user_id',$data['user_id'])->first();
    } 
    public static function getProfessionalDetailsByUserId($data){
        return DB::table('professtion_info')->where('user_id',$data['user_id'])->first();
    }    
    public static function getFamilyDetailsByUserId($data){
        return DB::table('family_details')->where('user_id',$data['user_id'])->first();
    }  
    public static function getAboutFamilyDetailsByUserId($data){
        return DB::table('about_family')->where('user_id',$data['user_id'])->first();
    } 
    public static function getLifeStyleDetailsByUserId($data){
        return DB::table('life_style')->where('user_id',$data['user_id'])->first();
    }  
    public static function getBasicPartnerPreferenceDetailsByUserId($data){   
        return DB::table('basic_partner_preferences')->where('user_id',$data['user_id'])->first();     
    }
    public static function getProfessionalPreferencesByUserId($data){   
        return DB::table('professional_preferences')->where('user_id',$data['user_id'])->first();     
    }
    public static function getLocationPreferencesByUserId($data){   
        return DB::table('location_preferences')->where('user_id',$data['user_id'])->first();     
    }
    public static function getPreferencesInDetailByUserId($data){
        return DB::table('detail_preferences')->where('user_id',$data['user_id'])->first();        
    }
    public static function getPersonalDetailsByUserId($data){
        return DB::table('personal_details')->where('user_id',$data['user_id'])->first();
    }
################################ Edit the User Data ########################################    
    public static function editBasicDetails($data){
        return DB::table('basic_details')->where('user_id',$data['user_id'])->update($data);
    }
    public static function editPersonalDetails($data){
        return DB::table('personal_details')->where('user_id',$data['user_id'])->update($data);
    }
    public static function editReligionDetails($data){
        return DB::table('religion_info')->where('user_id',$data['user_id'])->update($data);        
    }
    public static function editUserLocation($data){
        return DB::table('user_location')->where('user_id',$data['user_id'])->update($data);
    }
    public static function editProfessionalInformation($data){
        return DB::table('professtion_info')->where('user_id',$data['user_id'])->update($data);   
    }
    public static function editFamilyDetails($data){
        return DB::table('family_details')->where('user_id',$data['user_id'])->update($data);        
    }
    public static function editLifeStyleDetails($data){
        return DB::table('life_style')->where('user_id',$data['user_id'])->update($data);        
    }
    public static function editAboutFamilyDetails($data){
        return DB::table('about_family')->where('user_id',$data['user_id'])->update($data);
    }
    /*Partner Preferences*/
    public static function editBasicPartnerPreferenceDetails($data){
        return DB::table('basic_partner_preferences')->where('user_id',$data['user_id'])->update($data);      
    } 
    public static function editProfessionalPreferences($data){
        return DB::table('professional_preferences')->where('user_id',$data['user_id'])->update($data);
    }
    public static function editLocationPreferences($data){
        return DB::table('location_preferences')->where('user_id',$data['user_id'])->update($data);   
    }
    public static function editPreferencesInDetail($data){
        return DB::table('detail_preferences')->where('user_id',$data['user_id'])->update($data);        
    }   
    public static function editMobileNumber($data){
        return DB::table('users')->where('id',$data['id'])->update($data);        
    }
##################################### Queries ##############################################
    //Get users by search 
    public static function searchByFilter($data){
       
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*','professtion_info.*','user_location.*','family_details.*','life_style.*','about_family.*','about_family.content as family_details','basic_partner_preferences.*','professional_preferences.*','location_preferences.*','detail_preferences.*','detail_preferences.content as looking_for_details','personal_details.*','user_profile_images.*','user_videos.*')
        ->leftjoin('basic_details','basic_details.user_id','=','users.id')
        ->leftjoin('religion_info','religion_info.user_id','=','users.id')
        ->leftjoin('professtion_info','professtion_info.user_id','=','users.id')
        ->leftjoin('user_location','user_location.user_id','=','users.id')
        ->leftjoin('family_details','family_details.user_id','=','users.id')
        ->leftjoin('life_style','life_style.user_id','=','users.id')
        ->leftjoin('about_family','about_family.user_id','=','users.id')
        ->leftjoin('basic_partner_preferences','basic_partner_preferences.user_id','=','users.id')
        ->leftjoin('professional_preferences','professional_preferences.user_id','=','users.id')
        ->leftjoin('location_preferences','location_preferences.user_id','=','users.id')
        ->leftjoin('detail_preferences','detail_preferences.user_id','=','users.id')
        ->leftjoin('personal_details','personal_details.user_id','=','users.id')
        ->leftjoin('user_profile_images','user_profile_images.user_id','=','users.id')
        ->leftjoin('user_videos','user_videos.user_id','=','users.id');
        if ($data['user_id']) {
            $query->where([
                ['users.id',$data['user_id']]
            ]);
        }else if ($data['user_type']) {
            $query->where([
                ['users.user_type',$data['user_type']]
            ]);            
        }else if ($data['age']) {
            $query->where([
                ['basic_details.age',$data['age']]
            ]);      
        }else if ($data['caste']) {
            $query->where([
                ['religion_info.caste_id',$data['caste']]
            ]);      
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       /*print_r($result);die();*/
        return $result;
    }

    //Get users by age 
    public static function searchByAge($data)
    {
        $age = $data['age'];
        $age_upto = $data['age_upto'];
        $query = DB::table('users')
                ->select('users.*','basic_details.*','user_profile_images.*')
                ->join('basic_details','basic_details.user_id','=','users.id')
                ->leftjoin('user_profile_images','users.id','=','basic_details.user_id');
        if ($data['age_upto']) 
        {
            $query->whereBetween('basic_details.age',[$age,$age_upto]);
        }
        else
        {
             $query->where([
                ['basic_details.age','>=',$data['age']]
            ]);
        }

        $result = $query->where(['users.deleted_at' => NULL])->get();
        /*print_r($result);die();*/
        return $result;
    }
    //Get users by height
    public static function searchByHeight($data)
    {
       
       $height=$data['height'];
       $height_upto=$data['height_upto'];
        $query = DB::table('users')
        ->select('users.*','basic_details.*','user_profile_images.*')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->leftjoin('user_profile_images','users.id','=','basic_details.user_id');
        if ($data['height_upto']) {
            $query->whereBetween('basic_details.height',[$height,$height_upto]);
        }else{
             $query->where([
                ['basic_details.height','>=',$data['height']]
            ]);
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       /*print_r($result);die();*/
        return $result;
    }
    //Get users by maritial status
    public static function searchByMaritalStatus($data){
       
       $maritial_status=$data['maritial_status'];
        $query = DB::table('users')
        ->select('users.*','basic_details.*','user_profile_images.*')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->leftjoin('user_profile_images','users.id','=','user_profile_images.user_id');
        if ($data['maritial_status']) 
        {
            $query->where([
                ['basic_details.maritial_status',$maritial_status]
            ]);
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       /*print_r($result);die();*/
        return $result;
    }
    //Get users by Mother Tounge
    public static function searchByMotherTounge($data){
       
       $mother_tounge_id=$data['mother_tounge_id'];
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id');
        if ($data['mother_tounge_id']) {
            foreach ($mother_tounge_id as $value) {
                $query->orWhere([
                    ['basic_details.mother_tounge_id',$value]
                ]);                
            }
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       // print_r($result);die();
        return $result;
    }
    //Get users by religion 
    public static function searchByReligions($data){
       
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id');
        if ($data['religion_id']) {
            $religion_id=$data['religion_id'];
            $query->where([
                ['religion_info.religion_id',$religion_id]
            ]);
        }
        elseif ($data['caste_id']) {
            $caste_id=$data['caste_id'];
            foreach ($caste_id as $value) {
                $query->orWhere([
                    ['religion_info.caste_id',$value]
                ]);                
            }
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       /*print_r($result);die();*/
        return $result;
    }
    //Get users by castes
    public static function searchByCaste($data)
    {
        $caste_id=$data['caste_id'];
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id');
        if ($data['caste_id']) {
            foreach ($caste_id as $value) {
                $query->orWhere([
                    ['religion_info.caste_id',$value]
                ]);                
            }
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       // print_r($result);die();
        return $result;
    }    
    
     //Get users by employeed_in
    public static function searchByProfessionFields($data){
       
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*','professtion_info.*')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id');
        if ($data['highest_education_id']) {
            $highest_education_id=$data['highest_education_id'];
            foreach ($highest_education_id as $value) {
                $query->orWhere([
                    ['professtion_info.highest_education_id',$value]
                ]);                
            }
        }
        else if ($data['employeed_in']) {
            $query->where([
                ['professtion_info.employeed_in',$data['employeed_in'] ]
            ]);
        }else if ($data['occupation_id']) {
            $query->where([
                ['professtion_info.occupation_id',$data['occupation_id'] ]
            ]);    
        }
        $result=$query->where(['users.deleted_at' => NULL])->get();
       /*print_r($result);die();*/
        return $result;
    }


    //Get users by Annual Income
    public static function get_users_by_annual_id($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id');
        if ($data['annual_income'])
        {
            $query->where(array(
                'professtion_info.annual_income' => $data['annual_income'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->where(['users.deleted_at' => NULL])->get();
        return $result;
    }

    //Get users by Location
    public static function get_users_by_location($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['country_living_id'])
        {
            $query->where(array(
                'user_location.country_living_id' => $data['country_living_id'],
                'users.deleted_at' => NULL
            ));
        }
        if ($data['residing_state'])
        {
            $query->where(array(
                'user_location.residing_state' => $data['residing_state'],
                'users.deleted_at' => NULL
            ));
        }
        if ($data['residing_city'])
        {
            $query->where(array(
                'user_location.residing_city' => $data['residing_city'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by Resident Status
    public static function get_users_by_resident_status($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['resident_status'])
        {
            $query->where(array(
                'user_location.resident_status' => $data['resident_status'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    } 

    //Get users by Citizenship Status
    public static function get_users_by_citizenship_status($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['citizenship'])
        {
            $query->where(array(
                'user_location.citizenship' => $data['citizenship'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by Citizenship Status
    public static function get_users_by_physical_status($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['physical_status'])
        {
            $query->where(array(
                'basic_details.physical_status' => $data['physical_status'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    } 

    //Get users by Complexion Status
    public static function get_users_by_complexion_status($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['complextion'])
        {
            $query->where(array(
                'basic_details.complextion' => $data['complextion'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by Complexion Status
    public static function get_users_by_body_type($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['body_type'])
        {
            $query->where(array(
                'basic_details.body_type' => $data['body_type'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by eating habits Status
    public static function get_users_by_eating_habits($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id');
        if ($data['eating_habits'])
        {
            $query->where(array(
                'basic_details.eating_habits' => $data['eating_habits'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by family value
    public static function get_users_by_family_value($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');
        if ($data['family_value'])
        {
            $query->where(array(
                'family_details.family_value' => $data['family_value'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by family type
    public static function get_users_by_family_type($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');
        if ($data['family_type'])
        {
            $query->where(array(
                'family_details.family_type' => $data['family_type'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by family status
    public static function get_users_by_family_status($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');
        if ($data['family_status'])
        {
            $query->where(array(
                'family_details.family_status' => $data['family_status'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by children status
    public static function get_users_by_have_children($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');
        if ($data['have_children'])
        {
            $query->where(array(
                'basic_details.have_children' => $data['have_children'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by family status
    public static function get_users_by_profile_created_for($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');
        if ($data['profile_for'])
        {
            $query->where(array(
                'basic_details.profile_for' => $data['profile_for'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by horoscope 
    public static function get_users_by_horoscope($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');
        if ($data['zodiac_star_sign'])
        {
            $query->where(array(
                'religion_info.zodiac_star_sign' => $data['zodiac_star_sign'],
                'users.deleted_at' => NULL
            ));
        }
        $result = $query->get();
        return $result;
    }

    //Get users by family status
    public static function get_users_without_profile($data)
    {
        $get_users_with_profile = Self::get_profile_user_ids();

        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id');

        if(count($get_users_with_profile) > 0)
        {
            $query = $query->whereNotIn('users.id', $get_users_with_profile);
        }
        $query = $query->groupBy('users.id');
        $result = $query->get();
        return $result;
    }

    public static function get_profile_user_ids()
    {
        $get_users_with_profile = DB::table('users')
        ->join('user_profile_images','user_profile_images.user_id','=','users.id')
        ->groupBy('users.id')
        ->pluck('users.id');

        return $get_users_with_profile;
    }

    //Get users with profile
    public static function get_users_with_profile($data)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->join('basic_details','basic_details.user_id','=','users.id')
        ->join('religion_info','religion_info.user_id','=','users.id')
        ->join('professtion_info','professtion_info.user_id','=','users.id')
        ->join('user_location','user_location.user_id','=','users.id')
        ->join('family_details','family_details.user_id','=','users.id')
        ->join('user_profile_images','user_profile_images.user_id','=','users.id')
        ->groupBy('users.id');
        $result = $query->get();
        return $result;
    }

    // Is user exist
    public static function is_exist($user_id)
    {
        return Self::where(array('id' => $user_id, 'deleted_at' => NULL))->first();
    }

    // User exist by member id
    public static function is_member_exist($member_id)
    {
        return Self::where(array('member_id' => $member_id, 'deleted_at' => NULL))->first();
    }

    // Check verification OTP
    public static function check_otp_verification($data)
    {
        return Self::where(array('id' => $data['user_id'], 'otp' => $data['otpnumber']))->first();
    }

    public static function get_user_details($user_id)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->leftjoin('basic_details','basic_details.user_id','=','users.id')
        ->leftjoin('religion_info','religion_info.user_id','=','users.id')
        ->leftjoin('professtion_info','professtion_info.user_id','=','users.id')
        ->leftjoin('user_location','user_location.user_id','=','users.id')
        ->leftjoin('family_details','family_details.user_id','=','users.id')
        ->leftjoin('user_profile_images','user_profile_images.user_id','=','users.id')
        ->where(array('users.id' => $user_id))
        ->groupBy('users.id');
        $result = $query->first();
        return $result;
    }

    public static function get_user_details_by_member_id($member_id)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->leftjoin('basic_details','basic_details.user_id','=','users.id')
        ->leftjoin('religion_info','religion_info.user_id','=','users.id')
        ->leftjoin('professtion_info','professtion_info.user_id','=','users.id')
        ->leftjoin('user_location','user_location.user_id','=','users.id')
        ->leftjoin('family_details','family_details.user_id','=','users.id')
        ->leftjoin('user_profile_images','user_profile_images.user_id','=','users.id')
        ->where(array('users.member_id' => $member_id))
        ->groupBy('users.id');
        $result = $query->first();
        return $result;
    }

    public static function get_membership_list($user_id)
    {
        $query = DB::table('users')
        ->select('users.*','basic_details.*','religion_info.*', 'professtion_info.*','user_location.*', 'family_details.*', 'users.id as user_id')
        ->leftjoin('basic_details','basic_details.user_id','=','users.id')
        ->leftjoin('religion_info','religion_info.user_id','=','users.id')
        ->leftjoin('professtion_info','professtion_info.user_id','=','users.id')
        ->leftjoin('user_location','user_location.user_id','=','users.id')
        ->leftjoin('family_details','family_details.user_id','=','users.id')
        ->leftjoin('user_profile_images','user_profile_images.user_id','=','users.id')
        ->where(array('users.membership_type' => 'premium'))
        ->whereNotIn('users.id', array($user_id))
        ->groupBy('users.id');
        $result = $query->get();
        return $result;
    }

    public static function is_exist_by_phone($number)
    {
        return Self::where(array('phone' => $number, 'deleted_at' => NULL))->first();
    }

    public static function is_exist_by_email($email)
    {
        return Self::where(array('email' => $email, 'deleted_at' => NULL))->first();
    }


    public static function is_exist_by_social_token($token)
    {
        return Self::where(array('social_token' => $token, 'deleted_at' => NULL))->first();
    }

    public static function is_user_exist($arr)
    {
        return Self::where($arr)->first();
    }
    /*public static function is_star_exist()
    {
        return ""; 
    }
    public static function get_users_star_matches($params)
    {
        
    }*/
    /*public static function member_id_with_password($data)
    {
        return Self::where(array('member_id' => $data['member_id'], 'password' => $data['password'],  'deleted_at' => NULL))->first();
    }

    public static function email_with_password($data)
    {
        return Self::where(array('email' => $data['email'], 'password' => $data['password'], 'deleted_at' => NULL))->first();
    }

    public static function phone_with_password($data)
    {
        return Self::where(array('phone' => $data['phone'], 'password' => $data['password'], 'deleted_at' => NULL))->first();
    }*/

    public static function get_export_data($data)
    {
        DB::enableQueryLog();
        $query = Users::select('id','name','email','phone','membership_type','member_id')
                        ->where(array('deleted_at' => NULL));

        if(!empty($data['start_date']))
        {
            $query = $query->where('created_at', '>=', $data['start_date']);
        }

        if(!empty($data['end_date']))
        {
            $query = $query->where('created_at', '<=', $data['end_date']);
        }
        return $query->get();
    }
}