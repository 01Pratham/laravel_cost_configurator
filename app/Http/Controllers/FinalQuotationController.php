<?php

namespace App\Http\Controllers;

use App\Models\TblProductList;
use App\Models\TblRateCardPrices;
use Exception;
use Illuminate\Http\Request;
use Symfony\Component\Routing\Exception\RouteNotFoundException;

class FinalQuotationController extends Controller
{
    public function index(Request $request)
    {
        // print_r(self::ManipulateRes($request->all()));
        // // print_r($request->all());
        $data = self::ManipulateRes($request->all());
        return view("finalQuotation", [
            "Data" =>$data
        ]);
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
                                "cost" => ($VMCost),
                                "mrc" => $V["vmqty"] * $VMCost,
                            );
                            $VMQTY[] = $V["vmqty"];
                            $vmQTY[$key][$V['os']][] = $V["vmqty"];
                            $vmDisk[$key][$V['database']][] = $V["inst_disk"] * $V["vmqty"];

                            $osLic[$key][$V['os']][] = self::CalculateOsLic([
                                "int"  => $V['os'],
                                "core" => $V['vcpu'],
                                "qty"  => $V['vmqty'],
                            ]);
                            $osLic[$key][$V['os']]["region"] =   $val['region'];
                            $osLic[$key][$V['os']]["List"] =   $data['product_list'];

                            $dbLic[$key][$V['database']][] = self::CalculateDbLic([
                                "int"  => $V['database'],
                                "core" => $V['vcpu'],
                                "qty"  => $V['vmqty'],
                            ]);
                            $dbLic[$key][$V['database']]["region"] =   $val['region'];
                            $dbLic[$key][$V['database']]["List"] =   $data['product_list'];
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
                                                $cost = ($arr[$ProdInt . "_unit"] == "GB") ? $cost : $cost * 1024;
                                                
