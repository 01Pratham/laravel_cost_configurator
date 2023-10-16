@extends('layouts.main')

@section('content-wrapper')
  <section class="except content" style="margin-top: 2.5%;">
      <div class="except container-fluid">
          <!-- Small boxes (Stat box) -->
          <div class="except row">
              <div class="except col-lg-3 col-6">
                  <!-- small box -->
                  <div class="except small-box bg-info" onclick="location.href = 'RateCard'">
                      <div class="except inner">
                          <h3 class="text-info">.</h3>

                          <p class="except">Rate Cards</p>
                      </div>
                      <div class="except icon">
                          <i class="fa fa-tachometer-alt"></i>
                      </div>
                      <a href="RateCard" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
              </div>
              <!-- ./col -->
              <div class="except col-lg-3 col-6">
                  <!-- small box -->
                  <div class="except small-box bg-success" onclick="location.href = 'SavedQuotation'">
                      <div class="except inner">
                          <h3 class="text-success">.</h3>
                          <p class="except">Saved Quotation</p>
                      </div>
                      <div class="except icon">
                          <i class="fa fa-folder-open "></i>
                      </div>
                      <a href="SavedQuotation" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
              </div>
              <!-- ./col -->
              <div class="except col-lg-3 col-6">
                  <!-- small box -->
                  <div class="except small-box bg-secondary" onclick="location.href = 'CreateNew'">
                      <div class="except inner">
                          <h3 class="text-secondary">.</h3>
                          <p class="except">Create New</p>
                      </div>
                      <div class="except icon">
                          <i class="fas fa-cogs"></i>
                      </div>
                      <a href="CreateNew" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
              </div>
              <!-- ./col -->
              <div class="except col-lg-3 col-6">
                  <!-- small box -->
                  <div class="except small-box bg-danger" onclick="location.href = 'TeamUsers'">
                      <div class="except inner">
                          <h3 class = "text-danger">.</h3>
                          <p class="except">Users </p>
                      </div>
                      <div class="except icon">
                          <i class="fas fa-users"></i>
                      </div>
                      <a href="TeamUsers" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
              </div>
          </div>
      </div>
  </section>
@endsection
