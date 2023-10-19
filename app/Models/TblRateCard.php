<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblRateCard extends Model
{
    use HasFactory;

    protected $table = "tbl_rate_card";

        
    
    public static function getAllRateCards(){
        $rateCard = self::all()->toArray();
        return $rateCard;
    }


    public static function getRateCardName($RateCardId){
        return self::where('id',$RateCardId)->get()->toArray();
    }
}
