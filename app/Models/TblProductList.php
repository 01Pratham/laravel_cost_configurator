<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblProductList extends Model
{
    use HasFactory;

    protected $table = "tbl_product_list";

    public static function getAllProducts(){
        $productArr = self::all()->toArray();
        return $productArr;
    }

    public static function getAllPrimaryCategories(){
        $primaryCategoryArr = self::select('primary_category')->distinct()->get();
        print_r($primaryCategoryArr);
    }
}
