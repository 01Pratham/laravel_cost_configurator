<section class="est_div align-center Main mt-2" id="est_div_{{ $Id }}">
    <div class="contain-btn btn-link shadow-sm light " id="contain-btn_{{ $Id }}">
        <input class="add-estmt btn btn-link except text-primary" type="button" role="button" title="Remove Estimate"
            id="rem-estmt_{{ $Id }}" style="z-index: 1;" value="&times;">
        <input class="add-estmt btn btn-link except text-primary" type="button" role="button" title="Add Estimate"
            id="add-estmt" style="z-index: 1;" value="&plus;">
        <script>
            $('#add-estmt').click(function() {
                add_estmt("ajax");
            })
        </script>
        <input type="checkbox" id="checkHead_{{ $Id }}" class="head-btn d-none">
        <label class="text-left text-primary pt-3" for="checkHead_{{ $Id }}"
            id="estmtHead_{{ $Id }}" style="z-index: 1;">
            <h6 class="OnInput">Your Estimate</h6>
        </label>
        <span class="float-right">
            <select name="region[{{ $Name }}]" id="region_{{ $Id }}" class="border-0 text-primary">
                @foreach ($regionArr as $key => $val)
                    <option value = "{{ $val['id'] }}"> {{ $val['region_name'] }}</option>
                @endforeach
            </select>
            <select name="EstType[{{ $Name }}]" id="EstType_{{ $Id }}"
                class="border-0 text-primary">
                <option value="DC">DC</option>
                <option value="DR">DR</option>
            </select>
            <i class="fa fa-copy except text-primary  pt-2 m-1" title="Copy Estimate"
                style="z-index: 1; cursor: pointer;" id="coptI_{{ $Id }}">
                <input class="add-estmt btn btn-link except m-0 p-0" type="button" role="button"
                    id="clone-est_{{ $Id }}" style="z-index: 5; font-size: 20px;">
            </i>
        </span>
        <script>
            $('#coptI_{{ $Id }}').click(() => {
                $('#coptI_{{ $Id }} input').click()
            })
        </script>
    </div>
    <div class="show my-1 except" id="estmt_collapse_{{ $Id }}">
        <div class="tab card card-body">
            <div class="form-row">
                <div class="form-group col-md-9">
                    <input type="text" class="form-control EstmtName" id="estmtname_{{ $Id }}"
                        placeholder="Your Estimate" name="estmtname[{{ $Name }}]" required value="">
                </div>
                <div class="col-md-3 input-group ">
                    <input type="number" min=0 class="form-control small col-8 text-sm-left"
                        id="period_{{ $Id }}" placeholder="Contract Period" min=1
                        name="period[{{ $Name }}]" required value=""
                        aria-describedby="PeriodUnit_{{ $Id }}" style="font-size:15">
                    <span class="input-group-text form-control col-4 bg-light"
                        id="PeriodUnit_{{ $Id }}">Months</span>
                </div>
            </div>
            <div id="virtual_machine_{{ $Id }}">
                <input type="hidden" name="count_of_vm[{{ $Name }}]" id="count_of_vm_{{ $Name }}"
                    value="1">
                @include('components.virtualMachine', [
                    'Id' => $Id,
                    'Name' => $Name,
                    'Prods' => $ProductArr['software'],
                    'strg' => $ProductArr['storage']['object_storage'],
                ])
            </div>
            @include('components.StorageServices', [
                'Id' => $Id,
                'Name' => $Name,
                'Prods' => $ProductArr['storage'],
            ])
            @include('components.NetworkServices', [
                'Id' => $Id,
                'Name' => $Name,
                'Prods' => $ProductArr['network'],
            ])
            @include('components.SecurityServices', [
                'Id' => $Id,
                'Name' => $Name,
                'Prods' => $ProductArr['security'],
            ])
            @include('components.ManagedServices', [
                'Id' => $Id,
                'Name' => $Name,
                'Prods' => $ProductArr['managed'],
            ])
        </div>
    </div>
</section>
