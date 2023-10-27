<div class="contain-btn btn-link border-bottom">
    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type="button" id="strHead_{{ $Id }}"
        role="button" aria-expanded="true" aria-controls="str_collapse_{{ $Id }}">
        <i class="fa fa-hdd mr-2"></i>Storage Solutions :
    </button>
</div>
<div class="collapse show py-1 " id="str_collapse_{{ $Id }}">
    @foreach ($Prods as $type => $arr)
        @if (!preg_match('/archiv|backup|offline/', $type))
            @php
                $CategoryName = preg_replace('/_/', ' ', $type);
                $new_name = ucwords($CategoryName);
                $last = '';
            @endphp

            <div class="mx-3">
                <h6><small>{{ $new_name }} :</small></h6>
            </div>
            <div class='row'>
                @foreach ($arr as $key => $product)
                    @php
                        if ($key == 'default') {
                            continue;
                        }
                    @endphp
                    @php
                        $IopsUnit = preg_replace("/$new_name|IOPS per GB| /", '', $product['product_name']);
                    @endphp
                    @if (!preg_match("/(^$new_name.$last)/", $product['product_name']))
                        <div class="form-switch form-group form-check col-md-3">
                            <label style='cursor:pointer' class='h6'>
                                <span class="lblIops" id="{{ $IopsUnit }}">{{ $IopsUnit }}</span> IOPS /
                            </label>
                            <select name='{{ $Name . '[storage][' . $type . '][' . $product['prod_int'] . '_unit]' }}'
                                id='{{ $product['prod_int'] . '_unit_' . $Id }}' class='strg-select'>
                                <option value='GB'> GB </option>
                                <option value='TB'>TB</option>
                            </select>
                            <input type='checkbox' class='iops-check check ml-auto'
                                id="{{ $product['prod_int'] . '_check_' . $Id }}"
                                name="{{ $Name . '[storage][' . $type . '][' . $product['prod_int'] . '_check]' }}">
                            <input type='Number' step="0.1" min=0
                                name='{{ $Name . '[storage][' . $type . '][' . $product['prod_int'] . '_qty]' }}'
                                id='{{ $product['prod_int'] . '_qty_' . $Id }}' class="strg hide form-control" min=0
                                placeholder="Quantity" value="">
                        </div>
                    @endif
                    @php
                        $last = $IopsUnit;
                    @endphp
                @endforeach
            </div>
        @endif
    @endforeach
</div>



{{-- {{/* $product['prod_int'] . '_unit[' . $Name . ']' */}}  --}}
{{-- {{ $product['prod_int'] . '[' . $Name . ']' }} --}}
{{-- {{ $product['prod_int'] . '_qty[' . $Name . ']' }} --}}