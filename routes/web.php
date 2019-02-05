<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*Route::get('/', function () {
    if (Auth::check()) {
        $usertype = Auth::user()->user_type;
        if ($usertype == "0") {
        	return redirect()->intended('admin_dashboard');
        } else {
        	return redirect()->intended('dashboard');
        }
    }
    return view('auth.login');
});*/
/*Route::get('/', function () {
    return redirect ('/dashboard');
});*/

Route::get('/', function () {
    return view('welcome');
});
#################################### User Api ########################################################
######################################################################################################
########################## Add User Data ####################################
Route::group(['prefix' => 'v1', 'middleware' => 'iapi'], function()
{
	Route::post('/signup', 'UserController@signup');			
	Route::post('/addBasicDetails','UserController@addBasicDetails');
	Route::post('/addPersonalDetails','UserController@addPersonalDetails');
	Route::post('/uploadImages','UserController@uploadImages');
	Route::post('/uploadVideo','UserController@uploadVideo');
	Route::post('/addReligionInformation','UserController@addReligionInformation');
	Route::post('/addUserLocation','UserController@addUserLocation');
	Route::post('/addProfessionalInformation', 'UserController@addProfessionalInformation');
	Route::post('/addFamilyDetails','UserController@addFamilyDetails');
	Route::post('/addLifeStyleDetails','UserController@addLifeStyleDetails');
	Route::post('/addAboutFamilyDetails','UserController@addAboutFamilyDetails');
	####################### Get User Data ################################
	Route::get('/getBasicDetailsByUserId','UserController@getBasicDetailsByUserId');
	Route::get('/getPersonalDetailsByUserId','UserController@getPersonalDetailsByUserId');
	Route::get('/getReligionDetailsByUserId','UserController@getReligionDetailsByUserId');
	Route::get('/getUserLocationByUserId','UserController@getUserLocationByUserId');
	Route::get('/getProfessionalDetailsByUserId','UserController@getProfessionalDetailsByUserId');
	Route::get('/getFamilyDetailsByUserId','UserController@getFamilyDetailsByUserId');
	Route::get('/getAboutFamilyDetailsByUserId','UserController@getAboutFamilyDetailsByUserId');
	Route::get('/getLifeStyleDetailsByUserId','UserController@getLifeStyleDetailsByUserId');
	Route::get('/getBasicPartnerPreferenceDetailsByUserId','UserController@getBasicPartnerPreferenceDetailsByUserId');
	Route::get('/getProfessionalPreferencesByUserId', 'UserController@getProfessionalPreferencesByUserId');
	Route::get('/getLocationPreferencesByUserId', 'UserController@getLocationPreferencesByUserId');
	Route::get('/getPreferencesInDetailByUserId', 'UserController@getPreferencesInDetailByUserId');
	Route::get('/getUserImagesByUserId', 'UserController@getUserImagesByUserId');
	Route::get('/getUserVideosByUserId', 'UserController@getUserVideosByUserId');
	####################### Edit User Data ################################
	Route::post('/editBaiscDetails','UserController@editBasicDetails');
	Route::post('/editPersonalDetails','UserController@editPersonalDetails');
	Route::post('/editReligionInformation','UserController@editReligionInformation');
	Route::post('/editUserLocation','UserController@editUserLocation');
	Route::post('/editProfessionalInformation', 'UserController@editProfessionalInformation');
	Route::post('/editFamilyDetails','UserController@editFamilyDetails');
	Route::post('/editLifeStyleDetails','UserController@editLifeStyleDetails');
	Route::post('/editAboutFamilyDetails','UserController@editAboutFamilyDetails');
	Route::post('/editBasicPartnerPreferenceDetails', 'UserController@editBasicPartnerPreferenceDetails');
	Route::post('/editProfessionalPreferences', 'UserController@editProfessionalPreferences');
	Route::post('/editLocationPreferences', 'UserController@editLocationPreferences');
	Route::post('/editPreferencesInDetail', 'UserController@editPreferencesInDetail');
	Route::post('/editMobileNumber', 'UserController@editMobileNumber');

	/*List of user latest update api*/
	Route::post('/latestUpdateUsersList', 'UserController@latestUpdateUsersList');
	/****************Search Api*****************/
	Route::post('/search', 'UserController@search');
	######################### Partner Preferences ###############################
	Route::post('/addBasicPartnerPreferenceDetails', 'UserController@addBasicPartnerPreferenceDetails');
	Route::post('/addProfessionalPreferences', 'UserController@addProfessionalPreferences');
	Route::post('/addLocationPreferences', 'UserController@addLocationPreferences');
	Route::post('/addPreferencesInDetail', 'UserController@addPreferencesInDetail');
	################################################################################

	############################ filter profiles #######################################
	Route::get('/ageSortingApi', 'UserFilterController@ageSortingApi');
	Route::get('/heightSortingApi', 'UserFilterController@heightSortingApi');
	Route::get('/MaritalStatusApi', 'UserFilterController@MaritalStatusApi')->name("MaritialStatusApi");
	Route::get('/NeverMarriedApi', 'UserFilterController@NeverMarriedApi')->name("NeverMarriedApi");
	Route::get('/DivorcedApi', 'UserFilterController@DivorcedApi')->name("DivorcedApi");
	Route::get('/AwaitingDivorceApi', 'UserFilterController@AwaitingDivorceApi')->name("AwaitingDivorceApi");
	Route::get('/ReligionsApi', 'UserFilterController@ReligionsApi')->name('ReligionsApi');
	Route::get('/MotherTongueApi', 'UserFilterController@MotherTongueApi')->name('MotherTongueApi');
	Route::get('/CasteApi', 'UserFilterController@CasteApi')->name('CasteApi');
	Route::get('/EducationApi', 'UserFilterController@EducationApi')->name('EducationApi');
	Route::get('/EmployedInApi', 'UserFilterController@EducationApi')->name('EmployedInApi');
	Route::get('/OccupationApi', 'UserFilterController@EducationApi')->name('OccupationApi');
	Route::get('/viewFullProfile', 'UserFilterController@viewFullProfile');

	#Pranav
	#Annual income
	Route::get('/annual_income', 'UserFilterController@annual_income')->name('annual_income');
	Route::get('/location_filter', 'UserFilterController@location_filter')->name('location_filter');
	Route::get('/resident_status_filter', 'UserFilterController@resident_status_filter')->name('resident_status_filter');
	Route::get('/citizenship_status_filter', 'UserFilterController@citizenship_status_filter')->name('citizenship_status_filter');
	Route::get('/physical_status_filter', 'UserFilterController@physical_status_filter')->name('physical_status_filter');
	Route::get('/complexion_status_filter', 'UserFilterController@complexion_status_filter')->name('complexion_status_filter');
	Route::get('/body_type_filter', 'UserFilterController@body_type_filter')->name('body_type_filter');
	Route::get('/eating_habits_filter', 'UserFilterController@eating_habits_filter')->name('eating_habits_filter');
	Route::get('/family_value_filter', 'UserFilterController@family_value_filter')->name('family_value_filter');
	Route::get('/family_type_filter', 'UserFilterController@family_type_filter')->name('family_type_filter');
	Route::get('/family_status_filter', 'UserFilterController@family_status_filter')->name('family_status_filter');
	Route::get('/have_children_filter', 'UserFilterController@have_children_filter')->name('have_children_filter');
	Route::get('/profile_created_for_filter', 'UserFilterController@profile_created_for_filter')->name('profile_created_for_filter');

	Route::get('/profile_horoscope_filter', 'UserFilterController@profile_horoscope_filter')->name('profile_horoscope_filter');
	Route::post('/search_by_member_id', 'UserFilterController@search_by_member_id')->name('search_by_member_id');

	// Get user with and without profile image
	Route::get('/get_users_without_profile', 'UserFilterController@get_users_without_profile')->name('get_users_without_profile');
	Route::get('/get_users_with_profile', 'UserFilterController@get_users_with_profile')->name('get_users_with_profile');


	// Register Process Api
	Route::post('/otp_verification', 'UserController@otp_verification')->name('otp_verification');
	Route::post('/resend_otp', 'UserController@resend_otp')->name('resend_otp');

	// Login Api
	Route::post('/login_with_facebook', 'UserController@login_with_facebook')->name('login_with_facebook');
	Route::post('/login_via_number', 'UserController@login_via_number')->name('login_via_number');
	Route::post('/member_login', 'UserController@member_login')->name('member_login');
	Route::post('/forget_password', 'UserController@forget_password')->name('forget_password');
	Route::any('set-password/{key}', 'UserController@set_new_password')->name('set-password');

	// Logout Api
	Route::post('app-logout', 'UserController@appLogout')->name('app-logout');

	// Get Profile
	Route::get('/get_profile', 'UserController@get_profile')->name('get_profile');

	// Get membership list
	Route::get('/get_membership_list', 'UserController@get_membership_list')->name('get_membership_list');
	Route::get('/update_membership_user', 'UserController@update_membership_user')->name('update_membership_user');
	// Route::get('/test', 'UserController@test')->name('test');
//	Route::get('/test', 'UserFilterController@test')->name('test');
	###############################################################################################################

	######################################## Template Apis #########################################################
	################################################################################################################
	Route::get('/templates', 'TemplateController@index');
	Route::get('/showTemplateById', 'TemplateController@showTemplateById');
	################################################################################################################

	###################################### Other Apis ##############################################################
	################################################################################################################
	/******************APIs needed for basic details*************************/
	Route::get('/getMotherToungList', 'UserController@getMotherToungList');
	Route::get('/getWeightList', 'UserController@getWeightList');
	Route::get('/getHeightList', 'UserController@getHeightList');
	Route::get('/getProfileForList', 'UserController@getProfileForList');
	Route::get('/getMaritialStatusList', 'UserController@getMaritialStatusList');
	Route::get('/getComplextionList', 'UserController@getComplextionList');
	Route::get('/getAgeList', 'UserController@getAgeList');
	Route::get('/getAnnualIncomeList', 'UserController@getAnnualIncomeList');
	/***************Apis needed for religion_info table*********************/
	Route::get('/getReligionList', 'UserController@getReligionList');
	Route::get('/getCasteList', 'UserController@getCasteList');
	Route::get('/getSubCasteList', 'UserController@getSubCasteList');
	Route::get('/getStarList', 'UserController@getStarList');
	Route::get('/getGothraList', 'UserController@getGothraList');
	Route::get('/getRaasiList', 'UserController@getRaasiList');
	Route::get('/getZodiacList', 'UserController@getZodiacList');
	Route::get('/getDoshList', 'UserController@getDoshList');
	/***************Apis needed for Location_info table*********************/
	Route::get('/getCountryList', 'UserController@getCountryList');
	Route::get('/getStateList', 'UserController@getStateList');
	Route::get('/getCityList', 'UserController@getCityList');
	Route::get('/getResidentStatusList', 'UserController@getResidentStatusList');

	/***************Apis needed for professional_info table*********************/
	Route::get('/getHighestEducationList', 'UserController@getHighestEducationList');
	Route::get('/getOccupationList', 'UserController@getOccupationList');
	Route::get('/getCurrencyList', 'UserController@getCurrencyList');
	/***************Apis needed for Life Style table*********************/
	Route::get('/getHobbiesList', 'UserController@getHobbiesList');
	Route::get('/getFavouriteMusicList', 'UserController@getFavouriteMusicList');
	Route::get('/getSportsActivitiesList', 'UserController@getSportsActivitiesList');
	Route::get('/send_mail', 'UserController@send_mail');

	Route::post('add_aadhar_no', 'UserController@add_aadhar_no');
	#############################################################################################

	Route::any('/saveUser', 'UserController@saveUser');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

############################# Admin Routes #################################################### 
// Route::group(['middleware' => ['auth', 'web']], function () {
// 	/*####################### Admin Login ##############################*/
// 	Route::get('/dashboard', 'Admin\SystemUserController@dashboard');
// 	Route::get('/logout', 'Admin\SystemUserController@logout');
// 	/*##################################################################*/

// 	/*####################### Manage User ################################*/
// 	Route::get('/users', 'Admin\SystemUserController@index')->name('users');
// 	Route::get('/create_user', 'Admin\SystemUserController@create_user');
//     Route::post('/add_user_data', 'Admin\SystemUserController@add_user_data');
// 	Route::get('/edit_user/{id}', 'Admin\SystemUserController@edit_user');
// 	Route::get('/edit_premium_user/{id}', 'Admin\SystemUserController@edit_premium_user');
// 	Route::get('/reports', 'Admin\SystemUserController@reports')->name('reports');
	
// 	Route::post('/user_reports', 'Admin\SystemUserController@userReports')->name('userReports');
// 	Route::post('/payment_reports', 'Admin\SystemUserController@paymentReports')->name('paymentReports');
// 	Route::post('/subscription_reports', 'Admin\SystemUserController@subscriptionReports')->name('subscriptionReports');

// 	Route::get('/delete_user_by_id/{id}', 'Admin\SystemUserController@delete_user_by_id');
// 	Route::get('/deletePremiumUserImages/{id}','Admin\SystemUserController@deletePremiumUserImages');
// 	Route::get('/deletePremiumUserVideo/{id}','Admin\SystemUserController@deletePremiumUserVideo');
	
// 	Route::post('/update_user/{id}', 'Admin\SystemUserController@updateUserSignUp');
// 	Route::get('/update_user_satatus/', 'Admin\SystemUserController@update_user_status');
// 	Route::get('/update_user_image_status/', 'Admin\SystemUserController@update_user_image_status');
// 	Route::get('/update_user_video_status/', 'Admin\SystemUserController@update_user_video_status');
// 	/*######################## Manage Premium Users ##################################*/
// 	Route::get('/premium_users', 'Admin\SystemUserController@index_premium_users')->name('premiumUsers');
// 	/*##################################################################################*/
// 	Route::post('/updateBasicDetails/{id}', 'Admin\SystemUserController@updateBasicDetails');
// 	Route::post('/updateReligionInformation/{id}', 'Admin\SystemUserController@updateReligionInformation');
// 	Route::post('/updateUserLocation/{id}', 'Admin\SystemUserController@updateUserLocation');
// 	Route::post('/updateProffessionalInfo/{id}', 'Admin\SystemUserController@updateProffessionalInfo');
// 	Route::post('/updateFamilyDetail/{id}', 'Admin\SystemUserController@updateFamilyDetail');
// 	Route::post('/updateAboutFamily/{id}', 'Admin\SystemUserController@updateAboutFamily');
// 	Route::post('/updateLifeStyle/{id}', 'Admin\SystemUserController@updateLifeStyle');
// 	/*####################### Manage Packages ################################*/
// 	Route::get('/package', 'Admin\PackageController@index');
// 	Route::get('/create_package', 'Admin\PackageController@create_package');
//     Route::post('/add_package', 'Admin\PackageController@add_package');
// 	Route::get('/edit_package/{id}', 'Admin\PackageController@edit_package');
// 	Route::post('/update_package/{id}', 'Admin\PackageController@updatePackage');
// 	Route::get('/update_package_satatus/', 'Admin\PackageController@update_package_status');
// 	Route::get('/delete_package_by_id/{id}', 'Admin\PackageController@delete_package_by_id');
	
// 	/*######################## Manage Premium Users ##################################*/
// 	Route::get('/membership_plan', 'Admin\PackageController@membership_plan');
// 	Route::get('/create_membership_plan', 'Admin\PackageController@create_membership_plan');
//     Route::post('/add_membership_plan', 'Admin\PackageController@add_membership_plan');
// 	Route::get('/edit_membership_plan/{id}', 'Admin\PackageController@edit_membership_plan');
// 	Route::post('/updateMembershipPlan/{id}', 'Admin\PackageController@updateMembershipPlan');
// 	Route::get('/updateMembershipPlanStatus', 'Admin\PackageController@updateMembershipPlanStatus');
// 	Route::get('/deleteMembershipPlan/{id}', 'Admin\PackageController@deleteMembershipPlan');
// 	/*##################################################################*/
// 	Route::get('/castes_list/{id}', 'Admin\SystemUserController@castes_list');
// 	Route::get('/rassi_list/{id}','Admin\SystemUserController@rassi_list');
// 	/*############################################################################################*/
// 	Route::get('/recommendation/', 'Admin\RecommendationController@index');
// 	Route::get('/create_recommendation/', 'Admin\RecommendationController@create_recommendation');
// 	Route::any('/addRecommendationData/', 'Admin\RecommendationController@addRecommendationData');
// 	Route::get('/edit-recommendation/{id}', 'Admin\RecommendationController@edit_recommendation');
// 	Route::any('/deleteRecommendation/{id}', 'Admin\RecommendationController@deleteRecommendation');
// 	Route::get('/update_recommendation_status', 'Admin\RecommendationController@update_recommendation_status');
// 	Route::post('/update_recommendation', 'Admin\RecommendationController@update_recommendation');
// 	/*#################################################################################################*/
// 	Route::get('/payments','Admin\PaymentsController@showPayments')->name('payments');
// 	Route::get('/paymentRefund/{id}', 'Admin\PaymentsController@paymentRefund')->name('paymentRefund');
// 	Route::get('/viewPaymentDetails/{id}', 'Admin\PaymentsController@viewPaymentDetails')->name('payment_details');
// 	// Role Management
// 	Route::get('roles', 'Admin\RolesController@index')->name('roles');
// 	Route::get('role/add', 'Admin\RolesController@roles_add')->name('add_role');
// 	Route::get('role/edit/{id}', 'Admin\RolesController@roles_edit')->name('edit_role');
// 	Route::post('role/save/{id?}', 'Admin\RolesController@roles_save')->name('save_role');
// 	Route::any('role/delete/{id}', 'Admin\RolesController@role_delete')->name('delete_role');

// 	// Settings
// 	Route::get('settings', 'Admin\SettingsController@index')->name('settings');
// 	Route::post('update-settings', 'Admin\SettingsController@update_settings')->name('admin-update-settings');
// });

###################################################################################################