@extends('layouts.main')
@section('contentHeader')
    Quotation
@endsection
@section('content-wrapper')
    <div class="content Main except ">
        <div class="container-fluid except full" style="zoom : 65%">

            @foreach ($Data as $key => $arr)
                @php
                    $i = 1;
                @endphp
                <table id = "tbl_{{ $key }}" class="final-tbl table except">
                    @foreach ($arr as $group => $itemArr)
                        <tr>
                            <th class='Head except' id='sr'>A.{{ $i }}</th>
                            <th class='Head except' id='comp'>{{ $group }} Services</th>
                            <th class='Head except' id='unit'>Unit</th>
                            <th class='Head unshareable except' id='cost'>Cost/Unit</th>
                            <th class='Head unshareable except' id='mrc'>Monthly Cost</th>
                            <th class='Head unshareable except' id='disc-head'>Discount %</th>
                            <th class='Head unshareable except' id='discMrc-head'>Discounted Price</th>
                            <th class='Head unshareable except' id='otc'>OTC</th>
                        </tr>
                        @foreach ($itemArr as $j => $val)
                            <tr>
                                <td class='' >{{ $val['group_name'] }}</td>
                                <td class='final' >{{ $val['product'] }}</td>
                                <td class='qty' >{{ $val['unit'] }}</td>
                                <td class='cost unshareable' >{{ INR($val['cost']) }}</td>
                                <td class='mrc_<?= $j ?> unshareable' >{{ INR($val['mrc']) }}</td>
                                <td class='discount unshareable' ></td>
                                <td class='discountPrice unshareable' ></td>
                                <td class='unshareable' ></td>
                            </tr>
                        @endforeach
                        @php
                            $i++;
                        @endphp
                    @endforeach
                </table>
            @endforeach
        </div>
    @endsection
