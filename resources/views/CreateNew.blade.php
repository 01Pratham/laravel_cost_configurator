@extends('layouts.main')

@section('contentHeader')
    Create New
@endsection

@section('content-wrapper')
    <div class="except container mt-2">
        <div class="Errors except"></div>
        <section id="create_Main" class="light rounded">
            <form class="row px-3 p-3 g-2 py-4" method="POST" action="{{ route('Estimate') }}">
                @csrf
                <div class="except px-2 col-md-6">
                    <label for="pot_id" class="form-label">
                        <i class="fa fa-info-circle px-2  " title="Enter 4 Chracters only."></i>
                        POT ID :
                    </label>
                    <input type="number" class="form-control" id="pot_id" value="" min="1000" max='99999'
                        name="pot_id" placeholder="Enter POT ID Here"
                        style="border: none; border-bottom: 1px solid ; border-radius:0;">
                    @error('pot_id')
                        <span class="text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="except px-2 col-md-6 ">
                    <label for="project_name" class="form-label">Project Name : </label>
                    <input type="Text" class="form-control" id="project_name" value="" name="project_name"
                        placeholder="Enter Project Name Here"
                        style="border: none; border-bottom: 1px solid ; border-radius:0;">
                    @error('project_name')
                        <span class="text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="except px-2 col-md-6  py-4">
                    <label for="product_list" class="form-label">Price List</label>
                    <select class="form-control" name="product_list" id="product_list"
                        style="border: none; border-bottom: 1px solid ; border-radius:0;">
                        @foreach ($Data['rateCard'] as $index => $val)
                            <option value="{{ $val['id'] }}">{{ $val['rate_card_name'] }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="except px-2 col-md-6 py-4">
                    <label for="type_est" class="form-label">Quotation Type</label>
                    <select class="form-control" name="quot_type" id="type_est"
                        style="border: none; border-bottom: 1px solid ; border-radius:0;">
                        @foreach ($Data['quotType'] as $index => $val)
                            <option value="{{ $val['id'] }}">{{ $val['template_name'] }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="except px-2 col-12 d-flex justify-content-center">
                    <button type="submit" role='button' id="Next-Btn" class="Next-Btn">Next</button>
                </div>
            </form>
        </section>
    </div>

    @php
        print_r($errors->toArray());
    @endphp

    <script>
        $('.nav-link').removeClass("active");
        $('#CreateNew').addClass("active");
    </script>
@endsection
