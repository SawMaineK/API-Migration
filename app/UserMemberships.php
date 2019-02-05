<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class UserMemberships extends Model
{
	protected $dates = ['deleted_at'];
    
    public static function getAllRecords()
	{
		return DB::table('users')
		->select('users.*','user_memberships.*','user_memberships.status as payment_status','packages.id as package_id','packages.name as package_name')
		->join('user_memberships','user_memberships.user_id','users.id')
		->join('packages','packages.id','user_memberships.package_id')
		->where([
			['user_memberships.deleted_at',NULL]
		])
		->get();
	}
	public static function getRecordsById($id)
	{
		return DB::table('users')
		->select('users.*','user_memberships.*','packages.id as package_id','packages.name as package_name')
		->join('user_memberships','user_memberships.user_id','users.id')
		->join('packages','packages.id','user_memberships.package_id')
		->where([
			['user_memberships.id',$id],
			['user_memberships.deleted_at',NULL]
		])
		->first();
	}
}
