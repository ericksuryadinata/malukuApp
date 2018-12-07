@extends('website.layout') 
@section('title','Maluku Paradise') 
@section('content')
<div class="container-fluid">
    @include('website.layout.header')
    @include('website.layout.navbar')
    <!-- Page Features -->
    <div class="container text-center">
        <h2 class="text-center mt-2">{{ strtoupper($kabupaten->nama)}}</h2>
        <div class="row mt-3">
            <div class="col-md-4">
                <h5 class="text-left mt-2">KATEGORI</h5>
                <div class="accordion" id="tempatWisataAccordion">
                    @foreach($tempatWisata as $tw) @if ($loop->index == 0)
                    <div class="text-left card">
                        <div class="card-header" id="heading{{$loop->index}}">
                            <h5 class="mb-0">
                                <button class="btn btn-outline-primary" type="button" data-toggle="collapse" data-target="#collapse{{$loop->index}}" aria-expanded="true"
                                    aria-controls="collapse{{$loop->index}}">{{$tw->nama}}</button>
                            </h5>
                        </div>
                        <div id="collapse{{$loop->index}}" class="collapse show" aria-labelledby="heading{{$loop->index}}" data-parent="#tempatWisataAccordion">
                            <div class="card-body">
                                {!!$tw->deskripsi!!}
                            </div>
                        </div>
                    </div>
                    @else
                    <div class="text-left card">
                        <div class="text-left card-header" id="heading{{$loop->index}}">
                            <h5 class="mb-0">
                                <button class="btn btn-outline-primary collapsed" type="button" data-toggle="collapse" data-target="#collapse{{$loop->index}}"
                                    aria-expanded="true" aria-controls="collapse{{$loop->index}}">{{$tw->nama}}</button>

                            </h5>
                        </div>
                        <div id="collapse{{$loop->index}}" class="collapse" aria-labelledby="heading{{$loop->index}}" data-parent="#tempatWisataAccordion">
                            <div class="card-body">
                                <h5>Deskripsi</h5>
                                <p class="text-justify">{!!$tw->deskripsi!!}</p>
                            </div>
                        </div>
                    </div>
                    @endif @endforeach
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div id="maps"></div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection
 
@section('scripts')
<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo getenv('GMAPS_API_KEY')?>"></script>
<script type="text/javascript">
    let lokasiFromDatabase  = {!!json_encode($tempatWisata)!!};
    console.log(lokasiFromDatabase);
</script>
@endsection
 
@section('styles')
<style type="text/css">
    #maps {
        height: 500px;
        width: 100%;
    }
</style>
@endsection