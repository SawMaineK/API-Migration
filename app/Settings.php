<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Settings extends Model
{
	use SoftDeletes;

	public static function get_settings($settings=null)
	{
		if(!$settings)
		{
			return Settings::whereIn("setting_key", $settings);
		}
		else if(is_array($settings) && sizeof($settings) > 0)
		{
			return Settings::whereIn("setting_key", $settings);
		}
		else if($settings != '')
		{
			$setting = Settings::where(array("setting_key" => $settings))->first();
	
			return $setting ? unserialize($setting['setting_value']) : '';
		}

		return array();
	}

	public static function save_settings($settings = array())
	{
		if(sizeof($settings) > 0)
		{
			foreach($settings as $keyS => $valueS)
			{
				$key_exist = Settings::where(array("setting_key" => $keyS))->first();
				if ($key_exist)
				{
					$key_exist->setting_value = serialize($valueS);
					$key_exist->updated_at = date('Y-m-d H:i:s');
					if ($key_exist->save())
					{
						return true;
					}

					return false;
				}
				
				$this->db->insert('settings', array("setting_key" => $keyS, "setting_value" => serialize($valueS)));
			}

			return true;						
		}

		return false;
	}

	public static function save_json_settings($settings = array())
	{
		if(sizeof($settings) > 0)
		{
			foreach($settings as $keyS => $valueS)
			{
				$key_exist = Settings::where(array("setting_key" => $keyS))->first();
				if ($key_exist)
				{
					$key_exist->setting_value = json_encode($valueS);
					$key_exist->updated_at = date('Y-m-d H:i:s');
					if ($key_exist->save())
					{
						return true;
					}

					return false;
				}
				
				$this->db->insert('settings', array("setting_key" => $keyS, "setting_value" => serialize($valueS)));
			}

			return true;						
		}

		return false;
	}

	public static function get_json_settings($settings=null)
	{
		if(!$settings)
		{
			return Settings::whereIn("setting_key", $settings);
		}
		else if(is_array($settings) && sizeof($settings) > 0)
		{
			return Settings::whereIn("setting_key", $settings);
		}
		else if($settings != '')
		{
			$setting = Settings::where(array("setting_key" => $settings))->first();
	
			return $setting ? json_decode($setting['setting_value']) : '';
		}

		return array();
	}
}