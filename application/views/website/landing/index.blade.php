@extends('website.layout') 
@section('title','Maluku Paradise') 
@section('content')
<div class="container-fluid">
    @include('website.layout.header')
    @include('website.layout.navbar')
    <!-- Page Features -->
    <div class="container text-center">
        <div class="row">
        @foreach($kota as $k)
        <div class="col-sm-12 col-md-6 mt-5">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top img-card-change text-center" src="{{base_url('uploads/website/images/'.$k->foto)}}" alt="">
                <div class="card-body">
                    <p class="card-text text-center">{{$k->nama}}</p>
                    <div class="d-flex justify-content-center align-items-center">
                        <a class="btn btn-sm btn-outline-primary" href="{{route('kategori.index',['id' => $k->id, 'name' => slug($k->nama)])}}">View</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach()
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection