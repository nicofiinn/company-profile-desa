@extends('layouts.app')

@section('title', 'Data Layanan Desa Sumberkedawung')

@section('content')

<div class="container">
    <a href="/admin/services/create" class="btn btn-primary mb-3">Tambah Data</a>

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
                @foreach ($services as $services)
                <tr>
                    <td>{{ $i++ }}</td>
                    <td>{{$services->title}}</td>
                    <td>{{$services->description}}</td>
                    <td>
                        <img src="/image/{{$services->image}}" alt="" class="img-fluid" width="90">
                    </td>
                    <td>
                        <a href="{{ route('services.edit', $services->id) }}" class="btn btn-warning">Edit</a>

                        <form action="{{route('services.destroy', $services->id)}}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Hapus</button>
                        </form>
                    </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection
