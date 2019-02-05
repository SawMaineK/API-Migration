<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
class template extends Model
{
    protected $fillable = [
        'title', 'body', 'status','id'
    ];

 public static function getAllTemplate()
 {
 	return DB::table('templates')->get();
 }

 public static function GetTemplateByid($template_id){
 	return DB::table('templates')->where(['id'=>$template_id])->first();
 }

}
