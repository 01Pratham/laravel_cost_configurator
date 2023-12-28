<?php

namespace App\Http\Controllers;

use App\Models\TblProductList;
use App\Models\TblRateCardPrices;
use Exception;
use Illuminate\Http\Request;

class FinalQuotationController extends Controller
{
    public function index(Request $request)
    {
        echo "<pre>";
        print_r(self::ManipulateRes($request->all()));
        // print_r($request->all());
        echo "</pre>";
    }

    private static function ManipulateRes($data)
    {
        $ManipulatedArr = array();
        $osLic = array();
        $dbLic = array();
        foreach ($data as $key => $val) {
            if (gettype($key) == "integer") {
                if (is_array($val)) {
                    foreach ($val as $K => $V) {
                        if (preg_match("/^vm/", $K)) {
                            $VMName = self::getVm([
                                'cpu' => $V['vcpu'],
                                'ram' => $V['ram'],
                                'diskIops' => $V['vmDiskIOPS'],
                                'disk' => $V['inst_disk'],
                                'os' => $V['os'],
                                'db' => $V['database']
                            ], "Name");


                            $VMCost = self::getVm([
                                'cpu' => $V['vcpu'],
                                'ram' => $V['ram'],
                                'diskIops' => $V['vmDiskIOPS'],
                                'disk' => $V['inst_disk'],
                                'region' => $val['region'],
                                'prod_list' => $data['product_list']
                            ], "Price");


                            $ManipulatedArr[$key]["eNlight Cloud Hosting"][] = array(
                                "group_name" => $V["vmname"],
                                "product" => $VMName,
                                "unit" => $V["vmqty"] . " NO",
                                "cost" => $VMCost,
                                "mrc" => $V["vmqty"] * $VMCost,
                            );
                            $osLic[$key][$V['os']][] = self::CalculateOsLic([
                                "int"  => $V['os'],
                                "core" => $V['vcpu'],
                                "qty"  => $V['vmqty'],
                            ]);
                            $osLic[$key][$V['os']]["region"]=   $val['region'];
                            $osLic[$key][$V['os']]["List"]=   $data['product_list'];
                            
                            $dbLic[$key][$V['database']][] = self::CalculateDbLic([
                                "int"  => $V['database'],
                                "core" => $V['vcpu'],
                                "qty"  => $V['vmqty'],
                            ]);
                            $dbLic[$key][$V['database']]["region"]=   $val['region'];
                            $dbLic[$key][$V['database']]["List"]=   $data['product_list'];
                        }

                        if (preg_match("/^storage/", $K)) {
                            if (is_array($V)) {
                                foreach ($V as $cat => $arr) {
                                    if (is_array($arr)) {
                                        $storageInts = array();
                                        $storageArray = TblProductList::where("sec_category", $cat)->get()->toArray();
                                        foreach ($storageArray as $P => $C) {
                                            $storageInts[$C['prod_int']] = $C['product_name'];
                                        }
                                        foreach ($storageInts as $ProdInt => $ProdName) {

                                            if (isset($arr[$ProdInt . "_check"])) {
                                                $cost = TblRateCardPrices::getProductPrices($ProdInt, $val['region'], $data['product_list']);
                                                $ManipulatedArr[$key]["Storage and Backup"][] = array(
                                                    "group_name" => ucwords(preg_replace("/_/", " ", $cat)),
                                                    "product" => TblProductList::getProductInfo($ProdInt),
                                                    "unit" => $arr[$ProdInt . "_qty"] . " " . $arr[$ProdInt . "_unit"],
                                                    "cost" => $cost,
                                                    "mrc" => '',
                                                );
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (preg_match("/^network/", $K)) {
                            if (!empty($V["bandwidth_qty"])) {
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => $V["bandwidth_select"],
                                    "unit" => $V["bandwidth_qty"] . " NO",
                                    "cost" => '',
                                    "mrc" => '',
                                );
                            }
                            if (!empty($V["lb_qty"])) {
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => $V["lb_select"],
                                    "unit" => $V["lb_qty"] . " NO",
                                    "cost" => '',
                                    "mrc" => '',
                                );
                            }
                            if (!empty($V["ccpt_qty"])) {
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => "Cross Connect & Port Termination",
                                    "unit" => $V["ccpt_qty"] . " NO",
                                    "cost" => '',
                                    "mrc" => '',
                                );
                            }
                            if (isset($V["ssl_vpn_check"])) {
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => "SSL VPN",
                                    "unit" => $V["ssl_vpn_qty"] . " NO",
                                    "cost" => '',
                                    "mrc" => '',
                                );
                            }
                            if (!empty($V["ipsec_vpn_check"])) {
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name"    => "Services",
                                    "product"       => $V["ipsec_vpn_check"],
                                    "unit"          => $V["bandwidth_qty"] . " NO",
                                    "cost"          => '',
                                    "mrc"           => '',
                                );
                            }
                        }
                        if (preg_match("/^security/", $K)) {
                            $securityInts = array();
                            $securityArray = TblProductList::where("primary_category", "security")->get()->toArray();
                            foreach ($securityArray as $P => $C) {
                                $securityInts[$C['sec_category']] = $C['product_name'];
                            }

                            foreach ($securityInts as $Category => $DefaultName) {
                                $cost = TblRateCardPrices::getProductPrices(!empty($V[$Category . "_select"]) ? $V[$Category . "_select"] : $Category, $val['region'], $data['product_list']);
                                if (isset($V[$Category . "_check"])) {
                                    $ManipulatedArr[$key]["Security"][] = array(
                                        "group_name"    => "Services",
                                        "product"       => $DefaultName,
                                        "unit"          => self::getSecQty($Category, $V) . " NO",
                                        "cost"          => $cost,
                                        // "mrc"           => self::getSecQty($Category, $V) * $cost,
                                    );
                                }
                            }
                            // $ManipulatedArr[$key]["Security"][]= $securityInts;
                        }

                        if (preg_match("/^managed/", $K)) {
                            $managedInts = array();
                            $managedArray = TblProductList::where("primary_category", "managed")->get()->toArray();
                            foreach ($managedArray as $P => $C) {
                                $managedInts[$C['sec_category']] = $C['default_name'];
                            }

                            foreach ($managedInts as $Category => $DefaultName) {
                                if (isset($V[$Category])) {
                                    $cost = 0;
                                    // $cost = TblRateCardPrices::getProductPrices( $Category, $val['region'], $data['product_list']);
                                    $ManipulatedArr[$key]["Managed"][] = array(
                                        "group_name"    => "Services",
                                        "product"       => $DefaultName,
                                        "unit"          => " Job",
                                        "cost"          => $cost,
                                        "mrc"           => '',
                                    );
                                }
                            }
                        }
                    }
                }
            }
        }

        if (!empty($osLic)) {
            foreach ($osLic as $key => $arr) {
                foreach ($arr as $int => $lic) {
echo $lic['region'];
                    // $cost = TblRateCardPrices::getProductPrices($int, $lic['region'], $lic['List']);
                    $ManipulatedArr[$key]["Software Licences"][] = array(
                        "group_name" => "Operating System",
                        "product"    => TblProductList::getProductInfo($int),
                        "unit"       => array_sum($osLic[$key][$int]),
                        "cost"       => '',
                        // "cost"       => $cost,
                        "mrc"        => '',
                    );
                }
            }
        }
        if (!empty($dbLic)) {
            foreach ($dbLic as $key => $arr) {
                foreach ($arr as $int => $lic) {
                    $ManipulatedArr[$key]["Software Licences"][] = array(
                        "group_name" => "Database",
                        "product"    => TblProductList::getProductInfo($int),
                        "unit"       => array_sum($dbLic[$key]),
                        "cost"       => TblProductList::getProductInfo($int),
                        "mrc"        => '',
                    );
                }
            }
        }
        return $ManipulatedArr;
    }

    private static function getVm($array, $action)
    {
        global $val, $data;
        if ($action == "Name") {
            $name = "vCores : " . $array['cpu'] .
                " | RAM "   . $array['ram'] .
                " GB | Disk - " . preg_replace("/Object Storage|IOPS per GB| /", '', TblProductList::getProductInfo($array['diskIops'])) .
                " IOPS - " . $array['disk'] .
                " GB | OS : " . TblProductList::getProductInfo($array['os']) .
                " | DB : " . TblProductList::getProductInfo($array['db']);

            return $name;
        } else {
            $cost = [
                "cpu" => $array['cpu'] * TblRateCardPrices::getProductPrices("vcpu_static", $array['region'], $array['prod_list']),
                "ram" => $array['ram'] * TblRateCardPrices::getProductPrices("vram_static", $array['region'], $array['prod_list']),
                "disk" => $array['disk'] * TblRateCardPrices::getProductPrices($array['diskIops'], $array['region'], $array['prod_list']),
            ];
            return array_sum($cost);
        }
    }

    private static function CalculateOsLic($Arr)
    {
        if (preg_match("/win/", $Arr["int"])) {
            return (($Arr['core'] * $Arr['qty']) / 2);
        } else {
            return $Arr['qty'];
        }
    }
    private static function CalculateDbLic($Arr)
    {
        if ($Arr == "NA") {
            return 0;
        }
        return $Arr['qty'];
    }

    private static function getSecQty($name, $arr)
    {
        try {
            return $arr[$name . "_qty"];
        } catch (Exception  $e) {
            return 1;
        }
    }
}
