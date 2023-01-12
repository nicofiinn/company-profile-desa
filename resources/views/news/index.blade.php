@extends('layouts.app')

@section('title','Data Berita Desa Sumberkedawung')

@section('content')

<div class="container">
    
    <a href="/admin/news/create" class="btn btn-primary mb-3">Tambah Data</a>

    @if ($message = Session::get('message'))
        <div class="alert alert-success">
            <strong>Berhasil</strong>
            <p>{{$message}}</p>
        </div>
    @endif
    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Judul</th>
                    <th>Deskripsi</th>
                    <th>Gambar</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $i = 1
                @endphp
                @foreach ($news as $news)
                <tr>
                    <td>{{ $i++ }}</td>
                    <td>{{$news->title}}</td>
                    <td>{{$news->description}}</td>
                    <td>
                        <img src="/image/{{$news->image}}" alt="" class="img-fluid" width="90">
                    </td>
                    <td>
                        <a href="{{ route('news.edit', $news->id) }}" class="btn btn-warning">Edit</a>
                        <br>

                        <form action="{{route('news.destroy', $news->id)}}" method="POST">
                            @csrf
                            @method('DELETE')
                           <br> <button type="submit" class="btn btn-danger">Hapus</button>
                        </form>
                    </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection