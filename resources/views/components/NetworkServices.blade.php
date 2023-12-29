<div class="contain-btn btn-link border-bottom">
    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type="button" role="button"
        aria-expanded="true" aria-controls="network_collapse_{{ $Id }}">
        <i class="fa fa-network-wired mr-2"></i>Network Services :
    </button>
</div>
<div class="collapse py-1 ml-3 show" id="network_collapse_{{ $Id }}">
    <div class="row">
        <div class="form-group col-md-3">
            <select name="{{ $Name . '[network][bandwidth_select]' }}" id="bandwidthType_{{ $Id }}"
                class="border-0 small" style="width: 100%;">
                {{-- <option value="Speed Based Internet Bandwidth">Speed Based Internet Bandwidth</option>
                <option value="Volume Based Internet Bandwidth">Volume Based Internet Bandwidth</option> --}}
                @foreach ($Prods['bandwidth'] as $key => $val)
                    @php
                        if ($key == 'default') {
                            continue;
                        }
                    @endphp
                    <option value="{{ $val["prod_int"] }}">{{ $val["product_name"] }}</option>
                @endforeach
            </select>
            <!-- <input type="number" min=0 name="{{ $Name . '[network][_check]' }}" id="bandwidth_{{ $Id }}" class="form-control my-1" placeholder="Mbps" value=""> -->
            <div class="input-group">
                <input type="number" min=0 name="{{ $Name . '[network][bandwidth_qty]' }}"
                    id="bandwidth_{{ $Id }}" class="form-control my-1" placeholder="" value=""
                    aria-describedby="inputGroupPrepend">
                <span class="input-group-text py-0 form-control my-1 col-3 bg-light"
                    id="BandwidthUnit_{{ $Id }}">Mbps</span>
            </div>
        </div>
        <div class="form-group col-md-3">
            <select name="{{ $Name . '[network][lb_select]' }}" id="lb_{{ $Id }}" class="border-0 small"
                style="width: 100%;">
                <option value="">Select Load Balancer</option>
                @foreach ($Prods['lb'] as $key => $val)
                    @php
                        if ($key == 'default') {
                            continue;
                        }
                    @endphp
                    <option value="{{ $val['prod_int'] }}">{{ $val['product_name'] }}</option>
                @endforeach
            </select>
            <input type="number" min=0 name="{{ $Name . '[network][lb_qty]' }}" id="lbqty_{{ $Id }}"
                class="form-control my-1" placeholder="Quantity" value="">
        </div>
        <div class="form-group col-md-3">
            <h6><small>Cross Connect and Port Termination</small></h6>
            <input type="number" min=0 name="{{ $Name . '[network][ccpt_qty]' }}" id="ccptqty_{{ $Id }}"
                class="form-control" placeholder="Quantity" value="">
        </div>
        <div class="form-group col-md-3 vpn">
            <h6><small>VPN :</small></h6>
            <div class="row">
                <div class="form-switch form-group form-check col-md-6">
                    <label class="form-check-label h6" for="ssl_vpn"> SSL VPN : </label>
                    <input class="form-check-input check ml-1" role="switch" type="checkbox"
                        id="ssl_vpn_{{ $Id }}" name="{{ $Name . '[network][ssl_vpn_check]' }}">
                    <input type="number" min=0 name="{{ $Name . '[network][ssl_vpn_qty]' }}" class="hide form-control"
                        placeholder="Quantity" value="" id="sslvpnqty_{{ $Id }}">
                </div>
                <div class="form-switch form-group form-check col-md-6">
                    <label class="form-check-label h6" for="ipsec_vpn">IPSEC VPN : </label>
                    <input class="form-check-input check ml-1" role="switch" type="checkbox"
                        id="ipsec_vpn_{{ $Id }}" name="{{ $Name . '[network][ipsec_vpn_check]' }}">
                    <input type="number" min=0 name="{{ $Name . '[network][ipsec_vpn_qty]' }}"
                        class="hide form-control" placeholder="Quantity" value=""
                        id="ipsecvpnqty_{{ $Id }}">
                </div>
            </div>
        </div>
        {{-- <div class="form-group col-md-3 replink">
            <h6><small>Replication Link</small></h6>
            <!-- <input type="number" min=0 name="{{ $Name . '[network][_check]' }}" id="rep_link_{{ $Id }}" class="form-control" placeholder="Quantity" value=""> -->
            <div class="input-group">
                <input type="number" min=0 name="{{ $Name . '[network][_check]' }}"
                    id="rep_link_qty_{{ $Id }}" class="form-control my-1" placeholder="" value=""
                    aria-describedby="inputGroupPrepend">
                <span class="input-group-text py-0 form-control my-1 col-3 bg-light"
                    id="rep_linkUnit_{{ $Id }}">Mbps</span>
            </div>
        </div> --}}
    </div>
</div>


{{-- 
    bandwidthType[{{ $Name }}]
bandwidth[{{ $Name }}]
bandwidth[{{ $Name }}]
load_balancer[{{ $Name }}]
lbqty[{{ $Name }}]
ccptqty[{{ $Name }}]
sslvpn[{{ $Name }}]"
sslvpnqty[{{ $Name }}]
ipsec[{{ $Name }}]"
ipsecqty[{{ $Name }}]
rep_link[{{ $Name }}]
rep_link_qty[{{ $Name }}]
    --}}
