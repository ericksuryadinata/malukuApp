<?php

/**
 * Welcome to Luthier-CI!
 *
 * This is your main route file. Put all your HTTP-Based routes here using the static
 * Route class methods
 *
 * Examples:
 *
 *    Route::get('foo', 'bar@baz');
 *      -> $route['foo']['GET'] = 'bar/baz';
 *
 *    Route::post('bar', 'baz@fobie', [ 'namespace' => 'cats' ]);
 *      -> $route['bar']['POST'] = 'cats/baz/foobie';
 *
 *    Route::get('blog/{slug}', 'blog@post');
 *      -> $route['blog/(:any)'] = 'blog/post/$1'
 */


Route::group('/', ['namespace' => 'Frontend'], function(){
    Route::get('/','HomeController@index')->name('home.index');
    Route::get('/kota/{id}/{name}/kategori','KategoriController@index')->name('kategori.index');
    Route::get('/kota/{id}/{name}/kategori/{kategori}','KategoriController@detail')->name('kategori.detail.index');
    Route::get('/peta','PetaController@index')->name('peta.index');
});

require __DIR__ . '/admin.php';

Route::set('404_override', function(){
    show_404();
});

Route::set('translate_uri_dashes',FALSE);