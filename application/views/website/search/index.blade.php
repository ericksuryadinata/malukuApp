@extends('website.layout') 
@section('title','Maluku Paradise') 
@section('content')
<div class="container-fluid">
    @include('website.layout.header')
    @include('website.layout.navbar')
    <!-- Page Features -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 text-center">
                <form>
                    <div class="form-group">
                        <label for="carilokasiwisata">Cari Lokasi Wisata</label>
                        <input class="form-control" type="text" name="cari" id="cari" placeholder="Cari lokasi wisata">
                    </div>
                    <button class="btn btn-primary" type="button">Cari !</button>
                </form>
            </div>
        </div>
        <div class="col-md-12 mt-3">
            <div id="maps"></div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection

@section('scripts')
<script type="text/javascript" src="{{base_url('assets/website/ez/jquery.easy-autocomplete.min.js')}}"></script>
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

        let lokasiWisata;
        let deskripsi = '';
        for (let pos = 0; pos < data.length; pos++) {
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

    function drawMarker(dest,data){
        let infowindow = new google.maps.InfoWindow();
        let lokasiPertama = data.kordinat;
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
        let deskripsi = '<table><tr><img src="{{base_url()}}uploads/website/images/'+data.gambar+'" height="100" width="100"></tr><tr><td>'+data.deskripsi+'</td></tr></table>';
        infowindow.setContent(deskripsi);
        infowindow.open(map, markerWisata);

        google.maps.event.addListener(infowindow,'closeclick',function(e){
            map.setZoom(5);
        })

    }
    let dataSelected = {};

    let options = {
        url:function(phrase){
            return '{{route('search.tempat')}}'+'/?phrase='+phrase;
        },
        list:{
            onClickEvent:function(){
                dataSelected = $("#cari").getSelectedItemData();
                drawMarker('maps',dataSelected);
            }
        },
        getValue: "nama",
        requestDelay: 400
    };
    $("#cari").easyAutocomplete(options);
    console.log(dataSelected);
   
    window.onload = function (param) {
        let lokasiFromDatabase = {!!json_encode($tempatWisata)!!};
        initMap('maps',lokasiFromDatabase);
    }

    
</script>
@endsection
 
@section('styles')
<link rel="stylesheet" type="text/css" href="{{base_url('assets/website/ez/easy-autocomplete.min.css')}}" />
<style type="text/css">
    #maps {
        height: 500px;
        width: 100%;
    }
</style>
@endsection