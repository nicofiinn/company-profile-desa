@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
<h1>Selamat Datang {{ Auth::user()->name; }}</a></h1>
@endsection