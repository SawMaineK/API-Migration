<?php
namespace App;

use App\UserMemberships;
use Maatwebsite\Excel\Concerns\FromCollection;

class SubscriptionDataExport implements FromCollection
{
    public function collection()
    {
        return UserMemberships::select('user_id','membership_id','membership_name','total_amount','discount_amount','amount_paid','transaction_id','start_date','end_date')
        ->get();
    }
}