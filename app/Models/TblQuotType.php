<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblQuotType extends Model
{
    use HasFactory;

    protected $table = "tbl_quot_type";

    public static function getQuoteName($quoteID){
        return self::where('id',$quoteID)->get()->toArray();
    }
}
