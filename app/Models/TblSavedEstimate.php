<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblSavedEstimate extends Model
{
    use HasFactory;
    protected $table = 'tbl_saved_estimates';

    public function getCountOfEstimates($userId){
        return self::where('user_id',$userId)->get()->count();
    }
}
    