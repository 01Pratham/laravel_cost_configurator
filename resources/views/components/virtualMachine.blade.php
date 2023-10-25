<div class="contain-btn btn-link border-bottom" id='vmHead_{{ $Id }}'>
    <a class="btn btn-link text-left" id="vmHead_{{ $Id }}" data-toggle="collapse"
        href="#vm_collapse_{{ $Id }}" role="button" aria-expanded="true"
        aria-controls="vm_collapse_{{ $Id }}">
        <i class="fa fa-desktop"></i>
        <h6 class="d-inline-block ml-1">Virtual Machine : </h6>
        <h6 class="d-inline-block ml-1 OnInput"></h6>
    </a>

    <input type="button" value=" Remove " class="add-estmt btn btn-link float-right except"
        id="rem-vm_{{ $Id }}" data-toggle="button" aria-pressed="flase" autocomplete="on">

    <input type="button" value=" Add VM " class="add-estmt btn btn-link float-right except"
        id="add-vm_{{ $Name }}" data-toggle="button" aria-pressed="flase" autocomplete="on">

</div>
<div class="collapse show py-1" id="vm_collapse_{{ $Id }}">
    <h6><small>VM Name :</small></h6>
    <input type="text" class="form-control" id="vmname_{{ $Id }}" placeholder="Virtual Machine"
        name="vmname[{{ $Name }}][]" value="">
    <div class="form-row mt-2">
        <div class="form-group col-md-9 px-2">
            <h6><small>Instance :</small></h6>
            <div class="row flexComp">
                <div class="col-4 input-group">
                    <span class="input-group-text form-control col-5 bg-transparent border-right-0 text-sm"
                        id="vcpu_lbl_{{ $Id }}">vCPU </span>
                    <span
                        class="input-group-text form-control col-1 bg-transparent border-right-0 border-left-0 text-sm"
                        id="vcpu_lbl_{{ $Id }}"> : </span>
                    <input type="number" class="form-control small col-6 text-sm-left border-left-0"
                        id="vcpu_{{ $Id }}" min=0 placeholder="Quantity" value=""
                        name="vcpu[{{ $Name }}][]">
                </div>
                <div class="col-4 input-group">
                    <span class="input-group-text form-control col-5 bg-transparent border-right-0 text-sm"
                        id="ram_{{ $Id }}">vRAM </span>
                    <span
                        class="input-group-text form-control col-1 bg-transparent border-right-0 border-left-0 text-sm"
                        id="ram_{{ $Id }}"> : </span>
                    <input type="number" class="form-control small col-6 text-sm-left border-left-0"
                        id="ram_{{ $Id }}" min=0 placeholder="Quantity" value=""
                        name="ram[{{ $Name }}][]">
                </div>
                <div class="col-4 input-group">
                    <span class="input-group-text form-control col-5 p-0 bg-transparent border-0 "
                        id="inst_disk_{{ $Id }}">
                        <select name="vmDiskIOPS[{{ $Name }}][]" id="disk_{{ $Id }}"
                            class="form-control p-0 text-sm  border-right-0">
                            @foreach ($strg as $i => $str)
                                <option value="{{ $str['prod_int'] }}">{{ preg_replace("/Object Storage|IOPS per GB| /","",$str['product_name']) }} IOPS / GB</option>
                            @endforeach
                        </select>
                    </span>
                    <span
                        class="input-group-text form-control col-1 bg-transparent border-right-0 border-left-0 text-sm"
                        id="inst_disk_{{ $Id }}"> : </span>
                    <input type="number" class="form-control small col-6 text-sm-left border-left-0"
                        id="inst_disk_{{ $Id }}" min=0 placeholder="Quantity" value=""
                        name="inst_disk[{{ $Name }}][]">
                </div>
            </div>
        </div>
        <div class="form-group col-md-3 px-2">
            <h6><small>VM State :</small></h6>
            <select name="state[{{ $Name }}][]" id="state_{{ $Id }}" class="form-control">
                <option value="Standalone">Standalone</option>
                <option value="Active" class="single">Active</option>
                <option value="Passive" class="single">Passive</option>
                <option value="Active-Active" class="multiple">Active-Active</option>
                <option value="Active-Passive" class="multiple">Active-Passive</option>
            </select>
            <script>
                $('#vmqty_{{ $Id }}').on("input", function() {
                    if ($(this).val() < 2) {
                        $('#state_{{ $Id }} .multiple').attr("hidden", "true");
                    } else {
                        $('#state_{{ $Id }} .multiple').removeAttr('hidden');
                    }
                })
                if ($('#vmqty_{{ $Id }}').val() < 2) {
                    $('#state_{{ $Id }} .multiple').attr("hidden", "true");
                } else {
                    $('#state_{{ $Id }} .multiple').removeAttr('hidden');
                }
            </script>
        </div>




        <div class="form-group col-md-3 px-2">
            <h6><small>Operating System :</small></h6>
            <select name="os[{{ $Name }}][]" id="os_{{ $Id }}" class="form-control">
                <option value="" hidden>Select OS</option>
                @foreach ($Prods['os'] as $i => $arr)
                    <option value="{{ $arr['prod_int'] }}">{{ $arr['product_name'] }}</option>
                @endforeach
            </select>
            <input type="hidden" id = "osLic_{{ $Id }}">
        </div>
        <div class="form-group col-md-3 px-2">
            <h6><small>Database :</small></h6>
            <select name="database[{{ $Name }}][]" id="db_{{ $Id }}" class="form-control">
                <option value="" hidden>Select DB</option>
                <option value="NA">NA</option>
                @foreach ($Prods['db'] as $i => $arr)
                    <option value="{{ $arr['prod_int'] }}">{{ $arr['product_name'] }}</option>
                @endforeach
                <option value="Other" contenteditable="true">Other</option>
            </select>
            <input type="hidden" id = "osLic_{{ $Id }}">
        </div>
        <div class="form-group col-md-3 px-2">
            <h6><small>Quantity :</small></h6>
            <input type="number" class="form-control small" id="vmqty_{{ $Id }}" min=0
                placeholder="Quantity" value="" name="vmqty[{{ $Name }}][]">
        </div>
        <div class="form-group col-md-3 px-2">
            <h6><small>Anti-Virus : </small></h6>
            <select name="virus_type[{{ $Name }}][]" id="virus_type_{{ $Id }}"
                class="form-control">
                <option value="">Select Antivirus</option>
                @foreach ($Prods['av'] as $i => $arr)
                    <option value="{{ $arr['prod_int'] }}">{{ $arr['product_name'] }}</option>
                @endforeach
            </select>
        </div>
    </div>
</div>
