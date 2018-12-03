@extends('website.layout') 
@section('title','Maluku Paradise') 
@section('content')
<div class="container">
    @include('website.layout.header')
    <!-- Page Features -->
    <div class="row text-center">
    
        <div class="col-lg-6 col-md-6 mb-4">
            <div class="card">
                <img class="card-img-top img-card-change text-center" src="{{base_url('assets/website/images/maluku_tengah.png')}}" alt="">
                <div class="card-body">
                    <h4 class="card-title">Maluku Tengah</h4>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
            </div>
        </div>
    
        <div class="col-lg-6 col-md-6 mb-4">
            <div class="card">
                <img class="card-img-top img-card-change" src="{{base_url('assets/website/images/maluku_barat_daya.png')}}" alt="">
                <div class="card-body">
                    <h4 class="card-title">Maluku Barat Daya</h4>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
            </div>
        </div>
    
        <div class="col-lg-6 col-md-6 mb-4">
            <div class="card">
                <img class="card-img-top img-card-change" src="{{base_url('assets/website/images/maluku_utara.png')}}" alt="">
                <div class="card-body">
                    <h4 class="card-title">Maluku Utara</h4>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
            </div>
        </div>
    
        <div class="col-lg-6 col-md-6 mb-4">
            <div class="card">
                <img class="card-img-top img-card-change" src="{{base_url('assets/website/images/maluku_tenggara_barat.png')}}" alt="">
                <div class="card-body">
                    <h4 class="card-title">Maluku Tenggara Barat</h4>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection