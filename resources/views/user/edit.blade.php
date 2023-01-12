@extends('layouts.app')

@section('title', 'Edit Layanan Desa Sumberkedawung')

@section('content')

<div class="container">
    <a href="/admin/user" class="btn btn-primary mb-3">Kembali</a>
    <div class="row">
        <div class="col-md-12">
            <form action="{{ route('user.update', $user->id)  }}" method="POST" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Nama" value="{{$user->name}}">
                </div>
                @error('name')
                <div class="form-group">
                    <label for="">Level</label>
                    <input type="text" class="form-control" name="name" placeholder="Nama" value="{{$user->level}}">
                </div>
                 @error('Level')
                <small style="color:red">{{$message}}</small>
                @enderror
                <small style="color:red">{{$message}}</small>
                @enderror
                 <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" class="form-control" name="name" placeholder="Email" value="{{$user->email}}">{{$user->email}}
                </div>
                 @error('email')
                <small style="color:red">{{$message}}</small>
                @enderror
                
                <div class="form-group">
                    <label for="">Password</label>
                    <input type="text" class="form-control" name="name" placeholder="Nama" value="{{$user->password}}">
                </div>
                 @error('password')
                <small style="color:red">{{$message}}</small>
                @enderror
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
