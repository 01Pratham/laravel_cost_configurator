<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\TblProductList;
use Exception;

class TblRateCardPrices extends Model
{
    use HasFactory;
    protected $table = "tbl_rate_card_prices";

    public static function getProductPrices($int, $reg, $rateCard){
        $id = 0;
        $arr = TblProductList::where("prod_int",$int)
                ->where("region_id",$reg)
                ->get()
                ->toArray();
        if(empty($arr)){
            $arr2 = TblProductList::where("prod_int",$int)
                ->where("region_id",0)
                ->get()
                ->toArray();
                if(!empty($arr2)){
                    $id = $arr2[0]['id'];
                }
        }else{
            $id = $arr[0]['id'];
        }
        $Price = self::where("prod_id",$id)->where("rate_card_id",$rateCard)->get()->toArray();
        try {
            return $Price[0]["selling_price"];
        }catch(Exception $e){
            return 0;
        }
    }
}
