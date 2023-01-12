<?php

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/','\App\Http\Controllers\HomeController@index');
Route::get('/about','\App\Http\Controllers\HomeController@index');
Route::get('/contact','\App\Http\Controllers\HomeController@index');
Route::get('/','\App\Http\Controllers\HomeController@index');
Route::get('/','\App\Http\Controllers\HomeController@index');

Route::get('/event','\App\Http\Controllers\HomeController@event');
Route::get('/umkm','\App\Http\Controllers\HomeController@umkm');
Route::get('/galeri','\App\Http\Controllers\HomeController@galeri');
Route::get('/datadesa','\App\Http\Controllers\HomeController@data');
Route::get('/berita','\App\Http\Controllers\HomeController@news');
Route::get('/sotk','\App\Http\Controllers\HomeController@perangkat');

//login admin
Route::get('/login','\App\Http\Controllers\AuthController@login')->name('login');
Route::post('/login','\App\Http\Controllers\AuthController@authenticated');
Route::get('/logout','\App\Http\Controllers\AuthController@logout');

Route::group(['middleware'=>['auth', 'ceklevel:admin']], function(){
    //dashboard
Route::get('/dashboard','\App\Http\Controllers\DashboardController@index');

Route::resource('admin/sliders', '\App\Http\Controllers\SliderController')->middleware('auth');
Route::resource('admin/services', '\App\Http\Controllers\ServiceController')->middleware('auth');
Route::resource('admin/umkm', '\App\Http\Controllers\UmkmController')->middleware('auth');
Route::resource('admin/perangkat', '\App\Http\Controllers\PerangkatController')->middleware('auth');
Route::resource('admin/sambutan', '\App\Http\Controllers\SambutanController')->middleware('auth');
Route::resource('admin/data', '\App\Http\Controllers\DataController')->middleware('auth');
Route::resource('admin/testimoni', '\App\Http\Controllers\TestimoniController')->middleware('auth');
Route::resource('admin/news', '\App\Http\Controllers\NewsController')->middleware('auth');
Route::resource('admin/galeri', '\App\Http\Controllers\GaleriController')->middleware('auth');
Route::resource('admin/event', '\App\Http\Controllers\EventController')->middleware('auth');

});

Route::group(['middleware'=>['auth', 'ceklevel:superadmin,admin']], function(){
    //dashboard
Route::get('/dashboard','\App\Http\Controllers\DashboardController@index');

Route::resource('admin/sliders', '\App\Http\Controllers\SliderController')->middleware('auth');
Route::resource('admin/services', '\App\Http\Controllers\ServiceController')->middleware('auth');
Route::resource('admin/umkm', '\App\Http\Controllers\UmkmController')->middleware('auth');
Route::resource('admin/perangkat', '\App\Http\Controllers\PerangkatController')->middleware('auth');
Route::resource('admin/sambutan', '\App\Http\Controllers\SambutanController')->middleware('auth');
Route::resource('admin/data', '\App\Http\Controllers\DataController')->middleware('auth');
Route::resource('admin/testimoni', '\App\Http\Controllers\TestimoniController')->middleware('auth');
Route::resource('admin/news', '\App\Http\Controllers\NewsController')->middleware('auth');
Route::resource('admin/galeri', '\App\Http\Controllers\GaleriController')->middleware('auth');
Route::resource('admin/event', '\App\Http\Controllers\EventController')->middleware('auth');
Route::resource('admin/user', '\App\Http\Controllers\UserController')->middleware('auth');
});


//informasi layanan
Route::get('/beranda', function(){
    return view('home.index');
});
Route::get('/informasi', function(){
    return view('home.informasi');
});
Route::get('/kk', function(){
    return view('home.kk');
});
Route::get('/aktekelahiran', function(){
    return view('home.aktekelahiran');
});
Route::get('/aktekematian', function(){
    return view('home.informasi');
});
Route::get('/pindahdomisili', function(){
    return view('home.pindahdomisili');
});
Route::get('/izinkeramaian', function(){
    return view('home.izinkeramaian');
});
Route::get('/ktp', function(){
    return view('home.ktp');
});
// Route::get('/datadesa', function(){
//     return view('home.datadesa');
// });
// Route::get('/event', function(){
//     return view('home.event');
// });


//profil
Route::get('/profil', function(){
    return view('profil.profil');
});
Route::get('/asetdesa', function(){
    return view('profil.aset');
});
Route::get('/kelembagaan', function(){
    return view('profil.kelembagaan');
});
Route::get('/potensi', function(){
    return view('profil.potensi');
});
Route::get('/sejarah', function(){
    return view('profil.sejarah');
});
// Route::get('/sotk', function(){
//     return view('profil.sotk');
// });
Route::get('/visimisi', function(){
    return view('profil.visimisi');
});

//galeri
// Route::get('/galeri', function(){
//     return view('galeri.galeri');
// });

// //umkm
// Route::get('/umkm', function(){
//     return view('home.umkm');
// });

//berita
// Route::get('/berita', function(){
//     return view('home.news');
// });