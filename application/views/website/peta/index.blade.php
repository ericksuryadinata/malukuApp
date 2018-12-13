@extends('website.layout')
@section('title','Peta Maluku')
@section('content')
<div class="container-fluid">
	@include('website.layout.navbar')
	<h3 class="text-center mt-3">PETA</h3>
	<div id="maps"></div>
</div>
@stop

@section('styles')
<style type="text/css">
	#maps {
		height: 500px;
		width: 100%;
	}
</style>
@endsection

@section('scripts')
	<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo getenv('GMAPS_API_KEY')?>"></script>
	<script type="text/javascript">
		function initMap(dest, data){
	        let infowindow = new google.maps.InfoWindow();
	        let lokasiPertama = data[0].wilayah;
			console.log(lokasiPertama);
	        lokasiPertama = lokasiPertama.replace('POINT(','');
	        lokasiPertama = lokasiPertama.replace(')','');
	        lokasiPertama = lokasiPertama.split(' ');
			console.log(lokasiPertama);
	        let lokasi = {lat:parseFloat(lokasiPertama[0]), lng:parseFloat(lokasiPertama[1])};
	        
	        let map = new google.maps.Map(document.getElementById(dest),{
	            zoom:5,
	            center:lokasi,
	            draggrableCursor:'default',
	            draggingCursor:'pointer',
	            mapTypeId:google.maps.MapTypeId.ROADMAP
	        });
	
	        let koordinatFromDatabase = [];
	        let pusatKota;
	        for (let pos = 0; pos < data.length; pos++) {
	            koordinatFromDatabase.push([]);
	            pusatKota = data[pos].wilayah.replace('POINT(','');
	            pusatKota = pusatKota.replace(')','');
	            pusatKota = pusatKota.split(' ');
	
	            markerWisata = new google.maps.Marker({
	                position  : new google.maps.LatLng(parseFloat(pusatKota[0]),parseFloat(pusatKota[1])),
	                map       : map,
	            });
	
	            (function (markerWisata, pos) {  
	                google.maps.event.addListener(markerWisata, 'click', function (e) {
	                        map.setZoom(10);
	                        map.setCenter(markerWisata.getPosition());
	                });
	            })(markerWisata, pos);
	
	        }
	    }
	
	    window.onload = function (param) {
	        let lokasiFromDatabase = {!!json_encode($provinsi)!!};
			console.log(lokasiFromDatabase);
	        initMap('maps',lokasiFromDatabase);
	    }
	
	</script>
@endsection