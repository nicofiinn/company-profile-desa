@extends('layouts.app')

@section('title','Edit Data Slider Desa Sumberkedawung')

@section('content')

<div class="container">
    <a href="/admin/sliders" class="btn btn-primary mb-3">Kembali</a>
    <div class="row">
        <div class="col-md-8 offset-md-2">
        <form action="{{ route('sliders.update', $slider->id)  }}" method="POST" enctype="multipart/form-data">
                @method('PUT')
                 @csrf
                <div class="from-group">
                    <label for="">Judul</label>
                    <input type="text" class="form-control" name="title" placeholder="Judul" value="{{$slider->title}}">
                </div>
                @error('title')
                <small style="color:red">{{$message}}</small>
                @enderror

                <div class="from-group">
                    <label for="">Deskripsi</label>
                    <br>
                    <textarea name="description" id="" cols="80" rows="10" class="from-control" placeholder="Deskripsi">{{$slider->description}}
                    </textarea>
                </div>
                @error('description')
                <small style="color:red">{{$message}}</small>
                @enderror

                <img src="/image/{{$slider->image}}" alt="" class="img-fluid">
                <div class="from-group">
                    <label for="">Gambar</label>
                    <input type="file" class="form-control" name="image" placeholder="Gambar">
                </div>
                @error('image')
                <small style="color:red">{{$message}}</small>
                @enderror
                <br>
                <div class="from-group">
                    <button type="submit" class= "btn btn-primary btn-block">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection