<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblUiOptions extends Model
{
    use HasFactory;

    protected $table = 'tbl_ui_options';

    public static function getUiOption($Prod){
        $arr = self::where("sec_category_name",$Prod)->get()->toArray();
        return $arr[0];
    }
}
