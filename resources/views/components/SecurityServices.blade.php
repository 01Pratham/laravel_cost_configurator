<div class="contain-btn btn-link border-bottom">
    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type="button" role="button"
        aria-expanded="true" aria-controls="security_collapse_{{ $Id }}">
        <i class="fa fa-shield-alt mr-2"></i>Security Services :
    </button>
</div>
<div class="collapse py-1 ml-3 show" id="security_collapse_{{ $Id }}">
    <div class="row">
        @foreach ($Prods as $secCategory => $arr)
            <div class="form-group col-md-4 row my-3">
                <select name="{{ $secCategory }}_select[{{ $Name }}]"
                    id="{{ $secCategory }}_select_{{ $Id }}" class="border-0 " style="width: 70%;">
                    <option value="">{{ $arr['default'] }}</option>
                    @foreach ($arr as $key => $prod)
                        @php
                            if ($key == 'default' || $prod['product_name'] == $arr['default']) {
                                continue;
                            }
                        @endphp
                        <option value="{{ $prod['prod_int'] }}">{{ $prod['product_name'] }}</option>
                    @endforeach
                </select>
                <input type="checkbox" name="{{ $secCategory }}_check[{{ $Name }}]"
                    id="{{ $secCategory }}_check_{{ $Id }}" class="check sec-check ">
                <input type="number" min=0 placeholder="Quantity" value=""
                    name="{{ $secCategory }}_qty[{{ $Name }}]"
                    id="{{ $secCategory }}_qty_{{ $Id }}" class="hide form-control sec-qty">
            </div>
        @endforeach
    </div>
</div>
