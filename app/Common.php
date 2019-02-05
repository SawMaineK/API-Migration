<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Common extends Model {

    protected $fillable = ['name', 'email', 'password', 'remember_token','user_type','created_at', 'updated_at'];

    public static function getMotherToungList(){
        return DB::table('mother_tounges')->get();
    }
    public static function getWeightList(){
        return DB::table('weight_table')->get();
    }
    public static function getHeightList(){
        return DB::table('height_table')->get();
    }
    public static function getAgeList(){
        return DB::table('age_table')->get();
    }
    public static function getReligionList(){
        return DB::table('religion')->get();
    }
    public static function getCasteList(){
        return DB::table('caste')->get();
    }
    public static function getSubCasteList(){
        return DB::table('sub_caste')->get();
    }
    public static function getStarList(){
        return DB::table('star')->get();
    }
    public static function getGothraList(){
        return DB::table('gothra')->get();
    }
    public static function getRaasiList(){
        return DB::table('moon_sign')->get();
    }
    public static function getCountryList(){
    	return DB::table('country')->get();	
    }
    public static function getStateList(){
    	return DB::table('state')->get();	
    }
    public static function getCityList(){
    	return DB::table('city')->get();	
    }
    public static function getHighestEducationList(){
    	return DB::table('highest_education')->get();	
    }
    public static function getOccupationList(){
    	return DB::table('occupation')->get();	
    }
    public static function getCurrencyList(){
    	return DB::table('currency')->get();	
    }
    public static function getHobbiesList(){
    	return DB::table('hobbies')->get();	
    }
    public static function getFavouriteMusicList(){
    	return DB::table('favourite_music')->get();	
    }
    public static function getSportsActivitiesList(){
    	return DB::table('sports_activities')->get();	
    }
    public static function getAnnualIncomeList(){
    	return DB::table('annual_income_table')->get();
    }
    public static function getZodiacList(){
        return DB::table('horoscope')->get();
    }
    public static function getProfileForList(){
        return DB::table('profile_created_for')->get();
    }
    public static function getMaritialStatusList()
    {
        return DB::table('maritial_status_table')->get();
    }
    public static function getComplextionList(){
        return DB::table('complextion_table')->get();
    }
    public static function getDoshList(){
        return DB::table('dosh_table')->get();
    }
    public static function getResidentStatusList(){
        return DB::table('resident_status')->get();
    }
}
