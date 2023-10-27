<?php

namespace App\Http\Controllers;

use App\Models\TblProductList;
use Illuminate\Http\Request;

class FinalQuotationController extends Controller
{
    public function index(Request $request)
    {
        echo "<pre>";
        print_r(self::ManipulateRes($request->all()));
        echo "</pre>";
    }

    private static function ManipulateRes($data)
    {
        $ManipulatedArr = array();

        foreach ($data as $key => $val) {
            if (gettype($key) == "integer") {
                if (is_array($val)) {
                    foreach ($val as $K => $V) {
                        // if (preg_match("/^vm/", $K)) {
                        //     $ManipulatedArr[$key]["eNlight Cloud Hosting"][] = array(
                        //         "group_name" => $V["vmname"],
                        //         "product" => self::getVMName($V['vcpu'], $V['ram'], $V['vmDiskIOPS'], $V['inst_disk'], $V['os'], $V['database']),
                        //         "unit" => $V["vmqty"] . " NO",
                        //         "cost" => $V["vmname"],
                        //         "mrc" => $V["vmname"],
                        //     );
                        // }
                        // if (preg_match("/^storage/", $K)) {
                        //     if (is_array($V)) {
                        //         foreach ($V as $cat => $arr) {
                        //             if (is_array($arr)) {
                        //                 $storageInts = array();
                        //                 $storageArray = TblProductList::where("sec_category", $cat)->get()->toArray();
                        //                 foreach ($storageArray as $P => $C) {
                        //                     $storageInts[$C['prod_int']] = $C['product_name'];
                        //                 }
                        //                 foreach ($storageInts as $ProdInt => $ProdName) {
                        //                     if (isset($arr[$ProdInt . "_check"])) {
                        //                         $ManipulatedArr[$key]["Storage and Backup Services"][] = array(
                        //                             "group_name" => ucwords(preg_replace("/_/", " ", $cat)),
                        //                             "product" => TblProductList::getProductName($ProdInt),
                        //                             "unit" => $arr[$ProdInt . "_qty"] . " " . $arr[$ProdInt . "_unit"],
                        //                             "cost" => '',
                        //                             "mrc" => '',
                        //                         );
                        //                     }
                        //                 }
                        //             }
                        //         }
                        //     }
                        // }
                        // if (preg_match("/^network/", $K)) {
                        //     if(!empty($V["bandwidth_qty"])){
                        //         $ManipulatedArr[$key]["Network"][] = array(
                        //             "group_name" => "Services",
                        //             "product" => $V["bandwidth_select"],
                        //             "unit" => $V["bandwidth_qty"] . " NO" ,
                        //             "cost" => '',
                        //             "mrc" => '',
                        //         );
                        //     }
                        //     if(!empty($V["lb_qty"])){
                        //         $ManipulatedArr[$key]["Network"][] = array(
                        //             "group_name" => "Services",
                        //             "product" => $V["lb_select"],
                        //             "unit" => $V["lb_qty"] . " NO" ,
                        //             "cost" => '',
                        //             "mrc" => '',
                        //         );
                        //     }
                        //     if(!empty($V["ccpt_qty"])){
                        //         $ManipulatedArr[$key]["Network"][] = array(
                        //             "group_name" => "Services",
                        //             "product" => "Cross Connect & Port Termination",
                        //             "unit" => $V["ccpt_qty"] . " NO" ,
                        //             "cost" => '',
                        //             "mrc" => '',
                        //         );
                        //     }
                        //     if(isset($V["ssl_vpn_check"])){
                        //         $ManipulatedArr[$key]["Network"][] = array(
                        //             "group_name" => "Services",
                        //             "product" => "SSL VPN",
                        //             "unit" => $V["ssl_vpn_qty"] . " NO" ,
                        //             "cost" => '',
                        //             "mrc" => '',
                        //         );
                        //     }
                        //     if(!empty($V["ipsec_vpn_check"])){
                        //         $ManipulatedArr[$key]["Network"][] = array(
                        //             "group_name" => "Services",
                        //             "product" => $V["ipsec_vpn_check"],
                        //             "unit" => $V["bandwidth_qty"] . " NO" ,
                        //             "cost" => '',
                        //             "mrc" => '',
                        //         );
                        //     }
                        // }
                        if (preg_match("/^security/", $K)) {
                            $securityInts = array();
                            $securityArray = TblProductList::where("primary_category", "security")->get()->toArray();
                            foreach ($securityArray as $P => $C) {
                                $securityInts[$C['sec_category']] = $C['default_name'];
                            }

                            foreach ($securityInts as $Category => $DefaultName) {
                                if (isset($V[$Category . "_check"])) {
                                    $ManipulatedArr[$key]["Security"][] = array(
                                        "group_name" => "Services",
                                        "product" => $DefaultName,
                                        "unit" => $V[$Category . "_qty"] . " NO",
                                        "cost" => '',
                                        "mrc" => '',
                                    );
                                }
                            }

                            // $ManipulatedArr[$key]["Security"][]= $securityInts;
                        }
                    }
                }
            }
        }
        return $ManipulatedArr;
    }

    private static function getVMName($cpu, $ram, $diskIops, $disk, $os, $db)
    {
        $name = "vCores : " . $cpu .
            " | RAM "   . $ram .
            " GB | Disk - " . preg_replace("/Object Storage|IOPS per GB| /", '', TblProductList::getProductName($diskIops)) .
            " IOPS - " . $disk .
            " GB | OS : " . TblProductList::getProductName($os) .
            " | DB : " . TblProductList::getProductName($db);

        return $name;
    }
}
