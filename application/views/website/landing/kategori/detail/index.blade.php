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
                <h5 class="text-left mt-2">KATEGORI {{strtoupper($namaKategori)}}</h5>
                <div class="card border-primary">
                    <div class="card-header">
                        Lokasi Wisata
                    </div>
                    <div class="card-body">
                        <div class="accordion" id="tempatWisataAccordion">
                            @foreach($tempatWisata as $tw) @if ($loop->index == 0)
                            <div class="text-left card">
                                <div class="card-header" id="heading{{$loop->index}}">
                                    <h5 class="mb-0">
                                        <button onclick="drawMarker('maps',{{$loop->index}})" class="btn btn-success" type="button" data-toggle="collapse" data-target="#collapse{{$loop->index}}" aria-expanded="true"
                                            aria-controls="collapse{{$loop->index}}"><i class="fas fa-map-marker-alt"></i> {{$tw->nama}}</button>
                                    </h5>
                                </div>
                                <div id="collapse{{$loop->index}}" class="collapse show" aria-labelledby="heading{{$loop->index}}" data-parent="#tempatWisataAccordion">
                                    <div class="card-body">
                                        <h5>Deskripsi</h5>
                                        <p class="text-justify">{!!$tw->deskripsi!!}</p>
                                    </div>
                                </div>
                            </div>
                            @else
                            <div class="text-left card">
                                <div class="text-left card-header" id="heading{{$loop->index}}">
                                    <h5 class="mb-0">
                                        <button onclick="drawMarker('maps',{{$loop->index}})" class="btn btn-success collapsed" type="button" data-toggle="collapse" data-target="#collapse{{$loop->index}}" aria-expanded="true"
                                            aria-controls="collapse{{$loop->index}}"><i class="fas fa-map-marker-alt"></i> {{$tw->nama}}</button>

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
            </div>
            <div class="col-md-8 mt-3">
                <div id="maps"></div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection
 
@section('scripts')
<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo getenv('GMAPS_API_KEY')?>"></script>
<script type="text/javascript">
    function initMap(dest, data){
        let infowindow = new google.maps.InfoWindow();
        let lokasiPertama = data[0].kordinat;
        lokasiPertama = lokasiPertama.replace('POINT(','');
        lokasiPertama = lokasiPertama.replace(')','');
        lokasiPertama = lokasiPertama.split(' ');
        let lokasi = {lat:parseFloat(lokasiPertama[0]), lng:parseFloat(lokasiPertama[1])};
        
        let map = new google.maps.Map(document.getElementById(dest),{
            zoom:5,
            center:lokasi,
            draggrableCursor:'default',
            draggingCursor:'pointer',
            mapTypeId:google.maps.MapTypeId.ROADMAP
        });

        let koordinatFromDatabase = [];
        let lokasiWisata;
        let deskripsi = '';
        for (let pos = 0; pos < data.length; pos++) {
            koordinatFromDatabase.push([]);
            lokasiWisata = data[pos].kordinat.replace('POINT(','');
            lokasiWisata = lokasiWisata.replace(')','');
            lokasiWisata = lokasiWisata.split(' ');

            markerWisata = new google.maps.Marker({
                position  : new google.maps.LatLng(parseFloat(lokasiWisata[0]),parseFloat(lokasiWisata[1])),
                map       : map,
            });

            (function (markerWisata, pos) {  
                google.maps.event.addListener(markerWisata, 'click', function (e) {
                    deskripsi = '<table><tr><img src="{{base_url()}}uploads/website/images/'+data[pos].gambar+'" height="100" width="100"></tr><tr><td>'+data[pos].deskripsi+'</td></tr></table>';
                    console.log(deskripsi);
                    infowindow.setContent(deskripsi);
                    infowindow.open(map, markerWisata);
                    map.setZoom(10);
                    map.setCenter(markerWisata.getPosition());
                });
                google.maps.event.addListener(infowindow,'closeclick',function(e){
                    map.setZoom(5);
                })
            })(markerWisata, pos);

        }
    }

    function drawMarker(dest,location){
        let infowindow = new google.maps.InfoWindow();
        let lokasiFromDatabase = {!!json_encode($tempatWisata)!!};
        let lokasiPertama = lokasiFromDatabase[location].kordinat;
        lokasiPertama = lokasiPertama.replace('POINT(','');
        lokasiPertama = lokasiPertama.replace(')','');
        lokasiPertama = lokasiPertama.split(' ');
        let lokasi = {lat:parseFloat(lokasiPertama[0]),lng:parseFloat(lokasiPertama[1])};
        let map = new google.maps.Map(document.getElementById(dest),{
            zoom:10,
            center:lokasi,
            draggrableCursor:'default',
            draggingCursor:'pointer',
            mapTypeId:google.maps.MapTypeId.ROADMAP
        });
        
        markerWisata = new google.maps.Marker({
            position  : lokasi,
            map       : map,
        });
        let deskripsi = '<table><tr><img src="{{base_url()}}uploads/website/images/'+lokasiFromDatabase[location].gambar+'" height="100" width="100"></tr><tr><td>'+lokasiFromDatabase[location].deskripsi+'</td></tr></table>';
        infowindow.setContent(deskripsi);
        infowindow.open(map, markerWisata);

        google.maps.event.addListener(infowindow,'closeclick',function(e){
            map.setZoom(5);
        })


    }

    window.onload = function (param) {
        let lokasiFromDatabase = {!!json_encode($tempatWisata)!!};
        initMap('maps',lokasiFromDatabase);
    }



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