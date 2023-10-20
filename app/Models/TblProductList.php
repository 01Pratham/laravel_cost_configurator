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
        $productArr = self::select('primary_category', "sec_category", "prod_int", "product_name")->distinct()->get()->toArray();
        foreach ($productArr as $key => $arr) {
            $array[$arr['primary_category']][$arr["sec_category"]][] = array(
                "prod_int" => $arr["prod_int"],
                "product_name" => $arr["product_name"],
            );
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

    public static function finalProdArr()
    {
        $finalProdArr = array();
        $productArr = self::getAllProducts();
        $primaryCategoryArr = self::getAllPrimaryCategories();
        $SecCategoryArr = self::getAllSecondaryCategories();

        // foreach ($productArr as $key => $arr) {
        //     if (in_array($arr['primary_category'], $primaryCategoryArr)) {
        //         if (in_array($arr['sec_category'], $SecCategoryArr)) {
        //             $finalProdArr[$arr['primary_category']][$arr['sec_category']][] = [
        //                 // "id" =>  $arr["id"],
        //                 // "sku_code" =>  $arr["sku_code"],
        //                 // "region_id" =>  $arr["region_id"],
        //                 "sec_category" =>  $arr["sec_category"],
        //                 "prod_int" =>  $arr["prod_int"],
        //                 "product_name" =>  $arr["product_name"]
        //             ];
        //         }
        //     }
        // }

        return $finalProdArr;
    }
}
