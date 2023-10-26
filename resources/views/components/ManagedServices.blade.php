<div class="contain-btn btn-link border-bottom">
    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type="button" role="button"
        aria-expanded="true" aria-controls="managed_collapse">
        <i class="fa fa-tasks mr-2"></i>Managed Services :
    </button>
</div>
<div class="collapse py-1 ml-3 show" id="managed_collapse">
    <div class="row">
        @foreach ($Prods as $key=>$arr)
            <div class="form-group col-md-4 row my-3">
                <select id="{{ $key }}_select_{{ $Id }}" class="border-0 " style="width: 70%;">
                    <option value="">{{ $arr['default'] }}</option>
                </select>
                <input type="checkbox" name="{{ $key }}_check[{{ $Name }}]" id="{{ $key }}_check_{{ $Id }}" class="check">
            </div>
        @endforeach
    </div>
</div>