                                                $ManipulatedArr[$key]["Storage and Backup"][] = array(
                                                    "group_name" => ucwords(preg_replace("/_/", " ", $cat)),
                                                    "product" => TblProductList::getProductInfo($ProdInt),
                                                    "unit" => $arr[$ProdInt . "_qty"] . " " . $arr[$ProdInt . "_unit"],
                                                    "cost" => $cost,
                                                    "mrc" =>  $arr[$ProdInt . "_qty"]  * $cost,
                                                );
                                                $storage[] =  ($arr[$ProdInt . "_unit"] == "GB") ? $arr[$ProdInt . "_qty"] :  $arr[$ProdInt . "_qty"] * 1000;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        isset($storage)? $storage_mgmt = array_sum($storage) / 1000 : ''; 
                        if (preg_match("/^network/", $K)) {
                            if (!empty($V["bandwidth_qty"])) {
                                $cost = TblRateCardPrices::getProductPrices($V["bandwidth_select"], $val['region'], $data['product_list']);
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => TblProductList::getProductInfo($V["bandwidth_select"]),
                                    "unit" => $V["bandwidth_qty"] . " NO",
                                    "cost" => $cost,
                                    "mrc" =>  $V["bandwidth_qty"] * $cost,
                                );
                                $bandwidth = 1;
                            }
                            if (!empty($V["lb_qty"])) {
                                $cost = TblRateCardPrices::getProductPrices($V["lb_select"], $val['region'], $data['product_list']);
                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => TblProductList::getProductInfo($V["lb_select"]),
                                    "unit" => $V["lb_qty"] . " NO",
                                    "cost" => $cost,
                                    "mrc" => $V["lb_qty"] * $cost,
                                );
                                $lb_mgmt = $V["lb_qty"];
                            }
                            if (!empty($V["ccpt_qty"])) {
                                $cost = TblRateCardPrices::getProductPrices("cross_connect", $val['region'], $data['product_list']);

                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => "Cross Connect & Port Termination",
                                    "unit" => $V["ccpt_qty"] . " NO",
                                    "cost" => $cost,
                                    "mrc" => $V["ccpt_qty"] * $cost,
                                );
                                $ccpt = $V["ccpt_qty"];
                            }
                            if (isset($V["ssl_vpn_check"])) {
                                $cost = TblRateCardPrices::getProductPrices("ssl_vpn", $val['region'], $data['product_list']);

                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name" => "Services",
                                    "product" => "SSL VPN",
                                    "unit" => $V["ssl_vpn_qty"] . " NO",
                                    "cost" => $cost,
                                    "mrc" => $V["ssl_vpn_qty"] * $cost,
                                );
                            }
                            if (!empty($V["ipsec_vpn_check"])) {
                                $cost = TblRateCardPrices::getProductPrices("ipsec_vpn", $val['region'], $data['product_list']);

                                $ManipulatedArr[$key]["Network"][] = array(
                                    "group_name"    => "Services",
                                    "product"       => "IPSEC VPN",
                                    "unit"          => $V["ipsec_vpn_qty"] . " NO",
                                    "cost"          => $cost,
                                    "mrc"           => $V["ipsec_vpn_qty"] * $cost,
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
                                        "cost"          => ($cost),
                                        "mrc"           => self::getSecQty($Category, $V) * $cost,
                                    );

                                    if (preg_match("/fw/", $Category)) {
                                        $firewall_mgmt[$Category] = self::getSecQty($Category, $V);
                                    } elseif (preg_match("/waf/", $Category)) {
                                        $waf_mgmt = self::getSecQty($Category, $V);
                                    }
                                }
                            }
                        }
                        $emagic = array(
                            "lb"       => $lb_mgmt ?? 0,
                            "firewall" => isset($firewall_mgmt) ? array_sum($firewall_mgmt) : 0,
                            "waf"      => isset($waf_mgmt) ? $waf_mgmt : 0,
                            "vm"       => isset($VMQTY) ? array_sum($VMQTY) : 0,
                            "ccpt"     => isset($ccpt) ? $ccpt : 0,
                            "bandwidth" => isset($bandwidth) ? $bandwidth : 0
                        );
                        if (preg_match("/^managed/", $K)) {
                            $managedInts = array();
                            $managedArray = TblProductList::where("primary_category", "managed")->get()->toArray();
                            foreach ($managedArray as $P => $C) {
                                $managedInts[$C['sec_category']] = $C['default_name'];
                                $managedNames[$C['prod_int']]    = $C['product_name'];
                                $managedCat[$C['sec_category']]    = $C['prod_int'];
                            }
                            foreach ($managedInts as $Category => $DefaultName) {
                                if (isset($V[$Category]) && preg_match("/^os_|^db_/", $Category)) {
                                    $ManipulatedArr[$key]["Managed"]["os"] = array();
                                    $ManipulatedArr[$key]["Managed"]["db"] = array();
                                } elseif (isset($V[$Category])) {
                                    $cost = TblRateCardPrices::getProductPrices($managedCat[$Category], $val['region'], $data['product_list']);
                                    $qty = $$Category ?? 0;
                                    $ManipulatedArr[$key]["Managed"][] = array(
                                        "group_name"    => "Services",
                                        "product"       => $DefaultName,
                                        "unit"          => round(is_array($qty) ? array_sum($qty) : $qty) . " Job",
                                        "cost"          => $cost,
                                        "mrc"           => is_array($qty) ? array_sum($qty) * $cost : $qty * $cost,
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
                    $cost = TblRateCardPrices::getProductPrices($int, $val['region'], $data['product_list']);
                    $ManipulatedArr[$key]["Software Licences"][] = array(
                        "group_name" => "Operating System",
                        "product"    => TblProductList::getProductInfo($int),
                        "unit"       => array_sum($osLic[$key][$int]),
                        "cost"       => $cost,
                        "mrc"        => array_sum($osLic[$key][$int]) * $cost,
                    );
                    foreach ($managedNames as $Int => $Name) {
                        $osOem = explode("_", $int);
                        if (preg_match("/{$osOem[0]}_/", $Int) && isset($ManipulatedArr[$key]["Managed"]["os"])) {
                            $cost = TblRateCardPrices::getProductPrices($Int, $val['region'], $data['product_list']);
                            $ManipulatedArr[$key]["Managed"][] = array(
                                "group_name"    => "Services",
                                "product"       => $Name,
                                "unit"          => array_sum($vmQTY[$key][$int]) . " Job",
                                "cost"          => $cost,
                                "mrc"           => array_sum($vmQTY[$key][$int]) * $cost,
                            );
                        }
                    }
                }
            }
        }
        if (!empty($dbLic)) {
            foreach ($dbLic as $key => $arr) {
                foreach ($arr as $int => $lic) {
                    $cost = TblRateCardPrices::getProductPrices($int, $val['region'], $data['product_list']);
                    $ManipulatedArr[$key]["Software Licences"][] = array(
                        "group_name" => "Database",
                        "product"    => TblProductList::getProductInfo($int),
                        "unit"       => array_sum($dbLic[$key][$int]) ?? 0,
                        "cost"       => $cost,
                        "mrc"        => $cost * (array_sum($dbLic[$key][$int]) ?? 0),
                    );
                    foreach ($managedNames as $Int => $Name) {
                        $dbOem = explode("_", $int);
                        if (preg_match("/{$dbOem[0]}_/", $Int) && isset($ManipulatedArr[$key]["Managed"]["db"])) {
                            $cost = TblRateCardPrices::getProductPrices($Int, $val['region'], $data['product_list']);
                            $qty = (array_sum($vmDisk[$key][$int]) / 100) >= 1 ? (array_sum($vmDisk[$key][$int]) / 100) : 1;
                            $ManipulatedArr[$key]["Managed"][] = array(
                                "group_name"    => "Services",
                                "product"       => $Name,
                                "unit"          => $qty . " Job",
                                "cost"          => $cost,
                                "mrc"           => $qty * $cost,
                            );
                        }
                    }

                    unset($ManipulatedArr[$key]["Managed"]["db"]);
                    unset($ManipulatedArr[$key]["Managed"]["os"]);
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
            try {
                $cost = [
                    "cpu" => $array['cpu'] * TblRateCardPrices::getProductPrices("vcpu_static", $array['region'], $array['prod_list']),
                    "ram" => $array['ram'] * TblRateCardPrices::getProductPrices("vram_static", $array['region'], $array['prod_list']),
                    "disk" => $array['disk'] * TblRateCardPrices::getProductPrices($array['diskIops'], $array['region'], $array['prod_list']),
                ];
                return array_sum($cost);
            } catch (Exception $e) {
                return 0;
            }
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

    private static function getMgmtQty($int)
    {
        global $key;
        if (preg_match("/storage/", $int)) {
            global $storage;
            return $key;
        }
    }
}
