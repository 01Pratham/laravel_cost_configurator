@extends('layouts.main')
@section('contentHeader')
    Estimate
@endsection
@section('content-wrapper')

@php 
@endphp

    <div class="content Main">
        <div class="container mt-2 Main">

            <form action="{{ route('finalQuotation') }}" class="form1" id="form1" method="post">
                @csrf
                <input type="hidden" name="quot_type" value="{{ $Data['quot_type'] }}">
                <input type="hidden" name="product_list" value="{{ $Data['product_list'] }}">
                <input type="hidden" name="pot_id" value="{{ $Data['pot_id'] }}">
                <input type="hidden" name="project_name" value="{{ $Data['project_name'] }}">

                <div class="mytabs my-2 accent-blue" id="myTab">

                    <input type="hidden" name="count_of_est" id="count_of_est" value=1>
                    @include(
                        'layouts.'.$QuotName,
                        [
                            "Id" => 1, 
                            "Name" => 1,
                            "regionArr" =>$regionArr
                        ]
                    )
                </div>
                <div class="light py-2 rounded d-flex justify-content-center my-4">
                    <button class="Next-Btn" formtarget="_blank">
                        Proceed 
                        <i class="px-2 py-2  fa fa-angle-double-right"></i>
                    </button>
                </div>
            </form>
            <div class="except fab-container d-flex align-items-end flex-column">
                <div class="except fab shadow fab-content">
                    <i class="except icons fa fa-ellipsis-v text-white" title="Actions"></i>
                </div>
                <div class="except sub-button shadow  btn btn-outline-success action" id="save">
                    <i class="except icons fa fa-save"></i>
                </div>
                <div class="except sub-button shadow btn btn-outline-info action" title="Update" id="update">
                    <i class="except icons fa fa-files-o" title="Update"></i>
                </div>
            </div>
        </div>
    </div>
@endsection
