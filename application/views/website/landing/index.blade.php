@extends('website.layout') 
@section('title','Maluku Paradise') 
@section('content')
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12 col-md-6">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top image-holder" alt="Thumbnail [100%x225]" src="{{base_url('assets/website/images/tengah.png')}}"
                    data-holder-rendered="true">
                <div class="card-body">
                    <p class="card-text text-center">Maluku Tengah</p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a class="btn btn-sm btn-outline-primary" href="#">View</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top image-holder" alt="Thumbnail [100%x225]" src="{{base_url('assets/website/images/mbd.png')}}" data-holder-rendered="true">
                <div class="card-body">
                    <p class="card-text text-center">Maluku Barat Daya</p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a class="btn btn-sm btn-outline-primary" href="#">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-sm-12 col-md-6">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top image-holder" alt="Thumbnail [100%x225]" src="{{base_url('assets/website/images/utara.png')}}" data-holder-rendered="true">
                <div class="card-body">
                    <p class="card-text text-center">Maluku Utara</p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a class="btn btn-sm btn-outline-primary" href="#">View</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top image-holder" alt="Thumbnail [100%x225]" src="{{base_url('assets/website/images/mtb.png')}}" data-holder-rendered="true">
                <div class="card-body">
                    <p class="card-text text-center">Maluku Tenggara Barat</p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a class="btn btn-sm btn-outline-primary" href="#">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection