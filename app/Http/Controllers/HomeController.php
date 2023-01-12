<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\HtSupporttp\Facades\DB;

// use App\Models\Sliders;
use App\Models\Event;
use App\Models\News;
use App\Models\Perangkat;
use App\Models\Umkm;
use App\Models\Slider;
use App\Models\Data;
use App\Models\Galeri;
use App\Models\Sambutan;
use App\Models\Service;
use App\Models\Testimoni;
class HomeController extends Controller
{
    public function index(){
        $sliders = Slider::all();
        $event = Event::all();
        $news = News::all();
        $perangkat = Perangkat::all();
        $umkm = Umkm::all();
        $data = Data::all();
        $galeri = Galeri::all();
        $sambutan = Sambutan::all();
        $service = Service::all();
        $testimoni = Testimoni::all();

        return view('home.index', compact(
            'sliders',
            'event',
            'news',
            'perangkat',
            'umkm',
            'data',
            'galeri',
            'sambutan',
            'service',
            'testimoni',

        ));
            
    }
   
    public function event(){
       $event = Event::all();
        return view('home.event',compact(
            'event',
        ));
    }
    
    public function umkm(){
        $umkm = Umkm::all();
        return view('home.umkm', compact('umkm'));
    }
    public function galeri(){
        $galeri = Galeri::all();
        return view('galeri.galeri',compact(
            'galeri',
        ));
    }
    public function news(){
        $news = News::all();
        return view('home.news',compact(
            'news',
        ));
    }
    public function data(){
        $data = Data::all();
        return view('home.data',compact(
            'data',
        ));
    }
    public function perangkat(){
        $perangkat = Perangkat::all();
        return view('profil.sotk',compact(
            'perangkat',
        ));
    }

}
