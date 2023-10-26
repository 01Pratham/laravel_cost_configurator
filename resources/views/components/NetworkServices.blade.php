<div class="contain-btn btn-link border-bottom">
    <button class="btn btn-link col-md-11 text-left" data-toggle="collapse" type="button" role="button"
        aria-expanded="true" aria-controls="network_collapse_{{ $Id }}">
        <i class="fa fa-network-wired mr-2"></i>Network Services :
    </button>
</div>
<div class="collapse py-1 ml-3 show" id="network_collapse_{{ $Id }}">
    <div class="row">
        <div class="form-group col-md-3">
            <select name="bandwidthType[{{ $Name }}]" id="bandwidthType_{{ $Id }}"
                class="border-0 small" style="width: 100%;">
                <option value="Speed Based Internet Bandwidth">Speed Based Internet Bandwidth</option>
                <option value="Volume Based Internet Bandwidth">Volume Based Internet Bandwidth</option>
            </select>
            <!-- <input type="number" min=0 name="bandwidth[{{ $Name }}]" id="bandwidth_{{ $Id }}" class="form-control my-1" placeholder="Mbps" value=""> -->
            <div class="input-group">
                <input type="number" min=0 name="bandwidth[{{ $Name }}]" id="bandwidth_{{ $Id }}"
                    class="form-control my-1" placeholder="" value="" aria-describedby="inputGroupPrepend">
                <span class="input-group-text py-0 form-control my-1 col-3 bg-light"
                    id="BandwidthUnit_{{ $Id }}">Mbps</span>
            </div>
        </div>
        <div class="form-group col-md-3">
            <select name="load_balancer[{{ $Name }}]" id="lb_{{ $Id }}" class="border-0 small"
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
            <input type="number" min=0 name="lbqty[{{ $Name }}]" id="lbqty_{{ $Id }}"
                class="form-control my-1" placeholder="Quantity" value="">
        </div>
        <div class="form-group col-md-3">
            <h6><small>Cross Connect and Port Termination</small></h6>
            <input type="number" min=0 name="ccptqty[{{ $Name }}]" id="ccptqty_{{ $Id }}"
                class="form-control" placeholder="Quantity" value="">
        </div>
        <div class="form-group col-md-3 vpn">
            <h6><small>VPN :</small></h6>
            <div class="row">
                <div class="form-switch form-group form-check col-md-6">
                    <label class="form-check-label h6" for="ssl_vpn"> SSL VPN : </label>
                    <input class="form-check-input check ml-1" role="switch" type="checkbox"
                        id="ssl_vpn_{{ $Id }}" name="sslvpn[{{ $Name }}]">
                    <input type="number" min=0 name="sslvpnqty[{{ $Name }}]" class="hide form-control"
                        placeholder="Quantity" value="" id="sslvpnqty_{{ $Id }}">
                </div>
                <div class="form-switch form-group form-check col-md-6">
                    <label class="form-check-label h6" for="ipsec_vpn">IPSEC VPN : </label>
                    <input class="form-check-input check ml-1" role="switch" type="checkbox"
                        id="ipsec_vpn_{{ $Id }}" name="ipsec[{{ $Name }}]">
                    <input type="number" min=0 name="ipsecqty[{{ $Name }}]" class="hide form-control"
                        placeholder="Quantity" value="" id="ipsecvpnqty_{{ $Id }}">
                </div>
            </div>
        </div>
        <div class="form-group col-md-3 replink">
            <h6><small>Replication Link</small></h6>
            <!-- <input type="number" min=0 name="rep_link[{{ $Name }}]" id="rep_link_{{ $Id }}" class="form-control" placeholder="Quantity" value=""> -->
            <div class="input-group">
                <input type="number" min=0 name="rep_link_qty[{{ $Name }}]"
                    id="rep_link_qty_{{ $Id }}" class="form-control my-1" placeholder="" value=""
                    aria-describedby="inputGroupPrepend">
                <span class="input-group-text py-0 form-control my-1 col-3 bg-light"
                    id="rep_linkUnit_{{ $Id }}">Mbps</span>
            </div>
        </div>
    </div>
</div>
