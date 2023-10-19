<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblRegion extends Model
{
    use HasFactory;


    protected $table = "tbl_region";

    public static function getAllRegions(){
        $regionArr = self::all()->toArray();
        return $regionArr;
    }

    public static function getRegionName($regionId){
        return self::where('id',$regionId)->get()->toArray();
    }
}
