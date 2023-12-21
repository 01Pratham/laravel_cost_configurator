<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TblProductList extends Model
{
    use HasFactory;

    protected $table = "tbl_product_list";


    public static function getAllProducts()
    {
        $array = array();
        $productArr = self::select('primary_category', "sec_category", "prod_int", "product_name", "default_name")->distinct()->get()->toArray();
        foreach ($productArr as $key => $arr) {
            $array[$arr['primary_category']][$arr["sec_category"]][] = array(
                "prod_int" => $arr["prod_int"],
                "product_name" => $arr["product_name"],
            );
            $array[$arr['primary_category']][$arr["sec_category"]]["default"] = $arr["default_name"];
        }
        return $array;
    }

    public static function getAllPrimaryCategories()
    {
        $primaryCategoryArr = self::select('primary_category')->distinct()->get()->toArray();

        foreach ($primaryCategoryArr as $key => $arr) {
            $primaryCategoryArr[$key] = $arr['primary_category'];
        }

        return $primaryCategoryArr;
    }

    public static function getAllSecondaryCategories()
    {
        $SecCategoryArr = self::select('sec_category')->distinct()->get()->toArray();
        foreach ($SecCategoryArr as $key => $arr) {
            $SecCategoryArr[$key] = $arr['sec_category'];
        }
        return $SecCategoryArr;
    }

    public static function getProductInfo($prodInt, $key = "product_name")
    {
        $arr = self::where("prod_int", $prodInt)->get()->toArray();
        if (!empty($arr)) {
            return $arr[0][$key];
        }
    }
}
