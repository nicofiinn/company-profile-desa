@extends('layouts.app')

@section('title', 'Tambah User Sumberkedawung')

@section('content')

<div class="container">
    <a href="/admin/user" class="btn btn-primary mb-3">Kembali</a>
    <div class="row">
        <div class="col-md-12">
            <form action="{{ route('user.store')  }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" class="form-control" name="title" placeholder="Nama">
                </div>
                @error('name')
                <small style="color:red">{{$message}}</small>
                @enderror
                <div class="form-group">
                    <label for="">Level</label>
                    <input type="text" class="form-control" name="title" placeholder="Level">
                </div>
                 @error('level')
                <small style="color:red">{{$message}}</small>
                @enderror
                 <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" class="form-control" name="title" placeholder="Email">
                </div>
                 @error('email')
                <small style="color:red">{{$message}}</small>
                @enderror
                <div class="form-group">
                    <label for="">Password</label>
                    <input type="text" class="form-control" name="title" placeholder="Password">
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
