@extends('website.layout') 
@section('title','Maluku Paradise') 
@section('content')
<div class="container-fluid">
    @include('website.layout.header')
    @include('website.layout.navbar')
    <!-- Page Features -->
    <div class="container text-center">
        <div class="row mt-3">
        @foreach($kategori as $kat)
        <div class="col-sm-12 col-md-4">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top image-holder" alt="Thumbnail [100%x225]" 
                    src="{{base_url('uploads/website/images/'.$kat->foto)}}" data-holder-rendered="true">
                <div class="card-body">
                    <p class="card-text text-center">{{ucfirst($kat->nama)}}</p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a class="btn btn-sm btn-outline-primary" href="{{route('kategori.detail.index',[ 'id' => $id, 'name' => $name, 'kategori' => $kat->nama])}}">View</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection