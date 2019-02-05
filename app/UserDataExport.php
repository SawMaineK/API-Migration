<?php
namespace App;

use App\Users;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;

class UserDataExport implements FromCollection//FromQuery
{
	/*use Exportable;
	private $start_date;
    private $end_date;

	public function __construct(string $start_date,string $end_date)
    {
    	$this->start_date = $start_date;
     	$this->end_date = $end_date;
    }
    public function query()
    {
        $x=Users::select('id','name','email','phone','membership_type','member_id')
        ->whereBetween('created_at', [$this->start_date,$this->end_date])->where('deleted_at',NULL)
        ->get();
        print_r($x);die;
        return Users::select('id','name','email','phone','membership_type','member_id')
        ->whereBetween('created_at', [$this->start_date,$this->end_date])
        ->where('deleted_at',NULL)
        ->get();
    }*/
    public function collection()
    {
    	return Users::select('id','name','email','phone','membership_type','member_id')
        ->where('deleted_at',NULL)
        ->get();
    }
}