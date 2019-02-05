<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Roles extends Model
{
	use SoftDeletes;
	protected $dates = ['deleted_at'];
    
    public static function get_all_roles()
    {
    	return \App\Roles::all();
    }

    public static function get_role_details($id)
    {
    	return \App\Roles::where('id', $id)->first();
    }

    public static function roles_save($insert_data, $id=false)
    {
    	if ($id)
    	{
    		$role = \App\Roles::get_role_details($id);
    	}
    	else
    	{
			$role = new Roles;
    	}

		$role->role_name = $insert_data['role_name'];
		$role->role_slug = $insert_data['role_slug'];
		$role->status = $insert_data['status'];
		$role->save();

    	return $role->id;
    }

    public static function role_delete($id)
    {
    	return \App\Roles::where('id', $id)->update(array('deleted_at' => date('Y-m-d H:i:s')));
    }
}